

module lfsrmux #
(
    parameter NBIT = 4     
) (
    input [NBIT-1:0] in,
    input [NBIT-1:0] lfsr,
    input mode,

    output reg [NBIT-1:0] outport
);


    
    //HAL does not accept this??? why???
    // assign outport = mode ? lfsr : in; 
    always @(*) begin
        if(mode)
            outport = lfsr;
        else
            outport = in;
        
    end


endmodule