# RV Day 3 - Digital Logic with TL-Verilog and Makerchip
## Sequential Logic 
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
