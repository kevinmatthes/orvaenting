/**
 * orvaenting_compress.c : the compression step.
 *
 * See `LICENSE' for full license.
 * See `README.md' for project details.
 */

/**
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


/**
 * Includes.
 */

#include "orvaenting.h"



/**
 * Functions.
 */

inline  float       NAME (compress_f)   (const float        angle)
{
    return 2.0F * sinf  (angle / 2.0F);
}

inline  double      NAME (compress_d)   (const double       angle)
{
    return 2.0  * sin   (angle / 2.0);
}

inline  long double NAME (compress_ld)  (const long double  angle)
{
    return 2.0L * sinl  (angle / 2.0L);
}
