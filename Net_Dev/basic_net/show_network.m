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
## @deftypefn {} {@var{retval} =} show_network (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ob-Admin <Ob-Admin@OBSIDIAN>
## Created: 2018-04-02

function [retval] = show_network (INet)
  figure(1)
  axis([0 10 0 10]);
  #Input Nodes
  num_in = length(INet.in_l);
  innodes=[(ones(1,num_in));((1:1:num_in)*(10/(num_in+1)))];
  scatter(innodes(1,:),innodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on;
  #Hidden Nodes
  num_hid = length(INet.hid_l);
  hidnodes=[(4*ones(1,num_hid));((1:1:num_hid)*(10/(num_hid+1)))];
  scatter(hidnodes(1,:),hidnodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on;
  #Output Nodes
  num_out = length(INet.out_l);
  outnodes=[(7*ones(1,num_out));((1:1:num_out)*(10/(num_out+1)))];
  scatter(outnodes(1,:),outnodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on; 
 axis([0 10 0 10]);
  #draw lines
  line([1,4],[innodes(2,1),hidnodes(2,1)]);
 
  hold off
  retval=0;
endfunction
