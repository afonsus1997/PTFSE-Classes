`timescale 1ns / 1ps

module controller_tb;

    reg CLK;
    reg START;
    reg RESET;
    wire INIT, RUNNING, TOGGLE, FINISH, BIST_END;

    controller uut(
        .clk(CLK),
        .reset(RESET),
        .start(START),
        .init(INIT),
        .running(RUNNING),
        .toggle(TOGGLE),
        .finish(FINISH),
        .bist_end(BIST_END)
    );                 
    
    initial
    begin
    	$dumpfile("dump.vcd");
        $dumpvars();
        
        CLK = 0;
    	START = 0;
    	RESET = 0;
    end           
    initial begin
        #3 RESET = 1;
        #3 RESET = 0;     
    
        
        #3 START = 1;
        #3 START = 0;
        #100
        #3 START = 1;
        #3 START = 0;
    end
    initial begin
        #300 $finish;
    end

    always 
    #5  CLK =  ! CLK;

endmodule
