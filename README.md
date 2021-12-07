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
   angle for which $\gamma \approx \pi$ might hold true since the other angles
   are defined facing a side of length $s$ such that they are of equal size, as
   well.  In case $\gamma$ would not be the angle approaching $\pi$, both
   $\alpha$ and $\beta$, which will denote the other angles in the following,
   would approach $\pi$ such that the sum of all angles' sizes would be greater
   than $\pi$.

   In case $\gamma \approx \pi$, $g \approx s + s = 2 \cdot s$.  Hence,
   $$
   \textit \th := \frac g s \approx \frac {2 \cdot s} s = 2 \, .
   $$

   Due to
   $$
   \alpha + \beta + \gamma \overset ! = \pi \land \alpha = \beta \implies \sup
   \alpha = \sup \beta = \frac \pi 2 \, .
   $$
   Hence, in case $\alpha, \beta \to \frac \pi 2$, $\gamma \to 0$ such that $g
   \to 0$, as well.  Then,
   $$
   \textit \th := \frac g s \approx \frac 0 s = 0 \, .
   $$

   This gives the upper and lower bounds for $\textit \th$.  Due to $\gamma \in
   (0, \pi)$, as shown, $\textit \th$ will never reach its interval's bounds, as
   well.
2. Let $A, B, C \in \mathbb R ^ d, \, d \in [2, \infty) \cap \mathbb N$ form an
   isosceles triangle, assuming the Fifth Euclidian Postulate to be fulfilled
   and $\gamma$ facing $g$.

   By constructing the height over $g$, we achieve two perpendicular triangles
   which are mirrored along $g$ such that, for each one of those, $s$ is the
   respective hypothenuse.  Furthermore, $\gamma$ is divided into two subangles
   of the same size, as well, such that
   $$
   \sin \frac \gamma 2 = \frac {\frac g 2} s = \frac 1 2 \cdot \frac g s = \frac
   1 2 \cdot \textit \th = \frac {\textit \th} 2 \, .
   $$

   This equation can be resolved by $\textit \th$ by scaling both sides with $2$
   such that we achieve the first equation of the theorem.
3. Due to $\arcsin$ being the counterpart of $\sin$, the first equation of the
   theorem can be resolved by $\gamma$ which gives
   $$
   \gamma = 2 \cdot \arcsin \left( \frac {\textit \th} 2 \right)
   $$
   and thereby the second equation of the theorem.  \hfill $\blacksquare$



### Magic Numbers

Triangles can be categorised regarding their angles.  These categories are in
general:

* acute
* perpendicular
* obtuse

Furthermore, triangles might be isosceles in addition to their angles' sizes.
Hence, in case of isosceles triangles, they are categorised by $\gamma$ since
the other angles are of the same size and thus always less than $\pi$.

A triangle is considered *perpendicular* in case that it contains an angle of
size $\pi$.  Applying Örvænting on this angle gives $\textit \th = \sqrt 2$.

*Acute* triangles contain angles less than $\pi$ only.  For instance, in case
$\textit \th = 1$, we would consider an equilateral triangle.  The corresponding
angles are sized $\frac \pi 3$ each.  This implies that acute isosceles
triangles have a Side Ratio of less than $\sqrt 2$.  For the special case of
equilateral triangles, the Side Ratio is $1 = \sqrt 1$.

The last category, *obtuse* triangles, require, hence, a Side Ratio of more than
$\sqrt 2$.  Similar to the other categories, there is a special square root
value for obtuse isosceles triangles, as well:  $\sqrt 3$.  When applying the
second equation of Örvænting on this value, we achieve $\frac 2 3 \cdot \pi$ as
the size of the angle facing $g$.

In summary, the following Magic Numbers are important values of $\textit \th$:

| Side Ratio | Angle (Degree) | Angle (Radian)        |
|:----------:|:--------------:|:---------------------:|
| $\sqrt 1$  | $60$           | $\frac \pi 3$         |
| $\sqrt 2$  | $90$           | $\frac \pi 2$         |
| $\sqrt 3$  | $120$          | $\frac 2 3 \cdot \pi$ |



## Build Instructions

### Default Build Instruction

```
make
```

This library is designed to be bound as a submodule in other projects.  In order
to do so, it offers the possibility to automatically build the library and copy
it, together with all relevant headers, to an according subdirectory in the
super project.



### Building the Library

```
make library
```

In order to just build the library and copy it by hand, one needs to run this
command.

Thereby, the library will be stored together with its build artifacts in its
source files' directory.



### Documentation

```
make pdf
make doxygen
make manual
```

This command, `pdf`, will compile a printable version of this documentation
using `pandoc`.  It will be named `documentation.pdf`, by default.  Users are
encouraged to alter this default value of the variable `PDF` as desired.

Furthermore, there is also an automation provided in order to render a source
code documentation using `doxygen`.  It will be stored in the thereby created
`./.docs/latex/` directory as `refman.pdf`.

In order to render both summaries, the command `manual` is provided.  By calling
this build instruction, the compiled documentations will be copied to the main
directory.



## Citing this Repository

When referring to this repository, please use the following Bib\TeX\ entry:

```
@online{orvaenting,
    author      = {{M}atthes, {K}evin},
    title       = {\"{O}rv\ae nting},
    subtitle    = {{T}he {C}ompression {A}lgorithm for {I}sosceles {T}riangles},
    langid      = {british},
    url         = {https://github.com/kevinmatthes/orvaenting},
}
```

Please always add to this template the `date` of the latest commit when this
repository was accessed (`urldate`) and name the commit as a `note`.

<!----------------------------------------------------------------------------->
