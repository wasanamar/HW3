function [yHat] = NB_Classify(D, p, XTest)
m=size(XTest,1);
yHat=zeros(m,1);
for i=1:m
vector1=find(XTest(i, :)==1);
vector2=find(XTest(i, :)==0);
likelihoodframe1=D(1, vector1);
likelihoodframe2=D(2, vector1);
likelihoodframe3=D(1, vector2);
likelihoodframe4=D(2, vector2);
p1=log(likelihoodframe1);
p2=log(likelihoodframe2);
p3=log(1-likelihoodframe3);
p4=log(1-likelihoodframe4);
y1=logProd(p1)+log(p);
y2=logProd(p2)+log(p);
y3=logProd(p3)+log(1-p);
y4=logProd(p4)+log(1-p);
temp1=y1+y3;
temp2=y2+y4;
if(temp1>temp2)
yHat(i,1)=1;
else
yHat(i,1)=2;
endif
end
end      









