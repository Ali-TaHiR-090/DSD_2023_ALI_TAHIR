`timescale 1ns / 1ps

module multi_seven_seg_display_tb;
    
    logic clk;
    logic rst;
    logic write;
    logic [2:0] sel;
    logic [3:0] num;
    logic [6:0] seg_out;
    logic [7:0] an;
    logic [2:0] rand_num [7:0];

    // Instantiate the DUT (Device Under Test)
    multi_seven_seg_display dut (
        .clk(clk),
        .rst(rst),
        .write(write),
        .sel(sel),
        .num(num),
        .seg_out(seg_out),
        .an(an)
    );
    
    always #5 clk = ~clk; // 5ns half-period
    
    initial begin
        clk = 0;
        rst = 1;
        write = 0;
        sel = 0;
        num = 0;

        #20000000 rst = 0; // Release reset after 20ms

        // Loop over all sel inputs
        for (int i = 0; i < 8; i++) begin
            sel = i[2:0]; // Set sel to current index
            rand_num[i] = $urandom_range(0, 7); // Generate a random 4-bit value
            $display("sel = %b, num = %b", sel, rand_num[i]);
            num = rand_num[i]; // Set num to random value
            write = 1;
            repeat (2) #1250000;  // Wait for one clock cycle
            write = 0;

            // Wait for the value to propagate and verify
            repeat (8) #1250000;
        end

        rst = 1; // Reset the module
        #1250000;
        rst = 0;
        repeat (10) #1250000;
        $stop;
    end

    
endmodule
