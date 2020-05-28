`timescale 1ns / 1ps

module misr_test_tb;
    integer start = 0;
    integer seed = 0;
    integer niter = 0;
    integer done = 0;
    wire [7:0] signature_out_w;
    reg reset;
    reg clock;

    misr uut(
        .clk(clock),
        .rst(reset),
        .grant_o(0),
        .scan_in(0),
        .signature(signature_out_w),
        .finish(0)
    );


    initial begin
        $dumpfile("misr_test.vcd");
        $dumpvars();
        clock = 0;
        reset = 0;
    end

    initial begin
        #1;
        reset = 1;
        #3
        reset = 0;
        seed = signature_out_w;
        $display("Initial signature: %d" , seed);
        start = 1;
        wait (done)
        $display("End in %d iterations" ,niter);
        $display("Should be 2^8-1 = %d" ,2**8-1);
    end

    always @ (posedge clock) begin
        if(start) begin
            if(signature_out_w == seed && niter != 0) begin
                done = 1;
                start = 0;
            end
            else begin
                $display("MISR output: %d" ,signature_out_w);
                niter++;  
            end
        end
    end

    initial begin
        #100000 $finish;
    end

    always
        #2  clock =  ! clock;

endmodule