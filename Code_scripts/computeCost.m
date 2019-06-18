function [J, grad] = computeCost( Theta, X, y )

m = size(X, 1);
X = [ones(m, 1) X];
disp(X)

h = sigmoid(X * Theta);

J = -(1 / m) * sum( y .* log(h) + (1 - y) .* log(1 - h) );

grad = zeros(size(Theta, 1), 1);

for i = 1 : size(grad),
    grad(i) = (1 / m) * sum( (h - y)' * X(:, i) );
end

