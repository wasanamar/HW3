function [error] = ClassificationError(yHat, yTruth)
e=0;
for i = 1 : rows(yHat)
if(yHat(i)!=yTruth(i))
e=e+1;
endif
end 
error=(e/rows(yHat));
end







