## Copyright (C) 2018 nxa08755
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
## @deftypefn {} {@var{retval} =} make_guess (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nxa08755 <nxa08755@NXL97262>
## Created: 2018-04-06

function [guess,GNet] = make_guess (GNet,input)
  GNet.in_l = input;
  
  GNet.hid_l = GNet.wh*input + GNet.bh;
  GNet.out_l = GNet.wo*GNet.hid_l + GNet.bo;
  guess = GNet.out_l;
endfunction
