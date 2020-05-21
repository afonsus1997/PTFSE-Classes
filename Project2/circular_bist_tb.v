`timescale 1ns / 1ps

module circular_bist;

//=====SET PARAM=====
`define getfaultcoverage
// `define getvalidsignature
// `define multiple_runs
// `define lfsr_check
// `define unique_sigs
// `define vectest
parameter NTESTRUNS = 5;
//=====END PARAM=====

    integer runs = 0;
    reg [3:0] in_seed = 4'b1111;
    reg clock;
    reg reset;

    wire bist_end_w;
    wire pass_fail_w;
    wire [15:0] signature_out_w;

    reg request_in_r0;
    reg request_in_r1;
    reg request_in_r2;
    reg request_in_r3;

    reg bist_start_r;
    wire [3:0] grant_o_r;

    `ifdef vectest
    integer index;
    reg [0:3] pattern_mem [0:9];
    assign {request_in_r0, request_in_r1, request_in_r2, request_in_r3} = pattern_mem[index];
    
    `endif

    top uut(
        .clock(clock),
        .reset(reset),
        .request1(request_in_r0),
        .request2(request_in_r1),
        .request3(request_in_r2),
        .request4(request_in_r3),
        // .lfsr_seed(in_seed),
        .grant_o(grant_o_r),
        .signature_out(signature_out_w),
        .bist_start(bist_start_r),
        .bist_end(bist_end_w),
        .pass_fail(pass_fail_w)
    );

    initial begin
        $dumpfile("circular_bist_test.vcd");
        $dumpvars();
        clock = 0;
        reset = 0;
        // request_in_r = 4'b1010;
        
    end

    initial begin
        //one normal run to get the signature
        `ifdef getfaultcoverage
        request_in_r0 = 0;
        request_in_r1 = 0;
        request_in_r2 = 0;
        request_in_r3 = 0;
        bist_start_r = 0;
        #10000
        reset = 1;
        #30000
        reset = 0;
        wait (!clock);
        bist_start_r = 1;
        #30000
        bist_start_r = 0;
        wait (bist_end_w);
        #10000
        $display("Output signature: %h" ,signature_out_w);
        $display("Pass/fail: %b" , pass_fail_w);
        #100000
        wait(!clock);
        // $finish;
        `endif


        //one normal run to get the signature
        `ifdef getvalidsignature
        #100;0
        reset = 1;
        #3000
        reset = 0;
        wait (!clock);
        bist_start_r = 1;
        #3000
        bist_start_r = 0;
        wait (bist_end_w);
        $display("Output signature: %h" ,signature_out_w);
        #10000
        wait(!clock);
        `endif

        // multiple consecutive runs
        `ifdef multiple_runs
        for(runs = 0; runs<=NTESTRUNS; runs=runs+1) begin
            #10000
            reset = 1;
            #30000
            reset = 0;
            wait (!clock);
            bist_start_r = 1;
            #30000
            bist_start_r = 0;
            wait (bist_end_w);
            $display("Output signature: %h" ,signature_out_w);
            #100000
            wait(!clock);
        end
        $finish;
        `endif


        `ifdef lfsr_check
        for(in_seed = 4'b0001; in_seed<=4'b1111; in_seed=in_seed+1) begin
            #10000
            reset = 1;
            #30000
            reset = 0;
            wait (!clock);
            bist_start_r = 1;
            #30000
            bist_start_r = 0;
            wait (bist_end_w);
            $display("Output signature: %h" ,signature_out_w);
            #100000
            wait(!clock);
        end
        $finish;
        `endif

        `ifdef vectest
        $readmemb("circuito06.vec", pattern_mem);
        for(index = 0; index<=9; index=index+1) begin
            #10000;
            reset = 1;
            #30000
            reset = 0;
            // #100000
            wait (grant_o_r != 0);
            $display("Current vector: %b" ,pattern_mem[index]);
            $display("Circuit output: %h" ,grant_o_r);
            wait(!clock);

        end
        $finish;
        `endif

        `ifdef unique_sigs
            #10000;
            reset = 1;
            #30000
            reset = 0;
            wait (!clock);
            bist_start_r = 1;
            #30000
            bist_start_r = 0;
            wait (bist_end_w);
            #100000
            wait(!clock);
        $finish;
        `endif

        // #1;
        // reset = 1;
        // #3
        // reset = 0;
        // wait (!clock);
        // bist_start_r = 1;
        // #3
        // bist_start_r = 0;
        // wait (bist_end_w);
        // $display("Output signature: %h" ,signature_out_w);
        $finish;


    end

    `ifdef unique_sigs
    integer done = 0;
    integer start=0;
    always @ (posedge clock) begin
        if(!bist_end_w)
        $display("Output signature: %h" ,signature_out_w);
    end
    `endif


    initial begin
        #100000000 $finish;
    end

    always
        #10000  clock =  ! clock;

endmodule