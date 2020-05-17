
module lfsrmux(
    input [NBIT-1:0] in,
    input [NBIT-1:0] lfsr,
    input mode,

    output [NBIT-1:0] outport
);

    parameter NBIT = 4;

    assign outport = mode ? lfsr : in;

endmodule