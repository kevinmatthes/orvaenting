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
%% -- X = unorvaenting (R)
%%      Uncompress an isosceles triangle given by its Side Ratio.
%%
%%      PARAMETERS
%%          R
%%              The Side Ratio of the isosceles triangle to decompress.  The
%%              default value is NaN.  sideratio needs to be greater than zero
%%              but less than 2.
%%
%%      RETURN
%%          X
%%              The angle facing the Main Side of the considered isosceles
%%              triangle.  Measured in radian.
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

function X = unorvaenting (R = NaN);
    if nargin == 1;
        X = [];

        for index = 1 : length (R);
            if R(index) > 0 && R(index) < 2;
                x = 2 * asin (R(index) / 2);
            else;
                x = NaN;
            end;

            X = [X x];
        end;
    else;
        X = NaN;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
