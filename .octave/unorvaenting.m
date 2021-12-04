%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Copyright (C) 2021 Kevin Matthes
%%
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License along
%% with this program; if not, write to the Free Software Foundation, Inc.,
%% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%%
%%%%
%%
%% -- unorvaenting (ratio)
%%      Uncompress an isosceles triangle given by its Side Ratio.
%%
%%      PARAMETERS
%%          ratio
%%              The Side Ratio of the isosceles triangle to decompress.
%%
%%      RETURN
%%          The angle facing the Main Side of the considered isosceles
%%          triangle.  Measured in radian.
%%
%%      SEE ALSO
%%          asin
%%          orvaenting
%%
%%%%
%%
%%      FILE
%%          unorvaenting.m
%%
%%      BRIEF
%%          The decompression formula for isosceles triangles.
%%
%%      AUTHOR
%%          Kevin Matthes
%%
%%      COPYRIGHT
%%          (C) 2021 Kevin Matthes.
%%          This file is licensed GPL 2 as of June 1991.
%%
%%      DATE
%%          2021
%%
%%      NOTE
%%          See `LICENSE' for full license.
%%          See `README.md' for project details.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function angle = unorvaenting (ratio);
    angle = 2 * asin (ratio / 2);
endfunction;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
