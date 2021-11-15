<!--
    README.md : important information regarding this project.

    See `LICENSE' for full license.
-->

<!--
    Copyright (C) 2021 Kevin Matthes

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-->

<!----------------------------------------------------------------------------->

# orvaenting

## Summary

A simple C library implementing the compression algorithm for isosceles
triangles.



## License

This project's license is **GPL 2** (as of June 1991).  The whole license text
can be found in `LICENSE` in the main directory of this repository.  The brief
version of the license is as follows:

> Copyright (C) 2021 Kevin Matthes
>
> This program is free software; you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation; either version 2 of the License, or
> (at your option) any later version.
>
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License along
> with this program; if not, write to the Free Software Foundation, Inc.,
> 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

When compiling a printable version of this documentation using `pandoc`, the
full license will be attached automatically to the resulting document.



## Introduction

Isosceles triangles have the interesting property of being compressible into a
single real number within the range $[0, 2]$.  When keeping at least one side's
length, both its side lengths and angles can be restored without any loss of
information.

This approach, the Örvænting Theorem, allows speeding up calculations regarding
isosceles triangles.

Let $A, B, C \in \mathbb R ^ d, \, d \in [2, \infty) \cap \mathbb N$ form an
**isosceles triangle** assuming the *Fifth Euclidian Postulate* to be fulfilled.
Then,
$$
þ = 2 \cdot \sin \left( \frac \gamma 2 \right)
$$
$$
\gamma = 2 \cdot \arcsin \left( \frac þ 2 \right)
$$
describe the instructions in order to compress and decompress the resulting
isosceles triangle with

* $þ = \frac g s$ being the **Side Ratio** of *Main Side* $g$ and *Further Side*
  $s$.
* $\gamma$ being the angle facing $g$.

This repository provides three sample C implementations of these formulas.



## Build Instructions

### `liborvaenting.a`

The library with all utility functions can be created by calling

```
make liborvaenting.a
```



### `orvaenting.pdf`

In order to create a printable version of this documentation, just call

```
make orvaenting.pdf
```

<!----------------------------------------------------------------------------->
