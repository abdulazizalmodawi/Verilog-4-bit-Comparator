
module comparator4_tb;

    reg [3:0] a;
    reg [3:0] b;

    wire greater;
    wire equal;
    wire less;

    integer i;
    integer j;
    integer passed;
    integer failed;

    comparator4 dut (
        .a(a),
        .b(b),
        .greater(greater),
        .equal(equal),
        .less(less)
    );

    initial begin
        a = 4'b0000;
        b = 4'b0000;

        passed = 0;
        failed = 0;

        $display("===============================");
        $display(" 4-BIT COMPARATOR VERIFICATION");
        $display("===============================");

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin

                a = i;
                b = j;

                #10;

                if (
                    (greater === (a > b)) &&
                    (equal === (a == b)) &&
                    (less === (a < b)) &&
                    ((greater + equal + less) == 1)
                ) begin
                    passed = passed + 1;
                end else begin
                    failed = failed + 1;

                    $display(
                        "FAIL: A=%d B=%d G=%b E=%b L=%b",
                        a, b, greater, equal, less
                    );
                end
            end
        end

        $display("-------------------------------");
        $display("Passed: %0d", passed);
        $display("Failed: %0d", failed);

        if (passed == 256 && failed == 0)
            $display("ALL 256 COMPARATOR CHECKS PASSED");
        else
            $fatal(1, "COMPARATOR VERIFICATION FAILED");

        $finish;
    end

endmodule
