`timescale 1ns / 1ps

`define reportval
//`define testval

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

reg [2:0] state, next_state; 
parameter IDLE=0, START=1, INIT=2, RUNNING=3, FINISH=4;
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
		state       <= IDLE;
	end
	else if(start & (state == IDLE) & !reset_latch) begin
		state       <= START;
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
			if(ncounter == NCLOCK)
				next_state = FINISH;
			else
				next_state = RUNNING;
		FINISH:
			next_state = IDLE;	
		default:
			next_state  = IDLE;
	endcase
end

assign init     = (state == INIT);
assign running  = (state == RUNNING) & (ncounter < NCLOCK+1);
assign finish   = (state == FINISH); 
assign bist_end = (complete) & !(reset | start) ;
assign toggle   = (state == RUNNING) & toggle_r;

always @ (posedge clk) begin
	if(reset | (state == FINISH)) begin
		toggle_r <= 0;
		ncounter <= 0;
	end	
	else if(state == RUNNING) begin
		if(ncounter < NCLOCK) begin
			toggle_r <= !toggle_r;
		end
		else begin
			toggle_r <= 0;
		end
		ncounter <= ncounter + 1;
  	end
end

always @ (negedge finish, posedge start, posedge reset) begin
	if(reset | start)
		complete = 0;
	else
		complete = 1;
	
end

always @ (posedge start) begin
	if(start & !(reset)) begin
		reset_latch <= 0;
	end
	else begin
		reset_latch <= 1;
	end

end

endmodule // controller
