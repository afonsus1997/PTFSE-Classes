

module lfsrmux #
(
    parameter NBIT = 4     
) (
    input [4-1:0] in,
    input [4-1:0] lfsr,
    input mode,

    output reg [4-1:0] outport
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