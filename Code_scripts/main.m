clear; close all; clc;

data=load('mydata.txt');
X=data(:, 1:2);
y=data(:, 3);

%figure
%subplot(2,1,1) 
plotData(X,y);
legend('TRUE', 'FALSE');
xlabel('Blood Pressure');
ylabel('Skin Conductance');

[m,n] = size(X);
initialTheta = zeros((n + 1),1);
[J, grad] = computeCost(initialTheta,X,y);


options = optimset('GradObj','on','MaxIter', 62);
theta = fminunc(@(t)computeCost(t, X, y), initialTheta, options);

predictions = predict(theta, X);
accuracy = mean( double(predictions == y) * 100)

pos=find(y==1); %true values in the data 
neg=find(y==0); %false values in the data 

plot(X(pos , 1), X(pos , 2),130,0.0002);
legend('TRUE', 'FALSE', 'LinearRegressio');

X = [ones(m, 1) X];
score = exp(X*theta)./(1+exp(X*theta))
subplot(2,1,2)   
plot(X*theta, score)
xlabel('Score');
ylabel('Probability');


