//102210 Sequencr Detector - Mealy FSM 
module fsm(
	input CLK,			  //Clock
	input [3:0]I,       //INPUT I
	output	  Y		  //OUTPUT Y
);

reg Y1 = 0;
assign Y = Y1;
  reg [2:0] curr_state, next_state;
  
  parameter S0 = 3'b000,
  			S1 = 3'b001,
  			S2 = 3'b010,
  			S3 = 3'b011,
  			S4 = 3'b100,
  			S5 = 3'b101;
  

  always @(posedge CLK) begin
    curr_state = next_state;
	 next_state = S0;
    
    case (curr_state)
      S0 : if (I == 4'd1) begin
        		next_state = S1;
        		Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
      S1 : if (I == 4'd0) begin
        		next_state = S2;
        		Y1 = 0;
      	   end
      	   else if( I == 4'd1) begin
             	next_state = S1;
             	Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
      S2 : if (I == 4'd2) begin
        		next_state = S3;
        		Y1 = 0;
      	   end
      	   else if( I == 4'd1) begin
             	next_state = S1;
             	Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
      S3 : if (I == 4'd2) begin
        		next_state = S4;
        		Y1 = 0;
      	   end
      	   else if( I == 4'd1) begin
             	next_state = S1;
             	Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
      S4 : if (I == 4'd1) begin
        		next_state = S5;
        		Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
      S5 : if (I == 4'd0) begin
        		next_state = S2;
        		Y1 = 1;
      	   end
      	   else if( I == 4'd1) begin
             	next_state = S1;
             	Y1 = 0;
      	   end
      	   else begin
             	next_state = S0;
             	Y1 = 0;
           end
    endcase
  end

endmodule
