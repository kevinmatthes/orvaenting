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

/**
 * \file    decompress.c
 * \brief   The decompression step.
 *
 * \author      Kevin Matthes
 * \copyright   (C) 2021 Kevin Matthes.
 *              This file is licensed GPL 2 as of June 1991.
 * \date        2021
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 */

/******************************************************************************/


/*
 * Includes.
 */

#include "orvaenting.h"



/*
 * Functions.
 */

inline float NAME (decompress_f) (const float ratio)
{
    return 2.0F * asinf (ratio / 2.0F);
}

inline double NAME (decompress_d) (const double ratio)
{
    return 2.0 * asin (ratio / 2.0);
}

inline long double NAME (decompress_ld) (const long double ratio)
{
    return 2.0L * asinl (ratio / 2.0L);
}

/******************************************************************************/
