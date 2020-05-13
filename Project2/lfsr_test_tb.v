`timescale 1ns / 1ps

module controller_tb;
    integer start = 0;
    integer seed = 0;
    integer niter = 0;
    integer done = 0;
    wire [3:0] lfsr_out_w;
    reg reset;
    reg clock;
    reg [3:0] out_read;

    lfsr uut(
        .clk(clock),
        .rst(reset),
        .out(lfsr_out_w)
    );


    initial begin
        $dumpfile("lsfr_test.vcd");
        $dumpvars();
        clock = 0;
        reset = 0;
        
    end

    initial begin
        #1;
        reset = 1;
        #3
        reset = 0;
        seed = lfsr_out_w;
        $display("Initial seed: %d" , seed);
        start = 1;
        wait (done == 1)
        $display("End in %d iterations" ,niter);
        
    end

    always @ (posedge clock) begin
        if(start) begin
            if(lfsr_out_w == seed && niter != 0) begin
                done = 1;
                start = 0;
            end
            else begin
                $display("LFSR output: %d" ,lfsr_out_w);
                niter++;  
            end
                
        end

    end

    initial begin
        #100 $finish;
    end

    always
        #2  clock =  ! clock;

endmodule