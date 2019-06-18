function plotData( X , y )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

pos=find(y==1); %true values in the data 
neg=find(y==0); %false values in the data 

plot(X(pos , 1), X(pos , 2), 'kx','MarkerSize', 5)
hold on
plot(X(neg , 1), X(neg , 2), 'ko','MarkerSize', 5, 'color','r')


end

