
`timescale 1ns / 1ps

//===========SET TEST==========
// `define normal
// `define consequent_test
// `define consequent_test_reset
// `define mid_start
`define start_reset
// `define mid_reset

//==========SET NCLOCK========
`define reportval
// `define testval

module controller_tb;

    reg CLK;
    reg START;
    reg RESET;
    wire INIT, RUNNING, TOGGLE, FINISH, BIST_END;
    integer pulsecount = 0;
    integer runningcount = 0;

    parameter NCLOCK = 650; //650 for group 2

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
    	$dumpfile("controller_test.vcd");
        $dumpvars();
        
        CLK = 0;
    	START = 0;
    	RESET = 0;
    end

    always @ (posedge TOGGLE) begin
        pulsecount = pulsecount +1; 
    end

    always @ (posedge CLK) begin
        if(RUNNING)
            runningcount = runningcount + 1;
    end

    initial begin
        //first start

        `ifdef normal
        wait(!CLK);
        #1 RESET = 1;
        #5 RESET = 0;   
        wait(!CLK);  
        #1 START = 1;
        #5 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        $display("Number of pulses: %d pulses." ,pulsecount);
        $display("Time of running: %d clock pulses",runningcount-1); //-1 because the first rising edge of the clock doesent count
        pulsecount = 0;
        runningcount = 0;
        //======Normal test========
        `endif
        
        
        //first start
        `ifdef consequent_test
        #13 RESET = 1;
        #13 RESET = 0;     
        #13 START = 1;
        #13 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        //second normal start
        #13 START = 1;
        #13 START = 0;
        #120
        //======consequent running proof========
        `endif

        //first start
        `ifdef consequent_test_reset
        #13 RESET = 1;
        #13 RESET = 0;     
        #13 START = 1;
        #13 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        wait(!CLK);
        #13 RESET = 1;
        #13 RESET = 0; 
        #5
        //second normal start
        #13 START = 1;
        #13 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        //======consequent running with reset proof========
        `endif
        `endif
        

        `ifdef mid_start
        #13 RESET = 1;
        #13 RESET = 0;     
        #13 START = 1;
        #13 START = 0;
        #30
        //second normal start
        #13 START = 1;
        #13 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        //======mid start proof========
        `endif

        `ifdef start_reset
        #13 RESET = 1;
        #13 RESET = 0;     
        #13 START = 1;
        #13 START = 0;
        #115
        #13 RESET = 1;
        #13 START = 1;
        #13 RESET = 0;
        #13 START = 0;
        #13 START = 1;
        #13 START = 0; 
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        //======start and reset HIGH test========
        `endif

        `ifdef mid_reset
        #13 RESET = 1;
        #13 RESET = 0;     
        #13 START = 1;
        #13 START = 0;
        #50
        RESET = 1;
        #13
        RESET = 0;
        #13
        //second normal start
        #13 START = 1;
        #13 START = 0;
        `ifdef reportval
        #7000
        `endif
        `ifdef testval
        #125
        `endif
        //======mid start proof========
        `endif

    #1000 $finish;

    end

    always
        #5  CLK =  ! CLK;


    


endmodule
