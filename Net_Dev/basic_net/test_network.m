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

function [err] = test_network (TNet, RefSet)
  err = 0;
  [num_in,num_el]=size(RefSet.in);
  [num_out,num_el]=size(RefSet.out);
  for ii=1:num_el
    [guess_out,TNet] = make_guess(TNet,RefSet.in(:,ii));
    err += sum((guess_out - RefSet.out(:,ii)).^2);
  end
endfunction
