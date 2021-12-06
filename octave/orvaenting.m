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
%% -- R = orvaenting (X)
%%      Compress an isosceles triangle given by the angle facing its Main Side.
%%      The angle is expected to be measured in radian.
%%
%%      PARAMETERS
%%          X
%%              For each radian angle in X, the corresponding Side Ratio will be
%%              computed and saved in the resulting vector R.  Thereby, any
%%              element of X represents one angle which faces the Main Side of
%%              an isosceles triangle.  Hence, the value of an angle needs to be
%%              greater than zero but less than pi due to the properties on an
%%              isosceles triangle.
%%
%%              By default, X is assumed to be a single real number within the
%%              given range.  In case that no value for X is passed to the
%%              function, NaN is assumed.
%%
%%      RETURN
%%          R
%%              The vector of Side Ratios -- one for each valid angle.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.  Multiple angles need to be passed as a vector to the
%%              function.
%%
%%              In case that a vector of angles should contain any invalid one,
%%              the result will be NaN for the whole function call.
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

function R = orvaenting (X = NaN);
    if nargin == 1 && X > 0 && X < pi;
        R = 2 * sin (X / 2);
    else;
        R = NaN;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
