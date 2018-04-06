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
  vert_scl = 10/(num_in+1);
  innodes=[(ones(1,num_in));((1:1:num_in)*(vert_scl))];
  scatter(innodes(1,:),innodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on;
  for ii=1:num_in
    text(innodes(1,ii),innodes(2,ii)+0.2*vert_scl,mat2str(INet.in_l(ii),3),'fontweight','bold'),hold on;
  end
  #Hidden Nodes
  num_hid = length(INet.hid_l);
  vert_scl = 10/(num_hid+1);
  hidnodes=[(4*ones(1,num_hid));((1:1:num_hid)*(vert_scl))];
  scatter(hidnodes(1,:),hidnodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on;
  for ii=1:num_hid
    text(hidnodes(1,ii),hidnodes(2,ii)+0.2*vert_scl,mat2str(INet.hid_l(ii),3),'fontweight','bold'),hold on;
  end
  #Output Nodes
  num_out = length(INet.out_l);
  vert_scl = 10/(num_out+1);
  outnodes=[(7*ones(1,num_out));((1:1:num_out)*(vert_scl))];
  scatter(outnodes(1,:),outnodes(2,:),'marker','o','markerfacecolor','blue','linewidth',15), hold on; 
  for ii=1:num_out
    text(outnodes(1,ii),outnodes(2,ii)+0.2*vert_scl,mat2str(INet.out_l(ii),3),'fontweight','bold'),hold on;
  end
  axis([0 10 0 10]);
  
  #draw lines
  for ii=1:num_in
    for jj=1:num_hid
       line([innodes(1,ii),hidnodes(1,jj)],[innodes(2,ii),hidnodes(2,jj)]);
       text(mean([innodes(1,ii),hidnodes(1,jj)]),mean([innodes(2,ii),hidnodes(2,jj)]),mat2str(INet.in2hid_w(ii,jj),3),'fontweight','bold'),hold on;
    end
  end
  for ii=1:num_hid
    for jj=1:num_out
       line([hidnodes(1,ii),outnodes(1,jj)],[hidnodes(2,ii),outnodes(2,jj)]);
       text(mean([hidnodes(1,ii),outnodes(1,jj)]),mean([hidnodes(2,ii),outnodes(2,jj)]),mat2str(INet.hid2out_w(ii,jj),3),'fontweight','bold'),hold on;
    end
  end
  hold off
  retval=0;
endfunction
