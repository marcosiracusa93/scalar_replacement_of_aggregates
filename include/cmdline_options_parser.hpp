#ifndef CMDLINE_OPTIONS_PARSER_H
#define CMDLINE_OPTIONS_PARSER_H

typedef struct cmdline_options {
    char *ll_filename;
    char *ll_path;
    char *target_function;
} cmdline_options_t;

struct options {
    const char *param_short;
    const char *param_long;
    int step;
    char param_val;
};

void print_usage();

void cmdline_parse_arguments(int argc, char *argv[], cmdline_options_t *args_info);


#endif //CMDLINE_OPTIONS_PARSER_H
