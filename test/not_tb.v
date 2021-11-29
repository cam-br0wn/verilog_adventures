module not_tb;
    reg a;
    wire c;
    
    cb_not nand_(.x(a), .z(c));

    initial begin
        a <= 0;

        #10 a <= 1;
        #10 a <= 0;
        #10;

    end
endmodule