

module lfsr(
    // inputs relevant to the given circuit for the lfsr
    input request1; 
    input request2; 
    input request3; 
    input request4; 
    
    // outputs relevant to the lfsr
    output lfsr_request1;
    output lfsr_request2;
    output lfsr_request3;
    output lfsr_request4;
    
);

    assign lfsr_request1 = request1;
    assign lfsr_request2 = request2;
    assign lfsr_request3 = request3;
    assign lfsr_request4 = request4;

endmodule