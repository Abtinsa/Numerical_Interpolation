🌈 Interpolation Using MATLAB – Lagrange & Newton Methods

📌 Overview

This MATLAB project implements two classical **interpolation techniques** to estimate the value of the natural logarithm function `ln(x)` based on a set of known data points. The focus is on **accuracy** and **visual insight** into the interpolation behavior using:

- 🔹 Lagrange Polynomial Interpolation
- 🔸 Newton Divided Difference Interpolation

📷 **Data of the function**  

![Fx-Answers](https://github.com/user-attachments/assets/81dca6a1-03aa-4c82-ae44-e3c835c16c44)

---

🛠️ Methodology

🔢 1. Dataset & Objective

- **Given points**:  
  `x = [1.0, 1.5, 2.0, 2.5]`  
  `y = log(x)`

- **Target value**: Estimate `ln(1.8)`  
- **True value**: `ln(1.8) ≈ 0.587787`

🎯 2. Implemented Methods

1️⃣ **Lagrange Interpolation**  
🔸 Constructs a single polynomial using Lagrange basis functions.  
🔹 Good accuracy for small datasets.

2️⃣ **Newton Interpolation**  
🔸 Uses divided differences to incrementally build the interpolation polynomial.  
🔹 More efficient for multiple interpolations.

---

🧮 MATLAB Functions

- `lagrange_interpolation(x, y, x_interp)`  
   → Computes interpolated value at `x_interp` using Lagrange formula.

- `newton_interpolation(x, y, x_interp)`  
   → Computes interpolated value at `x_interp` using Newton divided difference.

⚠️ Note: You can write a simple script (e.g. `main.m`) to call both functions and display their results.

Example usage in `main.m`:

```matlab
x = [1.0, 1.5, 2.0, 2.5];
y = log(x);
x_interp = 1.8;

y_lagrange = lagrange_interpolation(x, y, x_interp);
y_newton = newton_interpolation(x, y, x_interp);
true_val = log(x_interp);

fprintf('Lagrange: %.6f\n', y_lagrange);
fprintf('Newton:   %.6f\n', y_newton);
fprintf('True ln(1.8): %.6f\n', true_val);
```
📈 **Output Sample**


<img width="1512" alt="SC1" src="https://github.com/user-attachments/assets/5bfc8c63-5159-433d-940e-0a6553a28955" />

```matlab
Lagrange Interpolation at x = 1.8000: 0.588801
Newton Interpolation   at x = 1.8000: 0.588801
True ln(1.8000):                     0.587787

Lagrange Relative Error: 0.001725
Newton   Relative Error: 0.001725
```

📐 **Relative Error Calculation (from main.m)**
error_lagrange = abs((true_val - y_lagrange) / true_val);
error_newton = abs((true_val - y_newton) / true_val);

💡 **Insights**

- Both interpolation methods yield very close results.
- Accuracy depends on the number and distribution of input data points.
- Newton is more efficient if you need to interpolate at multiple points sequentially.

📸 **Suggested Screenshots**

- `interpolation_plot.png` – Graph comparing **ln(x)**, **Lagrange**, and **Newton** interpolation.
- `error_plot.png` – Absolute error plot for both methods across the interval.

---

✨ **Author**

👨‍💻 **Abtin Aghasadeghi**  
📍 Civil Engineer | Numerical Methods Enthusiast  
📧 [Contact Me](mailto:Sadeghi@work.com)

🚀 Run `main.m` to start the interpolation process and visualize the results!



