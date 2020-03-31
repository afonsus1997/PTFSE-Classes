

module controller(
    input clock,
    input reset,
    input start,
    output init,
    output running,
    output toggle,
    output finish,
    output bist_end    
);

//code here
always @ (posedge clock) begin
    if(start == 1 && running == 0)
    begin
        init <= 1;
    end
    else init <= 0;
end

endmodule // controller