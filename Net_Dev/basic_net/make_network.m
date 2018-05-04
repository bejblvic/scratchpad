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
function [INet] = make_network (NI, NH, NO)
  INet.in_l = zeros(NI,1); #inputs
  INet.hid_l = zeros(NH,1); 
  INet.out_l = zeros(NO,1);
#create In->Hidden weights
  INet.in2hid_w = 2.*rand(NI+1,NH)-1; #number of NI and 1 bias for each hidden
  INet.hid2out_w = 2.*rand(NH+1,NO)-1; #number of NH and 1 bias for each output  
  
endfunction
