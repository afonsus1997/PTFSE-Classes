






module top(
    // io relevant to the given circuit
    input clock; 
    input reset; 
    input request1; 
    input request2; 
    input request3; 
    input request4; 
    output[3:0] grant_o;

    // io relevant to the bist controller
    input start;
    output bist_end;
    output pass_fail;
);

    wire lfsr_request1_w;
    wire lfsr_request2_w;
    wire lfsr_request3_w;
    wire lfsr_request4_w;

    wire misr_grant_o_w;


    controller bist_controller(
        .clk(clock),
	    .reset(reset),
	    .start(start),
	    .init(),
	    .running(),
	    .toggle(),
	    .finish(),
	    .bist_end(bist_end)
        );

    lfsr bist_lfsr(
        .request1(request1),
        .request2(request1),
        .request3(request1),
        .request4(request1),

        .lfsr_request1(lfsr_request1_w),
        .lfsr_request2(lfsr_request1_w),
        .lfsr_request3(lfsr_request1_w),
        .lfsr_request4(lfsr_request1_w)
    );

    circuito06 uut(
        .clock(clock), 
        .reset(reset), 
        .request1(lfsr_request1_w), 
        .request2(lfsr_request1_w), 
        .request3(lfsr_request1_w), 
        .request4(lfsr_request1_w), 
        .grant_o(misr_grant_o_w)
        );

    misr bist_misr(
        .grant_o(misr_grant_o_w)
        .misr_grant_o(grant_o)
    )


endmodule