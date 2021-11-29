module nand_tb;
    reg a, b;
    wire c;
    
    cb_nand nand_(.x(a), .y(b), .z(c));

    initial begin
        {a, b} <= 0;

        #10 a <= 1;
        #10 b <= 1;
            a <= 0;
        #10 a <= 1;
        #10;

    end
endmodule