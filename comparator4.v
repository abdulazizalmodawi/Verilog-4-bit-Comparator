
module comparator4 (
    input wire [3:0] a,
    input wire [3:0] b,
    output wire greater,
    output wire equal,
    output wire less
);

    assign greater = (a > b);
    assign equal   = (a == b);
    assign less    = (a < b);

endmodule
