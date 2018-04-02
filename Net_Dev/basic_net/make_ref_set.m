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
## @deftypefn {} {@var{retval} =} make_ref_set (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ob-Admin <Ob-Admin@OBSIDIAN>
## Created: 2018-04-02
#num_el = num items
function [retval] = make_ref_set (num_el)
  retval = zeros(3,num_el);
  retval(1:2,:) = rand(2,num_el);
  retval(3,:) = (retval(1,:) + retval(2,:))  >1;
endfunction
