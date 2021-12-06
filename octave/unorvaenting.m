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
%%              For each Side Ratio in R, the corresponding radian angle will be
%%              computed and saved in the resulting vector X.  Thereby, any
%%              element of R represents the Side Ratio of an isosceles triangle.
%%              Hence, the value of a Side Ratio needs to be greater then zero
%%              but less than two due to the properties of isosceles triangles.
%%
%%              By default, R is assumed to be a single real number within the
%%              given range.  In case that no value for R is passed to the
%%              function, NaN is assumed.
%%
%%      RETURN
%%          X
%%              The vector of radian angles -- one for each valid Side Ratio.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.  Multiple Side Ratios need to be passed as a vector to
%%              the function.
%%
%%              A vector containing just one invalid Side Ratio will not imply
%%              NaN as the result for the whole function call but as the element
%%              of the resulting vector for this certatin input value.  Any
%%              other valid Side Ratio will still produce valid radian angles.
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
