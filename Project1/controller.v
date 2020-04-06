`timescale 1ns / 1ps
// `define NCLOCK 5

module controller(
	input clk,
	input reset,
	input start,
	output init,
	output running,
	output toggle,
	output finish,
	output wire bist_end
);

reg [3:0] state, next_state; 
reg [3:0] nclock;
parameter IDLE=0, START=1, INIT=2, RUNNING=3, FINISH=4, END=5;

reg [2:0] ncounter;
reg complete;
reg toggle_r;

always @ (posedge clk) begin
	if(reset) begin
		state       <= IDLE;
		ncounter    <= 1;
		nclock      <= 5;
	end
	if(start & (state == IDLE)) begin
		state       <= START;
		complete    <= 0;
	end
	else
		state       <= next_state;
end


always @(*) begin
	case (state)
		START:
			next_state = INIT;
		INIT:
			next_state = RUNNING;
		RUNNING:
			if(ncounter == nclock)
				next_state = FINISH;
		FINISH:
			next_state = END;
		END:
			if(bist_end)
				next_state = IDLE;	
		default:
			next_state  = IDLE;
	endcase
end

assign init     = (state == INIT);
assign running  = (state == RUNNING) & (ncounter < nclock+1);
assign finish   = (state == FINISH); 
assign bist_end = (complete) & !(reset | start) ;
assign toggle   = (state == RUNNING) & toggle_r;

always @ (posedge clk) begin
  if(reset | bist_end)
		toggle_r <= 0;
  if(state == RUNNING) begin
	if(ncounter < nclock-1) begin
		toggle_r = !toggle_r;
	end
	else begin
		toggle_r <= 0;
	end
	ncounter = ncounter + 1;
  end
end

always @ (negedge finish, posedge reset, posedge start) begin
	if(!finish && state == END)
		complete <= 1;
	else if (reset) 
		complete <= 0;
	else if (start) 
		complete <= 0;
end

endmodule // controller
