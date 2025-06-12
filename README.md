🌈 Interpolation & Error Visualization Using MATLAB

📌 Overview

This MATLAB project focuses on **numerical interpolation techniques** to estimate function values and analyze approximation errors. We approximate the natural logarithm function `ln(x)` using **Lagrange** and **Newton divided difference** methods over a given set of data points.

📷 **Function answer nodes**  

![Fx-Answers](https://github.com/user-attachments/assets/8596b63b-f4a0-4864-a12c-d687e519f747)

---

🛠️ Methodology

🔢 1. Dataset & Target

- **Given points**:  
  `x = [1.0, 1.5, 2.0, 2.5]`  
  `y = log(x)`
  
- **Target value**: Estimate `ln(1.8)`  
- **True value**: `ln(1.8) ≈ 0.587787`

🎯 2. Implemented Techniques

1️⃣ **Lagrange Polynomial Interpolation**  
🔸 Uses the Lagrange basis functions to construct a polynomial that passes through all known points.  
🔹 Easy to understand, but recalculates the full polynomial for new data.

2️⃣ **Newton Divided Differences**  
🔸 Builds a hierarchical form of polynomial using forward/backward differences.  
🔹 Efficient for incremental data addition.

---

🧮 MATLAB Implementation

✅ Two core functions implemented:  
- `lagrange_interpolation(x, y, x_interp)`  
- `newton_interpolation(x, y, x_interp)`

✅ A `main.m` script computes:
- Approximate value at `x = 1.8`
- Relative error for both methods
- Plot of actual function vs. interpolated ones

✅ Additional script `compare_errors.m`:
- Computes error at many `x` values
- Visualizes absolute error across range

---

📊 Output Summary

| Method           | Approximation | Relative Error |
|------------------|----------------|----------------|
| Lagrange         | ≈ 0.588801     | 0.001725       |
| Newton           | ≈ 0.588801     | 0.001725       |
| True Value       | 0.587787       | –              |

---

📈 Visualization Features

1. **Function Comparison Plot**:
   - True `ln(x)` (black solid line)
   - Lagrange (blue dashed line)
   - Newton (red dash-dot line)
   - Data points shown in green dots

2. **Error Plot**:
   - Shows absolute error over `[1.3, 2.1]`
   - Helps analyze accuracy of each method

---

💡 Insights

- Both interpolation methods yield very close results.
- Accuracy depends on the number and distribution of input data points.
- Newton is more efficient if you need to interpolate at multiple points sequentially.

📸 **Result Screenshot**

<img width="1512" alt="SC1" src="https://github.com/user-attachments/assets/50d4c8d3-d125-4e19-bb04-723cdc1ae224" />

-  – Graph comparing ln(x), Lagrange, Newton  
-  – Absolute error plot for both methods

---

✨ Author

👨‍💻 **Abtin Aghasadeghi**  
📍 Civil Engineer | Numerical Methods Enthusiast  
📧 [Contact Me](mailto:your_email@example.com)

🚀 Run `main.m` to start the interpolation process and visualize the results!
