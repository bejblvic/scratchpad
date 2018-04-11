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
## @deftypefn {} {@var{retval} =} learn (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nxa08755 <nxa08755@NXL97262>
## Created: 2018-04-09

function [LNet] = learn (LNet, err)
  LR=0.05;
  numin=4;
  err2=err.^2;
  %%Simple error correction
  %get hidden node error
  hiderr(1) = err(1)*(LNet_hid2out_w(1,1)/(sum(LNet_hid2out_w(1:3,1)))) +
              err(2)*(LNet_hid2out_w(1,2)/(sum(LNet_hid2out_w(1:3,2))));
  hiderr(2) = err(1)*(LNet_hid2out_w(2,1)/(sum(LNet_hid2out_w(1:3,1)))) +
              err(2)*(LNet_hid2out_w(2,2)/(sum(LNet_hid2out_w(1:3,2))));
  hiderr(3) = err(1)*(LNet_hid2out_w(3,1)/(sum(LNet_hid2out_w(1:3,1)))) +
              err(2)*(LNet_hid2out_w(3,2)/(sum(LNet_hid2out_w(1:3,2))));
  
  %new_weight = old_weight - LR*err*d/dw
  LNet.hid2out_w(1,1) -= LR*err(1)*LNet.hid_l(1);
  LNet.hid2out_w(2,1) -= LR*err(1)*LNet.hid_l(2);
  LNet.hid2out_w(3,1) -= LR*err(1)*LNet.hid_l(3);
  LNet.hid2out_w(4,1) -= LR*err(1);
  LNet.hid2out_w(1,2) -= LR*err(2)*LNet.hid_l(1);
  LNet.hid2out_w(2,2) -= LR*err(2)*LNet.hid_l(2);
  LNet.hid2out_w(3,2) -= LR*err(2)*LNet.hid_l(3);
  LNet.hid2out_w(4,2) -= LR*err(2);
  
  
  
  %form of activate
  %                 2
  %_______________________________________ 
  %                                             - 1
  %              -(sf)(a*w1+b*w2+c*w3+d)
  %        1 + e^
  %
  %new weight = old_weight + LR * d/dow(err^2)
  %           = old_weight + LR * d/dow(activate)
  %
  %   d             (sf)*(a*w1+b*w2+c*w3+d)
  %  ---  =   a * e^
  %  da
  %
  %   d         (sf)*(a*w1+b*w2+c*w3+d)
  %  ---  =   e^
  %  dd
  %
  %
%  %Out 1
%  sf=4/numin;
%  a = LNet.hid_l(1);
%  b = LNet.hid_l(2);
%  c = LNet.hid_l(3);
%  w1=LNet.hid2out_w(1,1);
%  w2=LNet.hid2out_w(2,1);
%  w3=LNet.hid2out_w(3,1);
%  bias=LNet.hid2out_w(4,1);
%  dd=e^(sf*(a*w1+b*w2+c*w3+bias));
%  LNet.hid2out_w(1,1) += LR*err(1)*a*dd;
%  LNet.hid2out_w(2,1) += LR*err(1)*b*dd;
%  LNet.hid2out_w(3,1) += LR*err(1)*c*dd;
%  LNet.hid2out_w(4,1) += LR*err(1)*dd;
%  %Out 2
%  sf=4/numin;
%  a = LNet.hid_l(1);
%  b = LNet.hid_l(2);
%  c = LNet.hid_l(3);
%  w1=LNet.hid2out_w(1,2);
%  w2=LNet.hid2out_w(2,2);
%  w3=LNet.hid2out_w(3,2);
%  bias=LNet.hid2out_w(4,2);
%  dd=e^(sf*(a*w1+b*w2+c*w3+bias));
%  LNet.hid2out_w(1,2) += LR*err(2)*a*dd;
%  LNet.hid2out_w(2,2) += LR*err(2)*b*dd;
%  LNet.hid2out_w(3,2) += LR*err(2)*c*dd;
%  LNet.hid2out_w(4,2) += LR*err(2)*dd;
endfunction
