x = readtable('shunt_inputs.xlsx');
t = readtable('shunt_kd.xlsx');
[x,t] = simplefit_dataset;
net = feedforwardnet(10);
net = train(net,x,t);
y = net(x);
y = sim(net,x)
gensim(net,-1)