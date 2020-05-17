`timescale 1ns / 1ps

module misr_test_tb;
    integer start = 0;
    integer seed = 0;
    integer in_seed = 4'b0001;
    integer niter = 0;
    integer done = 0;
    integer signature_result = 0;
    wire [3:0] signature_out_w;
    wire [3:0] lfsr_out_w;
    reg reset;
    reg clock;
    reg [3:0] out_read;

    lfsr lfsr1(
        .clk(clock),
        .rst(reset),
        .seed(in_seed),
        .out(lfsr_out_w)
    );

    misr uut(
        .clk(clock),
        .rst(reset),
        .grant_o(lfsr_out_w),
        .signature(signature_out_w)
    );


    initial begin
        $dumpfile("misr_test.vcd");
        $dumpvars();
        clock = 0;
        reset = 0;
    end

    initial begin
        for(in_seed = 4'b0001; in_seed<=4'b1111; in_seed=in_seed+1) begin
            wait (!clock)
            #1;
            reset = 1;
            #3
            reset = 0;
            seed = lfsr_out_w;
            // $display("Initial seed: %d", in_seed);
            start = 1;
            wait (done == 1)
            // $display("End in %d iterations", niter);
            signature_result = signature_out_w;
            $display("Final misr signature for seed %d = %d", in_seed, signature_out_w);
            done = 0;
            niter = 0;
            
        end
        // $finish;
    end

    always @ (*) begin
        if(start) begin
            if(lfsr_out_w == in_seed && niter != 0) begin
                done = 1;
                start = 0;
            end
            else begin
                // $display("Current signature: %d" ,signature_out_w); only for debug
                niter++;  
            end
        end
    end

    initial begin
        #3000 $finish;
    end

    always
        #2  clock =  ! clock;

endmodule