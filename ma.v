`timescale 1ns / 10ps

module ma( input x,      // x
           input y,      // y
           input si,     // sum in
           input ci,     // carry in
           output so,    // sum out
           output co );  // carry out

    wire p = x & y;
	 assign so = si ^ p ^ ci;
	 assign co = si & p | ci & (si ^ p);

endmodule
