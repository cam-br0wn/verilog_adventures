module cb_not (x, z);

    input x;
    output wire z;
    
    supply0 gnd;
    supply1 pwr;

    pmos (z, pwr, x);
    nmos (z, gnd, x);

endmodule