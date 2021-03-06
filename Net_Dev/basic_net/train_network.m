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

function [TNet] = train_network (TNet, RefSet, LR)
#make guess
debug=1;
  for ii=1:5
  effect=1;
  jj=0;
  while(effect>(LR))
    [guess_out,TNet] = make_guess(TNet,RefSet.in(:,ii));    
    errout = guess_out - RefSet.out(:,ii);
    errhid = TNet.wo'*errout;
    #w'=w+err*x*dy*LR
    TNet.wo = TNet.wo + LR * errout .* (TNet.out_l.*(1-TNet.out_l)) * TNet.hid_l';
    TNet.wh = TNet.wh + LR * errhid .* (TNet.hid_l.*(1-TNet.hid_l)) * RefSet.in(:,ii)';
    TNet.bo = TNet.bo + LR * errout .* (TNet.out_l.*(1-TNet.out_l));
    TNet.bh = TNet.bh + LR * errhid .* (TNet.hid_l.*(1-TNet.hid_l));
    effect=sum(errout.^2);
    if (debug)
      figure(2)
      scatter(jj,effect),hold on
      drawnow
    end
  jj=jj+1;
  end
  
  end
endfunction
