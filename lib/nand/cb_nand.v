module cb_nand (x, y, z);

    input x, y;
    output wire z;

    supply0 gnd;
    supply1 pwr;

    wire w_;

    // PMOS parallel layer 
    pmos (z, pwr, x);
    pmos (z, pwr, y);

    // NMOS series layer
    nmos (z, w_, x);
    nmos (w_, gnd, y);

endmodule