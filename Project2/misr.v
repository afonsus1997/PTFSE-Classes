

module misr #
(
    parameter NBIT = 16,
    parameter seed = 16'b1111111111111111
)(
    input clk,
    input rst,
    input scan_in,
    input[3:0] grant_o,
    input finish,
    output[16-1:0] signature,
    output scan_out
);

    reg [16-1:0] dff;

    assign signature = dff;
    assign scan_out = dff[7];

    always @ (posedge clk) begin
        if(rst) begin
            dff <= 16'b1111111111111111;
        end
        else if(!finish) begin
            dff[0] <= grant_o[3];          //1 2 4
            dff[1] <= grant_o[2] ^ dff[0];
            dff[2] <= grant_o[1] ^ dff[1];
            dff[3] <= grant_o[0] ^ dff[2] ^ dff[16-1];
            dff[4] <= scan_in    ^ dff[3];
            dff[5] <=              dff[4];
            dff[6] <=              dff[5];
            dff[7] <=              dff[6];
            dff[8] <=              dff[7];
            dff[9] <=              dff[8];
            dff[10] <=              dff[9]; 
            dff[11] <=              dff[10];
            dff[12] <=              dff[11] ^ dff[16-1];
            dff[13] <=              dff[12];
            dff[14] <=              dff[13] ^ dff[16-1];
            dff[15] <=              dff[14] ^ dff[16-1];
           

        end
    end

endmodule