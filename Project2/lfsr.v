// parameter seeed = 4'b1111;

module lfsr #
(   
    parameter NBIT = 4,
    parameter SEED = 4'b1111
) (
    input clk,
    input rst,
    input scan_in,
    // input [3:0] seed, //this should be replaced after testing with a parameter
    output [3:0] out,
    output scan_out
);


    reg [4-1:0] dff;

    assign out[0] = dff[0];
    assign out[1] = dff[1];
    assign out[2] = dff[2];
    assign out[3] = dff[3];
    
    assign scan_out = dff[3];




    always @ (posedge clk) begin
        if(rst) begin
            dff <= 4'b1111;
        end
        else begin
            dff <= {dff[4-2:0], dff[3] ^ dff[2] ^ scan_in};
        end

    end

endmodule