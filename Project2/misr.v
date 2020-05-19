module misr(
    input clk,
    input rst,
    input scan_in,
    input[3:0] grant_o,
    output[NBIT-1:0] signature,
    output scan_out
);

    parameter NBIT = 8;
    parameter seed = 8'b11111111;
    reg [NBIT-1:0] dff;

    assign signature = dff;
    assign scan_out = dff[7];

    always @ (posedge clk) begin
        if(rst) begin
            dff <= seed;
        end
        else begin
            dff[0] <= grant_o[3] ^ dff[NBIT-1];          
            dff[1] <= grant_o[2] ^ dff[0];
            dff[2] <= grant_o[1] ^ dff[1] ^ dff[NBIT-1];
            dff[3] <= grant_o[0] ^ dff[2] ^ dff[NBIT-1];
            dff[4] <= scan_in    ^ dff[3] ^ dff[NBIT-1];
            dff[5] <=              dff[4];
            dff[6] <=              dff[5];
            dff[7] <=              dff[6];

        end
    end

endmodule