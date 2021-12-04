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
%% -- orvaenting (angle)
%%      Compress an isosceles triangle given by the angle facing its Main Side.
%%      The angle is expected to be measured in radian.
%%
%%      PARAMETERS
%%          angle
%%              The angle of the isosceles triangle to compress.  Measured in
%%              radian.
%%
%%      RETURN
%%          The Side Ratio of the considered isosceles triangle.
%%
%%      SEE ALSO
%%          sin
%%          unorvaenting
%%
%%%%
%%
%%      FILE
%%          orvaenting.m
%%
%%      BRIEF
%%          The compression formula for isosceles triangles.
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

function ratio = orvaenting (angle = NaN);
    ratio = 2 * sin (angle / 2);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
