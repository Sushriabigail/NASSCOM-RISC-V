# Digital Logic with TL-Verilog and Makerchip
## 1) Combinational logic in TL-Verilog using Makerchip
### L1.  Introduction to Logic Gates
#### 1. Logic Gates ?
They are **fundamental building blocks** for digital circuits which take one or more inputs (1s or 0s) and give an output based on some logic.
Examples:
   - **AND** gate: Only gives 1 if *both* inputs are 1
   - **OR** gate: Gives 1 if *any* input is 1
   - **NOT** gate: Flips the input (1 becomes 0, 0 becomes 1)
  
![Screenshot 2025-04-25 170303](https://github.com/user-attachments/assets/3411737f-a55c-486c-8d9f-352f6031c01b)

#### 2. Combinational Circuits?
- More complex circuits using the fundamental building blocks (Gates)
- These circuits give outputs **only based on current inputs**
- No memory is used here
 
![Screenshot 2025-04-25 172211](https://github.com/user-attachments/assets/abd179a0-9a8f-4adc-b394-3f66ef3f923e)

Example: Full Adder
A full adder adds 3 bits together:
- Inputs: A, B, Cin (carry-in)  
- Outputs: S (sum), Cout (carry-out)

![Screenshot 2025-04-25 172855](https://github.com/user-attachments/assets/3635780a-ef8a-40d0-b4a9-75ea2bd39747)

#### 3. Boolean Operators?
Boolean operators are logical connectors used to evaluate conditions in programming and digital logic.

![Screenshot 2025-04-25 173724](https://github.com/user-attachments/assets/c771221c-62ae-4b8b-97ed-354b8450bbfe)
---
### L2. Basic Mux Implementation And Introduction To Makerchip
A **MUX (Multiplexer)** selects one of multiple inputs and forwards it to a single output based on control signals. It's like a data switch!
Its Verilog syntex is : assign f = s ? X1 : X2;

Navigation through Makerchip 
![Screenshot 2025-04-25 182522](https://github.com/user-attachments/assets/d9300c55-1184-4945-851d-d263a4ed85bc)

### L3.1  Labs for Cominational Logic
Example: Pythagores Theorem 

![Screenshot 2025-04-25 183421](https://github.com/user-attachments/assets/14a05137-fb1f-4f72-8c20-ed6936f7135b)

#### A) Inverter 

![Screenshot 2025-04-25 190221](https://github.com/user-attachments/assets/677a4b24-733d-4fce-af75-3c5ebdcb37f5)

#### B) Other logic : Boolean operators ( && , || , ^ )

![Screenshot 2025-04-25 192740](https://github.com/user-attachments/assets/c5d5b34b-f0af-4e3a-afdf-2d5ffaf2a299)

### L3.2  Vectors
Vectors of 5 bits
![Screenshot 2025-04-25 193430](https://github.com/user-attachments/assets/08a8dca7-9a5b-41e1-b6a7-f126eb7543ae)

### L3.3  Mux
#### 1. [ 2:0 ] Mux
   
![Screenshot 2025-04-25 193910](https://github.com/user-attachments/assets/3724e8b0-b5e4-4ff3-baf4-6740a54ea19f)
 
#### 2. [ 7:0 ] Mux
   
![Screenshot 2025-04-25 194116](https://github.com/user-attachments/assets/f50a333a-bdd6-4de4-8928-f7d56a8daf40)

### L3.4  Combinational Calculator

![Screenshot 2025-04-25 195741](https://github.com/user-attachments/assets/1595a276-9c26-45ae-892b-d627b0d84e03)

---

## 2) Sequential Logic 
### L1.  Introduction to Sequential LOgic and Counter Lab 
Sequential logic is sequenced by a clock signal.
Example: D-flip-flop transition next state to current state on a rising clock edge
The circuit is constructed to enter a known state in response to a reset signal.

#### Fibonacci Series LAB
-Next value is sum of previous two: 1,1,2,3,5,8,13... { $num[31:0] = $reset ? 1 : >>1$num + >>2$num; }

![Screenshot 2025-04-25 201816](https://github.com/user-attachments/assets/b460bcd1-4bc1-4f84-b962-9c7e092083f3)

#### Counter LAB

![Screenshot 2025-04-25 203201](https://github.com/user-attachments/assets/635ec6ff-ae17-44ef-b151-11518b9875f3)

### L2.  Sequential Calculator Lab
Values in Verilog
eg: 16'hFO where 16 - 16-bits; h - hexadecimal; FO - value
    
![Screenshot 2025-04-25 212255](https://github.com/user-attachments/assets/34e5ae43-4bef-43de-b794-83e59d33b8a8)

![Screenshot 2025-04-25 212052](https://github.com/user-attachments/assets/4a15b197-6714-4c05-9c41-82e270c9e706)




















