module half_adder (
    input a, b,
    output sum, carry
    );

    // Gate-level modeling using primitives
    xor G1 (sum, a, b);   // XOR gate for Sum
    and G2 (carry, a, b); // AND gate for Carry

endmodule