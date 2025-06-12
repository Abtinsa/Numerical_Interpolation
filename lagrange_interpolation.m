function y_interp = lagrange_interpolation(x_data, y_data, x_interp)
% LAGRANGE_INTERPOLATION - Computes interpolation using Lagrange method
% Input:
%   x_data    - vector of x data points
%   y_data    - vector of corresponding y values
%   x_interp  - the x value at which we interpolate
% Output:
%   y_interp  - interpolated value at x_interp

n = length(x_data);
y_interp = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if i ~= j
            L = L * (x_interp - x_data(j)) / (x_data(i) - x_data(j));
        end
    end
    y_interp = y_interp + L * y_data(i);
end

end