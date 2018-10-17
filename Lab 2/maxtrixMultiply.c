/* MatrixMultiply.c: dense matrix multiplication.
 *
 * Tested (to be buggy).
 */

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

#define R 16  /* number of rows */
#define C 16  /* number of columns */

/* 16x16 identity matrix */
static double A[R][C] =
{
  { 1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  1.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  1.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  1.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  1.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  1.,  0.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  1.,  0.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  1.,  0.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  1.,  0., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  1., 0.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 1.,  0.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  1.,  0.},
  { 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0., 0.,  0.,  1.}
};

/* random integer matrix */
static double B[R][C] =
{
  { 2,  7,  0, 13, 18, 18, 16,  6,  4, 13, 2, 16,  6, 13,  0,  1},
  {10, 14, 17,  2, 17, 13, 12,  8,  1,  5, 15, 13,  2,  9,  1, 12},
  { 6,  4, 14, 13,  8,  0, 12,  5, 18,  7, 13, 16, 12, 13,  5, 19},
  { 1, 18, 16,  5,  8,  0, 13,  8, 17,  1,  2, 10,  7,  5, 19,  2},
  { 0, 5, 11, 13,  4,  2, 12, 18, 10,  5,  6,  5, 16,  6, 15,  6},
  { 7,  6,  1,  4,  4,  0, 11, 10,  9, 14, 13, 19,  1, 15, 17, 11},
  { 4, 17, 13,  2,  0, 12,  2,  4, 10,  2,  2, 13, 19, 10, 14, 10},
  {16,  3,  7, 15, 19,  2,  2,  7, 10,  5, 10, 10, 13, 15,  9,  0},
  { 1, 13, 16, 17, 17, 14,  9, 13,  7, 12,  5, 10,  8,  5,  1, 12},
  { 0, 13, 11,  6, 14, 12,  15,  8, 18,  8,  6, 19, 12, 9,  9,  1},
  {17,  8,  4,  0,  2,  4,  1, 19, 11, 12,  6, 11,  5, 11, 11, 12},
  { 5, 15, 13, 10,  4,  5,  1, 19, 18,  3,  2, 11,  1,  3, 14,  3},
  {14,  0,  9, 10,  9, 18,  5, 15, 17,  1,  2, 10, 16,  9, 19,  7},
  { 5,  3,  8,  8,  7,  7,  9, 17, 16,  7,  5, 14,  1,  2,  6,  7},
  { 8, 11,  8, 10,  5, 15, 19, 18,  3,  6, 12, 17, 14,  3,  2,  8},
  {10, 17, 12, 14, 18, 15, 14, 15, 12, 15,  0, 17,  5, 17, 14, 15}
};


int
main(void)
{
  double C[R][C];

  /* Intialize Matrix C with 0 */
  memset(C, 0, R*C);

  /* Compute matrix multiplication */
  for (int i = 0; i < R; ++i)
    for (int j = 0; j < C; ++j)
      {
        uintptr_t A_row = ((uintptr_t)A + i * 8);
        double *B_col = (B[0] + j);
        double *C_element = (double *)(&C + (i * C + j));

        for (int k = 0; k < R; ++k)
          *C_element += *(double *)(A_row + k * 8) * *(double *)(B_col + k * C);
      }

  /* Compare the value of C and B. As A is the identity matrix, C and B must be equal
   * after matrix multiplication.
   */
  for (int i = 0; i < R; ++i)
    for (int j = 0; j < C; ++j)
      if (C[i][j] != B[i][j])
        printf("Incorrect element at %d,%d\n", i, j);

  return 0;
}