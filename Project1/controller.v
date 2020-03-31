
// `define NCLOCK 5

module controller(
    input clk,
    input reset,
    input start,
    output init,
    output running,
    output reg toggle,
    output finish,
    output reg bist_end
);

reg [3:0] state, next_state; 
reg [3:0] nclock;
parameter IDLE=0, INIT=1, RUNNING=2, FINISH=3, END=4;

reg [2:0] ncounter;

always @ (posedge clk) begin
  if(reset == 1) begin
    state   <= 0;
    toggle  <= 0;
    bist_end <= 0;
    ncounter <= 1;
    nclock <= 5;
  end
  else
    state <= next_state;
end


always @(*) begin
    case (state)
        IDLE:
            if(start)
                next_state = INIT;
        INIT:
            next_state = RUNNING;
        RUNNING:
            if(ncounter == nclock)
                next_state = FINISH;
        FINISH:
            next_state = IDLE;
        
        default:
            next_state  = IDLE;
    endcase
end

assign init = (state == INIT);
assign running = (state == RUNNING) && (ncounter < nclock+1);
assign finish = (state == FINISH); 
// assign bist_end = (state == END)

always @ (posedge clk) begin
  if(state == RUNNING) begin
      if(ncounter < nclock-1) begin
        toggle = !toggle;
      end
      else begin
        toggle <= 0;
      end
      ncounter++;
  end
end

always @ (negedge finish, posedge reset, posedge start) begin
    if(!finish)
        bist_end <= 1;
    else if (reset) 
        bist_end <= 0;
    else if (start) 
        bist_end <= 0;
end

endmodule // controller