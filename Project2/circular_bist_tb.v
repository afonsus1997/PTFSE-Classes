`timescale 1ns / 1ps

module circular_bist;

//=====SET PARAM=====
`define getvalidsignature


//=====END PARAM=====


    reg clock;
    reg reset;

    wire bist_end_w;
    wire pass_fail_w;

    reg [3:0] request_in_r;
    reg bist_start_r;

    top uut(
        .clock(clock),
        .reset(reset),
        .request1(request_in_r[0]),
        .request2(request_in_r[1]),
        .request3(request_in_r[2]),
        .request4(request_in_r[3]),
        // .grant_o(grant_o),

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
        #1;
        reset = 1;
        #3
        reset = 0;
        wait (!clock);
        bist_start_r = 1;
        #3
        bist_start_r = 0;
        wait (bist_end_w);
    end


    initial begin
        #10000 $finish;
    end

    always
        #2  clock =  ! clock;

endmodule