
module top(clock, reset, request1, request2, request3, request4, lfsr_seed, grant_o, bist_start ,bist_end, signature_out, pass_fail);
    //had to go back to old format due to hal :(
    input clock;
    input reset;
    input request1;
    input request2; 
    input request3; 
    input request4;
    input [3:0] lfsr_seed;
    output[3:0] grant_o;
    // io relevant to the bist controller
    input bist_start;
    output bist_end;
    output [7:0] signature_out; //for testing purposes only
    output pass_fail;

    parameter SIGNATURE_VALID = 8'h27;

    wire [3:0] misr_grant_o_w;
    
    wire [3:0] lsfr_in_bus_w;
    wire [3:0] request_bus_w;
    wire [3:0] input_mux_out_w;
    wire lfsr_scan_w;
    wire misr_scan_w;
    wire uut_scan_w;
    wire scan_toggle_w;
    wire bist_running_w;
    wire [7:0] signature_w;

    assign request_bus_w[0] = request1;
    assign request_bus_w[1] = request2;
    assign request_bus_w[2] = request3;
    assign request_bus_w[3] = request4;

    assign grant_o = misr_grant_o_w;

    assign pass_fail = signature_w && SIGNATURE_VALID;
    assign signature_out = signature_w;

    controller bist_controller(
        .clk(clock),
	    .reset(reset),
	    .start(bist_start),
        .running(bist_running_w),
        .toggle(scan_toggle_w),
	    .bist_end(bist_end),
        .pass_fail(pass_fail)
    );

    lfsrmux mux1(
        .in(request_bus_w),
        .lfsr(lsfr_in_bus_w),
        .outport(input_mux_out_w),
        .mode(bist_running_w)
    );

    lfsr bist_lfsr(
        .clk(clock),
        .rst(reset),
        .seed(lfsr_seed),
        .out(lsfr_in_bus_w),
        .scan_in(misr_scan_w),
        .scan_out(lfsr_scan_w)
    );

    circuito06 uut(
        .clock(clock), 
        .reset(reset), 
        .request1(input_mux_out_w[0]), 
        .request2(input_mux_out_w[1]), 
        .request3(input_mux_out_w[2]), 
        .request4(input_mux_out_w[3]), 
        .grant_o(misr_grant_o_w),
        .scan_en(scan_toggle_w), 
        .scan_in(lfsr_scan_w), 
        .scan_out(uut_scan_w)
    );

    misr bist_misr(
        .clk(clock),
        .rst(reset),
        .scan_in(uut_scan_w),
        .grant_o(misr_grant_o_w),
        .signature(signature_w),
        .scan_out(misr_scan_w)
    );

    

endmodule