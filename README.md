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
single real number within the range $(0, 2)$.  When keeping at least one side's
length, both its side lengths and angles can be restored without any loss of
information.

This approach, the Örvænting Theorem, allows speeding up calculations regarding
isosceles triangles.

This repository provides three sample C implementations for each formula.



### The Theorem

Let $A, B, C \in \mathbb R ^ d, \, d \in [2, \infty) \cap \mathbb N$ form an
**isosceles triangle** assuming the *Fifth Euclidian Postulate* to be fulfilled.
Then,
\begin{align*}
\textit \th &= 2 \cdot \sin \left( \frac \gamma 2 \right) \, , \\
\gamma &= 2 \cdot \arcsin \left( \frac {\textit \th} 2 \right)
\end{align*}
describe the instructions in order to compress and decompress the resulting
isosceles triangle with

* $\textit \th := \frac g s \in (0, \, 2)$ being the **Side Ratio** of *Main
  Side* $g$ and *Further Side* $s$.
* $\gamma$ being the angle facing $g$.



### Proof

1. Let $A, B, C \in \mathbb R ^ d, \, d \in [2, \infty) \cap \mathbb N$ form an
   isosceles triangle assuming the Fifth Euclidian Postulate to be fulfilled.

   Then, at least two sides of the resulting triangle have equal lengths.  These
   sides are named *Further Sides* whose length is denoted by $s$.  The third
   side whose length might not equal $s$ is named *Main Side* and denoted by
   $g$.  By definition, this side faces the angle $\gamma$.

   Due to the Fifth Euclidian Postulate being fulfilled, the sum of all angles
   within the considered triangle equals $\pi$.  Hence, $\gamma$ is the sole
   angle for which $\gamma \lesssim \pi$ might hold true since the other angles
   are defined facing a side of length $s$ such that they are of equal size, as
   well.  In case $\gamma$ would not be the angle approaching $\pi$, both
   $\alpha$ and $\beta$, which will denote the other angles in the following,
   would approach $\pi$ such that the sum of all angles' sizes would be greater
   than $\pi$.

   In case $\gamma \to \pi$, $g \approx s + s = 2 \cdot s$.  Hence,
   $$
   \textit {\th} := \frac g s \approx \frac {2 \cdot s} s = 2 \, .
   $$

   Due to
   $$
   \alpha + \beta + \gamma \overset ! = \pi \land \alpha = \beta \implies \sup
   \alpha = \sup \beta = \frac \pi 2
   $$
   such that $\inf \gamma = 0$.  In this case, $g \to 0$ which gives
   $$
   \textit \th := \frac g s \approx \frac 0 s = 0 \, .
   $$

   This gives the upper and lower bounds for $\textit \th$.  Due to $\gamma \in
   (0, \pi)$, as shown, $\textit \th$ will never reach its interval's bounds, as
   well.



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



## Citing this Repository

When referring to this repository, please use the following Bib\TeX\ entry:

```
@online{orvaenting,
    author      =   {{M}atthes, {K}evin},
    title       =   {\"{O}rv\ae nting},
    subtitle    =   {{T}he {C}ompression {A}lgorithm for {I}sosceles {T}riangles},
    url         =   {https://github.com/kevinmatthes/orvaenting},
}
```

Please always add a `note` which commit had been the latest one when this
repository was accessed.

<!----------------------------------------------------------------------------->
