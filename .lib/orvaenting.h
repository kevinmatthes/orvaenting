/*
 * orvaenting.h : the main header of `orvaenting'.
 *
 * See `LICENSE' for full license.
 * See `README.md' for project details.
 */

/*
 * Copyright (C) 2021 Kevin Matthes
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

/******************************************************************************/

/*
 * Security settings.
 */

#pragma once
#ifndef __ORVAENTING_H__
#define __ORVAENTING_H__



/*
 * Includes.
 */

#include <math.h>



/*
 * Macros.
 */

// Name mangling macro.
#define NAME(identifier)    orvaenting_ ## identifier



/*
 * Function declarations.
 */

// Utility functions.
extern  float       NAME (compress_f)       (const float        angle);
extern  double      NAME (compress_d)       (const double       angle);
extern  long double NAME (compress_ld)      (const long double  angle);

extern  float       NAME (decompress_f)     (const float        ratio);
extern  double      NAME (decompress_d)     (const double       ratio);
extern  long double NAME (decompress_ld)    (const long double  ratio);



/*
 * End of header.
 */

// Tidying up.
#ifndef __ORVAENTING_INTERNAL__
#undef  NAME
#endif  // ! __ORVAENTING_INTERNAL__

// Leaving the header.
#endif  // ! __ORVAENTING_H__
