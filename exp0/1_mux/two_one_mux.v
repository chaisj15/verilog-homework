module two_one_mux(y, a, b, s);

output y;
input a, b, s;

wire nots;
wire choose_a, choose_b;

not #(1) (nots, s);
and #(1) (choose_a, nots, a);
and #(1) (choose_b, s, b);

or #(1) (y, choose_a, choose_b);

endmodule
