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

function [GNet] = make_guess (GNet,input)
  GNet.in_l(1) = input(1);
  GNet.in_l(2) = input(2);
  
  GNet.hid_l(1) = sign(input(1)*GNet.in2hid_w(1,1) + input(2)*GNet.in2hid_w(2,1) + GNet.in2hid_w(3,1));
  GNet.hid_l(2) = sign(input(1)*GNet.in2hid_w(2,1) + input(2)*GNet.in2hid_w(2,2) + GNet.in2hid_w(2,3));
  GNet.hid_l(3) = sign(input(1)*GNet.in2hid_w(3,1) + input(2)*GNet.in2hid_w(3,2) + GNet.in2hid_w(3,3));
  
  GNet.out_l(1) = sign(GNet.hid_l(1)*GNet.hid2out_w(1,1) + GNet.hid_l(2)*GNet.hid2out_w(2,1) + GNet.hid_l(3)*GNet.hid2out_w(3,1) + GNet.hid2out_w(4,1));
  GNet.out_l(2) = sign(GNet.hid_l(1)*GNet.hid2out_w(1,2) + GNet.hid_l(2)*GNet.hid2out_w(2,2) + GNet.hid_l(3)*GNet.hid2out_w(3,2) + GNet.hid2out_w(4,2));

endfunction
