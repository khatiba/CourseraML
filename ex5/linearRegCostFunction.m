function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

for i = 1:m

  xi = X(i,:)';
  yi = y(i);
  h = theta' * xi;

  J = J + (h-yi)^2;

  grad = grad + (h - yi)*xi;

end

J = J + lambda * theta(2:end)' * theta(2:end);
J = J / (2*m);

theta2 = [0; theta(2:end)];

grad = grad + lambda*theta2;
grad = grad / m;

% =========================================================================

grad = grad(:);

end
