`timescale 1ns / 1ps

module multiplier_test;

   parameter N = 4;
	reg [N:0] a;  // extra bit for the loop counter
	reg [N:0] b;  // extra bit for the loop counter
	wire [2*N:0] p;

	multiplier #(N) uut ( .a (a[N-1:0]), 
		                   .b (b[N-1:0]), 
		                   .p (s) );
	initial begin
      #100; // wait 100 ns for global reset to finish
		  
      for (a = 0; a < 2**N; a = a + 1)
         for (b = 0; b < 2**N; b = b + 1)
			   #20 if ( a * b != p )
                $display("%d * %d != %d", a, b, p );
	end
endmodule
