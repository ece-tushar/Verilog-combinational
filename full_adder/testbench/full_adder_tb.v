module Full_Adder_tb;
    reg a, b, cin;
    wire sum, carry;

    // Instantiate the DUT (Device Under Test)
    FA_1bit dut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

    initial begin
        // Apply test vectors
        a = 0; b = 0; cin=0; #10;
        a = 0; b = 0; cin=1; #10;
        a = 0; b = 1; cin=0; #10;
        a = 0; b = 1; cin=1; #10;
        a = 1; b = 0; cin=0; #10;
        a = 1; b = 0; cin=1; #10;
        a = 1; b = 1; cin=0; #10;
        a = 1; b = 1; cin=1; #10;
        $finish;
    end
    
endmodule