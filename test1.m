data=load('/M-data/UCIdata/iris.txt');
[train,test]=splitData(data);
[train,test]=scaleData(train,test);
rate=nn(train,test);
disp(rate);