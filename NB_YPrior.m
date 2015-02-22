function [p] = NB_YPrior(yTrain)
p = 0;
class2=sum(yTrain~=1,1);
class1=sum(yTrain~=2,1);
p=class1/(class1+class2);
end


