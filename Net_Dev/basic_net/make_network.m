## Copyright (C) 2018 Ob-Admin
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} make_network (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ob-Admin <Ob-Admin@OBSIDIAN>
## Created: 2018-04-02
#NI = num inputs
#NO = num outputs
#NH = num hidden
function [retval] = make_network (NI, NO, NH)
  in_l = zeros(NI,1);
  out_l = zeros(NO,1);
  hid_l = zeros(NH,1); 
  in_l, hid_l, out_l
  retval = 0;
endfunction
