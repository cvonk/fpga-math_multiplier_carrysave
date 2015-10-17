`timescale 1ns / 1ps

module multiply_test;

	 reg [3+1:0] a;  // inputs
	 reg [3+1:0] b;
	 wire [8:0] p;  // outputs

	 multiplier uut ( .a(a), 
	                  .b(b), 
							.p(p) );
	
    initial begin
        #100; // wait 100 ns for global reset to finish
		  
        for (a = 0; a <= 4'b1111; a = a + 1)
            for (b = 0; b <= 4'b1111; b = b + 1)
                #20 $display("%d * %d = %d %s", a, b, p, a * b == p ? "OK" : "ERROR" );
    end
endmodule

