






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

    wire misr_grant_o_w;
    
    wire [3:0] lsfr_in_bus_w;
    wire [3:0] request_bus_w;
    wire [3:0] input_mux_out_w;
    wire circuit_mode_w;
    assign request_bus_w[0] = request1;
    assign request_bus_w[1] = request2;
    assign request_bus_w[2] = request3;
    assign request_bus_w[3] = request4;


    controller bist_controller(
        .clk(clock),
	    .reset(reset),
	    .start(start),
	    .bist_end(bist_end),
        .pass_fail(pass_fail)
        );

    lfsrmux mux1(
        .in(request_bus_w),
        .lsfr(lsfr_in_bus_w),
        .out(input_mux_out_w),
        .mode(circuit_mode_w)
    );

    lfsr bist_lfsr(
        .clk(clock),
        .rst(reset),
        .out(lsfr_in_bus_w)
    );

    circuito06 uut(
        .clock(clock), 
        .reset(reset), 
        .request1(input_mux_out_w[0]), 
        .request2(input_mux_out_w[1]), 
        .request3(input_mux_out_w[2]), 
        .request4(input_mux_out_w[3]), 
        .grant_o(misr_grant_o_w)
    );

    misr bist_misr(

    );


endmodule