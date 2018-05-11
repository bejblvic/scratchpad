#testbench
clear all
num_el = 2000;
LR = 0.01;
#Training Set
[TrSet.in,TrSet.out] = make_ref_set(num_el);
#Testing Set
[TestSet.in,TestSet.out] = make_ref_set(num_el);
NI=2;
NH=3;
NO=2;
#Setup network
INet = make_network(NI,NH,NO);

#calculate maximum possible error
max_err = (NO)*num_el;
#calculate expected random guess error
exp_err = (NO)*(num_el/2);
for ii=1:20
  curr_err = test_network(INet,TestSet);
  #disp('adjusted error = ');
  #disp(curr_err/max_err);
  INet = train_network(INet,TrSet,LR);
  testno(ii)=ii;
  errtrack(ii)=curr_err/max_err;
  scatter(testno,errtrack);
  drawnow
end
  [testo,INet] = make_guess(INet,[.5 ;.1])
  testo
  [testo,INet] = make_guess(INet,[.5 ;.9])
  testo
  #show_network(INet);

#disp(INet);