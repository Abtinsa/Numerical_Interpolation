function y_interp = newton_interpolation(x_data, y_data, x_interp)
% NEWTON_INTERPOLATION - Computes interpolation using Newton's Divided Differences
% Input:
%   x_data    - vector of x data points
%   y_data    - vector of corresponding y values
%   x_interp  - the x value at which we interpolate
% Output:
%   y_interp  - interpolated value at x_interp

n = length(x_data);
div_diff = y_data;

% Build the divided difference table
for j = 2:n
    for i = n:-1:j
        div_diff(i) = (div_diff(i) - div_diff(i-1)) / (x_data(i) - x_data(i-j+1));
    end
end

% Evaluate the Newton polynomial at x_interp
y_interp = div_diff(n);
for i = n-1:-1:1
    y_interp = y_interp * (x_interp - x_data(i)) + div_diff(i);
end

end