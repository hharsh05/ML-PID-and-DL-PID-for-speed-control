x = [1.9 1.89 1.88 1.87 1.86 1.85 1.84 1.83 1.82 1.81 1.8 1.79 1.78 1.77 1.76 1.75 1.74 1.73 1.72 1.71 1.7 1.69 1.68 1.67 1.66];
p = [0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1 1.01 1.02 1.03 1.0 1.05 1.06 1.07 1.08 1.09 1.1 1.11 1.12 1.13 1.14 ];
net = newelm(minmax(x),[100,50,25,1],{'tansig','logsig','tansig','purelin'},'trainscg');
net.trainparam.epochs = 5000
net.trainparam.goal = 1e-7;
net.trainparam.lr = 0.05
net = train(net,x,p)
y = net(x)
error_train = p-y

y = sim(net,x);
gensim(net,1)
