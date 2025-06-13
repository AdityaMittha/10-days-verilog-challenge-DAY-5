# 🔢 Verilog Projects: Gray Code & Parity Logic (Projects 21–25)

This repository showcases 5 key Verilog modules related to **Gray code conversion**, **parity generation**, and **parity checking** — essential for digital communication systems and error detection.

---

## 📘 Projects Included

| No. | Module File               | Description                                |
|-----|---------------------------|--------------------------------------------|
| 21  | `gray_binary_conv.v`      | Gray Code to Binary Converter              |
| 22  | `even_parity_gen.v`       | Even Parity Generator (4-bit)              |
| 23  | `odd_parity_gen.v`        | Odd Parity Generator (4-bit)               |
| 24  | `even_parity_check.v`     | Even Parity Checker (4-bit + parity bit)   |
| 25  | `odd_parity_check.v`      | Odd Parity Checker (4-bit + parity bit)    |

---

## 🔧 Module Details

### 21. 🧠 Gray to Binary Converter

- **Inputs**:  
  `gray[3:0]`
- **Outputs**:  
  `bin[3:0]`

> Converts 4-bit Gray code to its binary equivalent.

📷 `assets/gray_binary_conv_waveform.png`

---

### 22. ✅ Even Parity Generator

- **Inputs**:  
  `in[3:0]`
- **Output**:  
  `p` (even parity bit)

> Outputs 1-bit parity to make total '1's even.

📷 `assets/even_parity_gen_waveform.png`

---

### 23. 🔄 Odd Parity Generator

- **Inputs**:  
  `in[3:0]`
- **Output**:  
  `p` (odd parity bit)

> Generates parity bit so total '1's in data + parity = odd.

📷 `assets/odd_parity_gen_waveform.png`

---

### 24. 🕵️ Even Parity Checker

- **Inputs**:  
  `in[3:0]`, `p`
- **Output**:  
  `error`

> Checks if data + even parity is valid.  
> `error = 1` if mismatch.

📷 `assets/even_parity_check_waveform.png`

---

### 25. 🧪 Odd Parity Checker

- **Inputs**:  
  `in[3:0]`, `p`
- **Output**:  
  `error`

> Verifies odd parity.  
> `error = 1` indicates parity error.

📷 `assets/odd_parity_check_waveform.png`

---

## ▶️ Simulation Instructions

> You can use **Icarus Verilog**, **ModelSim**, or **Vivado**.

### 🔍 Example with Icarus Verilog:

```bash
# Compile
iverilog -o tb_gray_binary_conv verilog/gray_binary_conv.v testbench/tb_gray_binary_conv.v

# Run
vvp tb_gray_binary_conv
