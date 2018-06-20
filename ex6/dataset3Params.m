function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

test_vals = [0.01 0.1 1 10 100 0.03 0.3 3 30 300];

% lowest_cv_err = Inf;
% best_C = C;
% best_sigma = sigma;

% for test_C = test_vals
%   for test_sigma = test_vals
%     [model] = svmTrain(X, y, test_C, @(x1, x2) gaussianKernel(x1, x2, test_sigma));
%     predictions = svmPredict(model, Xval);
%     cv_err = mean(double(predictions ~= yval))
%     if cv_err < lowest_cv_err
%       lowest_cv_err = cv_err;
%       best_C = test_C;
%       best_sigma = test_sigma;
%     end
%   end
% end

% run the above to search for these parameters
best_C = 1;
best_sigma = 0.1;

C = best_C;
sigma = best_sigma;


% =========================================================================

end
