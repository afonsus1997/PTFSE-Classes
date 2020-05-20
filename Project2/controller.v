`timescale 1ns / 1ps

`define reportval
// `define testval

module controller(
	input clk,
	input reset,
	input start,
	output init,
	output toggle,
	output running,
	output finish,
	output reg bist_end
);

reg [2:0] state, next_state; 
parameter IDLE_s=0, START_s=1, INIT_s=2, RUNNING_s=3, FINISH_s=4;
`ifdef reportval
parameter NCLOCK = 650; //650 for group 2
`endif
`ifdef testval
parameter NCLOCK = 10; //this needs to be commented in order to generate code coverage. Xcellium does not recognize define parameters
`endif

reg [$clog2(NCLOCK):0] ncounter;
reg complete;
reg toggle_r;
reg reset_latch;

always @ (posedge clk) begin
	if(reset) begin
		state       <= IDLE_s;
	end
	else if(start & (state == IDLE_s) & !reset_latch) begin
		state       <= START_s;
	end
	else
		state       <= next_state;
end


always @(*) begin
	case (state)
		IDLE_s:
			next_state = IDLE_s;
		START_s:
			next_state = INIT_s;
		INIT_s:
			next_state = RUNNING_s;
		RUNNING_s:
			if(ncounter == NCLOCK)
				next_state = FINISH_s;
			else
				next_state = RUNNING_s;
		FINISH_s:
			next_state = IDLE_s;	
		default:
			next_state  = IDLE_s;
	endcase
end

assign init     = (state == INIT_s);
assign running  = (state == RUNNING_s) & (ncounter < NCLOCK);
assign finish   = (state == FINISH_s); 
// assign bist_end = (complete) & !(reset | start) ;
assign toggle   = (state == RUNNING_s) & toggle_r;

always @ (posedge clk) begin
	if(reset | (state == FINISH_s)) begin
		toggle_r <= 0;
		ncounter <= 0;
	end	
	else if(state == RUNNING_s) begin
		if(ncounter < NCLOCK-1) begin
			toggle_r <= !toggle_r;
		end
		else begin
			toggle_r <= 0;
		end
		ncounter <= ncounter + 1;
  	end
end

wire complete_c;
assign complete_c = reset | start;

always @ (posedge clk) begin
	if(complete_c)
		bist_end <= 0;
	else if(state == FINISH_s)
		bist_end <= 1;
	
end

wire latch_c;
assign latch_c = start ^ (reset);

always @ (posedge start) begin
	if(latch_c) begin
		reset_latch <= 1;
	end
	else begin
		reset_latch <= 0;
	end

end

endmodule // controller
