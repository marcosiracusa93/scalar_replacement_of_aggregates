/*
+--------------------------------------------------------------------------+
| CHStone : a suite of benchmark programs for C-based High-Level Synthesis |
| ======================================================================== |
|                                                                          |
| * Collected and Modified : Y. Hara, H. Tomiyama, S. Honda,               |
|                            H. Takada and K. Ishii                        |
|                            Nagoya University, Japan                      |
|                                                                          |
| * Remark :                                                               |
|    1. This source code is modified to unify the formats of the benchmark |
|       programs in CHStone.                                               |
|    2. Test vectors are added for CHStone.                                |
|    3. If "main_result" is 0 at the end of the program, the program is    |
|       correctly executed.                                                |
|    4. Please follow the copyright of each benchmark program.             |
+--------------------------------------------------------------------------+
*/
/* NIST Secure Hash Algorithm */
/* heavily modified by Uwe Hollerbach uh@alumni.caltech edu */
/* from Peter C. Gutmann's implementation as found in */
/* Applied Cryptography by Bruce Schneier */

/* NIST's proposed modification to SHA of 7/11/94 may be */
/* activated by defining USE_MODIFIED_SHA */

#include <stdio.h>
#include "sha.h"
#include "sha.c"

#include <time.h>
#include <stdlib.h>
/*
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     outData : expected output data                                       |
+--------------------------------------------------------------------------+
*/
const INT32 outData[5] =
        {0x006a5a37UL, 0x93dc9485UL, 0x2c412112UL, 0x63f7ba43UL, 0xad73f922UL};

#include <sys/time.h>

int main(int argc, char **argv) {
   int main_result = 0;

   struct timeval start;
   gettimeofday(&start, NULL);

   int iters = atoi(argv[1]);
   for (int idx = 0; idx < iters; ++idx) {

      int i;
      int main_result;
      main_result = 0;
      sha_stream();

      for (i = 0; i < 5; i++) {

         main_result += (sha_info_digest[i] != outData[i]);
      }
   }

   struct timeval end;
   gettimeofday(&end, NULL);

   double time_taken;
   time_taken = (end.tv_sec - start.tv_sec) * 1e6;
   time_taken = (time_taken + (end.tv_usec - start.tv_usec)) * 1e-6;
   time_taken /= (double) iters;

   printf("\nTime: %f\n", time_taken);
   printf("\nResult: %d\n", main_result);
   return main_result;
}
