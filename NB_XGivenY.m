function [D] = NB_XGivenY(XTrain, yTrain)
V=size(XTrain,2);
D=zeros(2,V);
for class=1:2
fm = XTrain(find(yTrain==class), :);
D(class, :)=(sum(fm,1).+1) ./ (size(fm,1).+1);
end
end











