#include "cmdline_options_parser.hpp"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <string>


const char *cmdline_help[] = {
        "  -h, --help                 Print help and exit",
        "  -l, --ll-filename=FILENAME The name of the llvm .ll file containing the function to analyze.",
        "  -p, --ll-path=PATH         The path to the folder containing the ll file name.",
        "  -f, --function=STRING      The name of the target function to process",
        0
};

void cmdline_print_usage() {
    int i = 0;
    while (cmdline_help[i]) {
        fprintf(stderr, "%s\n", cmdline_help[i++]);
    }
    return;
}

char cmdline_get_opt(int argc, char *argv[], int *option_index) {

    int index = *option_index;
    int i;

    static struct options options_list[] = {
            {"-h", "--help",        0, 'h'},
            {"-l", "--ll-filename", 1, 'l'},
            {"-p", "--ll-path",     1, 'p'},
            {"-f", "--function",    1, 'f'},
            {NULL, NULL,            0, '?'}
    };

    if (index >= argc) {
        return -1;
    }

    for (i = 0; options_list[i].param_short; i++) {
        if (!strcmp(options_list[i].param_long, argv[index]) ||
            !strcmp(options_list[i].param_short, argv[index])) {
            *option_index = index + options_list[i].step;
            return options_list[i].param_val;
        }
    }

    return options_list[i].param_val;
}


void cmdline_parse_arguments(int argc, char *argv[], cmdline_options_t *args_info) {
    int c;    /* Character of the parsed option.  */
    int option_index = 1;
    int int_value;

    args_info->ll_filename = NULL;
    args_info->ll_path = NULL;
    args_info->target_function = NULL;

    if (argc <= 1) {
        cmdline_print_usage();
        exit(1);
    }

    while (1) {

        c = cmdline_get_opt(argc, argv, &option_index);

        if (c == -1) break;    /* Exit from `while (1)' loop.  */

        switch (c) {
            case 'h':    /* Print help and exit.  */

                cmdline_print_usage();
                exit(0);

            case 'f':
                args_info->target_function = argv[option_index];
                break;

            case 'p':
                args_info->ll_path = argv[option_index];
                break;

            case 'l':
                args_info->ll_filename = argv[option_index];
                break;

            default:    /* bug: option not considered.  */
                fprintf(stderr, "%s: option unknown\n", argv[option_index]);
                cmdline_print_usage();
                exit(1);
        } /* switch */
        option_index += 1;
    } /* while */

    bool error = false;

    if (!args_info->ll_filename) {
        fprintf(stderr, "Please specify the parameter --ll-filename\n");
        error = true;
    }
    if (!args_info->ll_path) {
        fprintf(stderr, "Please specify the parameter --ll-path\n");
        error = true;
    }
    if (!args_info->target_function) {
        fprintf(stderr, "Please specify the parameter --function\n");
        error = true;
    }

    if (error) {
        cmdline_print_usage();
        exit(1);
    }
}