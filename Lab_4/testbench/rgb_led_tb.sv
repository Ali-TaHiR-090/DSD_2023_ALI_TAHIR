`timescale 1ns / 1ps

module rgb_module;

    logic a0, a1, b0, b1;
    logic rgb_led_r, rgb_led_g, rgb_led_b;

    rgb_module_code uut (
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .rgb_led_r(rgb_led_r),
        .rgb_led_g(rgb_led_g),
        .rgb_led_b(rgb_led_b)
    );

    // Test all possible input combinations
    initial begin
        // Print the header of the truth table
        $display("| a0 | a1 | b0 | b1 | rgb_led_r | rgb_led_g | rgb_led_b |");
        $display("|----|----|----|----|-----------|-----------|-----------|");

        // Iterate through all possible input combinations
        for (int i = 0; i < 16; i = i + 1) begin
            {a0, a1, b0, b1} = i;  // Assign binary values to inputs
            #10;  // Wait for a small delay to allow the output to stabilize
            $display("| %b  | %b  | %b  | %b  |     %b     |     %b     |     %b     |", a0, a1, b0, b1, rgb_led_r, rgb_led_g, rgb_led_b);
        end

        // End the simulation
        $finish;
    end

endmodule
