x = readtable('ann.xlsx');
x = simplenar_dataset;
x = simplenar_dataset
net = narnet(1:2,10);
[Xs,Xi,Ai,Ts] = preparets(net,{},{},x);
net = train(net,Xs,Ts,Xi,Ai);
gensim(net,1)