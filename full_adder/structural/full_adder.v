module half_adder (
    input a,b,
    output sum, carry
    );
    assign sum = a&b;
    assign carry = a^b;
endmodule

module FA_1bit(
    input a,b,cin,
    output sum, carry
    );
    wire s1,c1, c2; //Intermediate vires for half adder outputs
    half_adder HA1 (a,b,s1,c1); //Instantiate the first half adder
    half_adder HA2(s1,cin, sum,c2); //Instantiate the second half adder
    or o1 (carry,c1,c2); //assign carry= c1 | c2;
endmodule