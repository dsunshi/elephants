
#include "ppm.h"
#include <assert.h>
/*#include <stdlib.h>*/
void read_ppm_file(const char *filename, uint32_t *ppm) {
  (void)filename;
  (void)ppm;
}
/*void read_ppm_file(const char *filename, ppm_t *ppm) {*/

/*void read_ppm_file(const char *filename, ppm_t *ppm) {*/
/**/
/*  // ppm_t *ppm = (ppm_t *)malloc(sizeof(ppm_t));*/
/*  assert(ppm != NULL);*/
/**/
/*  ppm->type = 6;*/
/*  ppm->width = 3;*/
/*  ppm->height = 3;*/
/*  ppm->max = 255;*/
/**/
/*  ppm->image = (pixel_t *)malloc(ppm->width * ppm->height *
 * sizeof(pixel_t));*/
/*  assert(ppm->image != NULL);*/
/**/
/*  for (uint32_t y = 0; y < ppm->height; y++) {*/
/*    for (uint32_t x = 0; x < ppm->width; x++) {*/
/*      const size_t index = y * ppm->width + x;*/
/*      ppm->image[index].r = 1;*/
/*      ppm->image[index].g = 2;*/
/*      ppm->image[index].b = 3;*/
/*    }*/
/*  }*/
/*}*/
