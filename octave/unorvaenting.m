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
%% -- unorvaenting (sideratio)
%%      Uncompress an isosceles triangle given by its Side Ratio.
%%
%%      PARAMETERS
%%          sideratio
%%              The Side Ratio of the isosceles triangle to decompress.  The
%%              default value is NaN.
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

function radianangle = unorvaenting (sideratio = NaN);
    if nargin == 1;
        radianangle = 2 * asin (sideratio / 2);
    else;
        radianangle = NaN;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
