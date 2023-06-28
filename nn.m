function rate = nn(traindata,testdata)
%thisds script is used for 1-nn classification
m=size(traindata,1);
n=size(testdata,1);
predict=[];
for test =1:n %for each testing data
    for train =1:m %for each training data
        Eucluidist(train)=norm(testdata(test,1:end-1)-traindata(train,1:end-1));
    end
    [val,ind]=min(Eucluidist);
    predict(test)=traindata(ind,end);
end
actual=testdata(:,end);
rate=100*sum(actual==predict')/n;
