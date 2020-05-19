`timescale 1ns / 1ps

module circular_bist;

//=====SET PARAM=====
// `define getvalidsignature
// `define multiple_runs
`define lfsr_check
parameter NTESTRUNS = 5;
//=====END PARAM=====

    integer runs = 0;
    reg [4:0] in_seed = 4'b1111;
    reg clock;
    reg reset;

    wire bist_end_w;
    wire pass_fail_w;
    wire [7:0] signature_out_w;

    reg [3:0] request_in_r;
    reg bist_start_r;

    top uut(
        .clock(clock),
        .reset(reset),
        .request1(request_in_r[0]),
        .request2(request_in_r[1]),
        .request3(request_in_r[2]),
        .request4(request_in_r[3]),
        .lfsr_seed(in_seed),
        // .grant_o(grant_o),
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
        request_in_r = 4'b1010;
        
    end

    initial begin
        //one normal run to get the signature
        `ifdef getvalidsignature
        #1;
        reset = 1;
        #3
        reset = 0;
        wait (!clock);
        bist_start_r = 1;
        #3
        bist_start_r = 0;
        wait (bist_end_w);
        $display("Output signature: %h" ,signature_out_w);
        #10
        wait(!clock);
        `endif

        // multiple consecutive runs
        `ifdef multiple_runs
        for(runs = 0; runs<=NTESTRUNS; runs=runs+1) begin
            #1;
            reset = 1;
            #3
            reset = 0;
            wait (!clock);
            bist_start_r = 1;
            #3
            bist_start_r = 0;
            wait (bist_end_w);
            $display("Output signature: %h" ,signature_out_w);
            #10
            wait(!clock);
        end
        $finish;
        `endif


        `ifdef lfsr_check
        for(in_seed = 4'b0001; in_seed<=4'b1111; in_seed=in_seed+1) begin
            #1;
            reset = 1;
            #3
            reset = 0;
            wait (!clock);
            bist_start_r = 1;
            #3
            bist_start_r = 0;
            wait (bist_end_w);
            $display("Output signature: %h" ,signature_out_w);
            #10
            wait(!clock);
        end
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


    initial begin
        #10000000 $finish;
    end

    always
        #2  clock =  ! clock;

endmodule