`parameter NBIT = 4;

module lfsrmux(
    input [NBIT-1:0] in,
    input [NBIT-1:0] lfsr,
    input mode,

    output [NBIT-1:0] out
);

    always @ (*) begin
        if(mode)
            output = lfsr;
        else
            output = in
    end

endmodule