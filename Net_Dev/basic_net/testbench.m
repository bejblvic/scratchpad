#testbench
clear all
num_el = 2000;
#Training Set
[TrSet.in,TrSet.out] = make_ref_set(num_el);
#Testing Set
[TestSet.in,TestSet.out] = make_ref_set(num_el);
NI=2;
NH=3;
NO=2;
#Setup network
INet = make_network(NI,NH,NO)

#calculate maximum possible error
max_err = (NO)*num_el;
#calculate expected random guess error
exp_err = (NO)*(num_el/2);
for ii=1:1
  curr_err = test_network(INet,TestSet);
  disp('adjusted error = ');
  disp(curr_err/max_err);
  INet = train_network(INet,TrSet);
end
  #show_network(INet);

#disp(INet);