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
## @deftypefn {} {@var{retval} =} train_network (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: nxa08755 <nxa08755@NXL97262>
## Created: 2018-04-06

function [retval] = train_network (TNet, RefSet)
  err(1) = 0;
  err(2) = 0;
  for ii=1:13
##Test
    TNet = make_guess(TNet,RefSet(1:2,ii));
    err(1) = TNet.out_l(1) - RefSet(3,ii);
    err(2) = TNet.out_l(2) - RefSet(4,ii);
    disp(sum(err.^2));
    %show_network(TNet);
    %pause();
##Learn
    TNet = learn(TNet,err);
    show_network(TNet);
    pause();
  end
  retval = TNet;
endfunction
