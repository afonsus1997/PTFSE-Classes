module misr(
    input clk,
    input rst,
    input scan_in,
    input[3:0] grant_o,
    output[NBIT-1:0] signature,
    output scan_out
);

    parameter NBIT = 6;
    parameter seed = 6'b111111;
    reg [NBIT-1:0] dff;

    assign signature = dff;

    always @ (posedge clk) begin
        if(rst) begin
            dff <= seed;
        end
        else begin
            dff[0] <= grant_o[3] ^ dff[NBIT-1];          
            dff[1] <= grant_o[2] ^ dff[0];
            dff[2] <= grant_o[1] ^ dff[1]; 
            dff[3] <= grant_o[0] ^ dff[2]; 
            dff[4] <=              dff[3];
            dff[5] <=              dff[4] ^ dff[NBIT-1];
        end
    end

endmodule