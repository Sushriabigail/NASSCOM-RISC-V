\m5_TLV_version 1d: tl-x.org
\SV
   // This code can be found in: https://github.com/stevehoover/RISC-V_MYTH_Workshop
   `include "sqrt32.v";
   m4_include_lib(['https://raw.githubusercontent.com/stevehoover/RISC-V_MYTH_Workshop/ecba3769fff373ef6b8f66b3347e8940c859792d/tlv_lib/calculator_shell_lib.tlv'])

\SV
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)

\TLV
   
   
   |calc
      @1
         $reset = *reset;
         $valid = $reset ? 0 : (>>1$valid + 1);
         $valid_or_reset = $valid || $reset;
         
         $val1[31:0] = >>2$out[31:0];
         $val2[31:0] = $rand2[3:0];
         $op[2:0] = $rand3[2:0];
         
      ?$valid_or_reset
         @1
            $sum[31:0] = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;
            $quot[31:0] = $val1 / $val2;
         
         @2
            $mem[31:0] = $reset ? '0 : ($op== 3'b101) ? (>>2$out) : (>>2$mem);
            
            $recall[31:0] = >>2$mem;
            
            $temp[31:0] = $op[2] ? (($op[1:0] == 2'b00) ? $recall : 0) : ($op[1] ? ($op[0] ? $quot : $prod) : ($op[0] ? $diff : $sum));
            
         @3
            $out[31:0] = $reset ? '0 : $temp;
         
            
         
         
         // YOUR CODE HERE
         // ...
         

      // Macro instantiations for calculator visualization(disabled by default).
      // Uncomment to enable visualisation, and also,
      // NOTE: If visualization is enabled, $op must be defined to the proper width using the expression below.
      //       (Any signals other than $rand1, $rand2 that are not explicitly assigned will result in strange errors.)
      //       You can, however, safely use these specific random signals as described in the videos:
      //  o $rand1[3:0]
      //  o $rand2[3:0]
      //  o $op[x:0]
      
   //m4+cal_viz(@3) // Arg: Pipeline stage represented by viz, should be atleast equal to last stage of CALCULATOR logic.

   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   

\SV
   endmodule
