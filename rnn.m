X = readtable('shunt_inputs.xlsx');
T = readtable('shunt_ki.xlsx');
[X,T] = simpleseries_dataset;
net = layrecnet(1:2,10);
[Xs,Xi,Ai,Ts] = preparets(net,X,T);
net = train(net,Xs,Ts,Xi,Ai);
view(net)
Y = net(Xs,Xi,Ai);
perf = perform(net,Y,Ts)
Y = sim(net,X)
gensim(net,1)