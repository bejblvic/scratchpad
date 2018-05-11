
#NI = num inputs
#NO = num outputs
#NH = num hidden
function [INet] = make_network (NI, NH, NO)
  IS = 0.7; #inception strength
  INet.in_l = zeros(NI,1); #inputs
  INet.hid_l = zeros(NH,1); 
  INet.out_l = zeros(NO,1);
#create In->Hidden weight matrix
  INet.wh = IS*(2.*rand(NH,NI)-1); #NHxNI
  INet.bh = IS*(2.*rand(NH,1)-1); #NH bias
  INet.wo = IS*(2.*rand(NO,NH)-1); #NOxNH
  INet.bo = IS*(2.*rand(NO,1)-1); #NO bias
  
endfunction
