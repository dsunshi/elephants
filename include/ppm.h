#ifndef PPM_H
#define PPM_H

#include <stdint.h>

typedef struct {
  uint8_t r;
  uint8_t g;
  uint8_t b;
} pixel_t;

typedef struct {
  uint8_t type;
  uint32_t width;
  uint32_t height;
  uint32_t max;
  pixel_t *image;
} ppm_t;

/*ppm_t *read_ppm_file(const char *filename);*/
void read_ppm_file(const char *filename, ppm_t *data);

#endif /* PPM_H */
