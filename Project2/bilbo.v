`parameter NBIT = 4;

module bilbo(
    input   b1,
    input   b2,
    input   [NBIT-1:0] in,
    output  [NBIT-1:0] out
    input scan_in,
    output scan_out
);

reg dff [NBIT-1:0];
wire mux;

always @ (*) begin
    
end

always @ (posedge clk) begin

        dff[i] <= (in[i] & b1) | (mux ~| b2);
    end
end

endmodule