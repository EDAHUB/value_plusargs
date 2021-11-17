// DESCRIPTION: Verilator: Verilog example module
//
// This file ONLY is placed under the Creative Commons Public Domain, for
// any use, without warranty, 2003 by Wilson Snyder.
// SPDX-License-Identifier: CC0-1.0
// ======================================================================

// This is intended to be a complex example of several features, please also
// see the simpler examples/make_hello_c.

module top
  (
   // Declare some signals so we can see how I/O works
   input              clk,
   input              reset_l

   );
   // Print some stuff as an example
   reg trace;
   reg ret;
   initial begin

      trace = 0;
      $value$plusargs("trace=%0b", trace);
      $display("trace could get value from %%0b, trace01=%0b",trace);
      trace = 0;
      $value$plusargs("trace=%b", trace);
      $display("trace could get value from %%b, trace02=%0b",trace);
      trace = 0;
      $value$plusargs("trace=%0d", trace);
      $display("trace could get value from %%0d, trace03=%0d",trace);
      trace = 0;
      $value$plusargs("trace=%d", trace);
      $display("trace could get value from %%d, trace04=%0d",trace);

      trace = 0;
      if ($value$plusargs("trace=%0b", trace)) begin
        	 $display("plusargs return 1 from %%0b, trace05=%0d",trace);
      end
      else begin
        	 $display("plusargs return 0 from %%0b, trace05=%0d",trace);
      end
	      	
      trace = 0;
      if ($value$plusargs("trace=%b", trace)) begin
		 $display("plusargs return 1 from %%b, trace06=%0d",trace);
      end 
      else begin
		 $display("plusargs return 0 from %%b, trace06=%0d",trace);
      end
      trace = 0;
      if ($value$plusargs("trace=%0d", trace)) begin
		 $display("plusargs return 1 from %%0d, trace07=%0d",trace);
      end
      else begin
		 $display("plusargs return 0 from %%0d, trace07=%0d",trace);
      end
      trace = 0;
      if ($value$plusargs("trace=%d", trace)) begin
		 $display("plusargs return 1 from %%d, trace08=%0d",trace);
      end 	  
      else begin
		 $display("plusargs return 0 from %%d, trace08=%0d",trace);
      end
      $display("[%0t] Model running...\n", $time);

   end

endmodule
