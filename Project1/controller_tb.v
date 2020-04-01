
`timescale 1ns / 1ps

//===========SET TEST==========
// `define consequent_test
// `define mid_start
// `define start_reset
`define mid_reset

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
        //first start
        `ifdef consequent_test
        #3 RESET = 1;
        #3 RESET = 0;     
        #3 START = 1;
        #3 START = 0;
        #100
        //second normal start
        #3 START = 1;
        #3 START = 0;
        //======consequent running proof========
        `endif
        

        `ifdef mid_start
        #3 RESET = 1;
        #3 RESET = 0;     
        #3 START = 1;
        #3 START = 0;
        #30
        //second normal start
        #3 START = 1;
        #3 START = 0;
        //======mid start proof========
        `endif

        `ifdef start_reset
        #3 RESET = 1;
        #3 RESET = 0;     
        #3 START = 1;
        #3 START = 0;
        #100
        #3 RESET = 1;
        #3 START = 1;
        #3 RESET = 0;
        #3 START = 0;
        #3 START = 1;
        #3 START = 0;
        //======start and reset HIGH test========
        `endif

        `ifdef mid_reset
        #3 RESET = 1;
        #3 RESET = 0;     
        #3 START = 1;
        #3 START = 0;
        #10
        RESET = 1;
        #3
        RESET = 0;
        #15
        //second normal start
        #3 START = 1;
        #3 START = 0;
        //======mid start proof========
        `endif

    end
    initial begin
        #300 $finish;
    end

    always 
    #5  CLK =  ! CLK;

endmodule
