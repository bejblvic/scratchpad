#testbench


LearnSet = make_ref_set(10);
INet = make_network(2,3,2);

INet = train_network(INet,LearnSet);
#show_network(INet);

#disp(INet);