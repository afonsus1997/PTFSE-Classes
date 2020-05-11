module misr(
    // inputs relevant to the given circuit for the misr
    input[3:0] grant_o;
    
    // outputs relevant to the misr
    output[3:0] misr_grant_o;
    
);

    assign misr_grant_o = grant_o;

endmodule