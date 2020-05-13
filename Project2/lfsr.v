
module lfsr(
    input clk,
    input rst,
    output [4:1] out
);

    parameter seed = 4'b1111;

    reg [4:1] dff;

    assign out[1] = dff[1];
    assign out[2] = dff[2];
    assign out[3] = dff[3];
    assign out[4] = dff[4];



    always @ (posedge clk, posedge rst) begin
        if(rst) begin
            dff <= seed;
        end
        else begin
            dff <= {dff[4-1:1], dff[4] ^ dff[3]};
        end

    end

endmodule