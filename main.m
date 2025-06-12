clc;
clear;

% Given data points
x_data = [1.3, 1.6, 1.9, 2.1];
y_data = log(x_data); % Natural logarithm of x

% Point of interest for interpolation
x_interp = 1.8;
true_value = log(x_interp); % True value of ln(1.8)

% Calculate interpolated values
lagrange_result = lagrange_interpolation(x_data, y_data, x_interp);
newton_result = newton_interpolation(x_data, y_data, x_interp);

% Compute relative errors
error_lagrange = abs((true_value - lagrange_result) / true_value);
error_newton = abs((true_value - newton_result) / true_value);

% Display results
fprintf("Lagrange Approximation at x = %.2f: %.6f\n", x_interp, lagrange_result);
fprintf("Relative Error (Lagrange): %.6f\n\n", error_lagrange);

fprintf("Newton Approximation at x = %.2f: %.6f\n", x_interp, newton_result);
fprintf("Relative Error (Newton): %.6f\n\n", error_newton);

fprintf("True ln(%.2f) = %.6f\n\n", x_interp, true_value);

% -------------------------------------------------------
% Visualization of approximation errors over interval

x_vals = linspace(1.3, 2.1, 100);
true_vals = log(x_vals);

% Compute interpolated values for each x
lagrange_vals = arrayfun(@(x) lagrange_interpolation(x_data, y_data, x), x_vals);
newton_vals = arrayfun(@(x) newton_interpolation(x_data, y_data, x), x_vals);

% Absolute errors
lagrange_error = abs(true_vals - lagrange_vals);
newton_error = abs(true_vals - newton_vals);

% Plot error curves
figure;
plot(x_vals, lagrange_error, 'r-', 'LineWidth', 2); hold on;
plot(x_vals, newton_error, 'b--', 'LineWidth', 2);
xlabel('x');
ylabel('Absolute Error');
title('Comparison of Approximation Error: Lagrange vs Newton');
legend('Lagrange Error', 'Newton Error');
grid on;