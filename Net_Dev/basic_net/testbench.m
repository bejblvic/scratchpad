#testbench

#Training Set
[TrSet.in,TrSet.out] = make_ref_set(2000);
#Testing Set
[TestSet.in,TestSet.out] = make_ref_set(2000);

#Setup network
INet = make_network(2,3,2);

curr_err = test_network(INet,TestSet);

INet = train_network(INet,LearnSet);
#show_network(INet);

#disp(INet);