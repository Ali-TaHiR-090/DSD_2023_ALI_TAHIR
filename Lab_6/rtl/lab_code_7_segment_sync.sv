module d_ff(
    input logic clk, rst, enable,
    input logic [3:0] d,
    output logic [3:0] q
);

    always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            q <= 4'b0000;
        else if (enable)
            q <= d;
    end
    
endmodule


module multi_seven_seg_display (
    input logic clk,           
    input logic rst,           
    input logic write,         
    input logic [2:0] sel,     
    input logic [3:0] num,     
    output logic [6:0] seg_out, 
    output logic [7:0] an       
);

logic [2:0] mux_select;
logic [3:0] display_decode_input;
logic [2:0] anode_select;
logic clk_800Hz;    
logic [2:0] counter;
logic [3:0] d_ff_q [7:0];
logic d_ff_we [7:0];




d_ff d_ff_inst[7:0] (
    .clk(clk_800Hz),
    .rst(rst),
    .enable(d_ff_we),
    .d(num),
    .q(d_ff_q)
);

logic [15:0] clk_count;

initial begin
    clk_count = 0;
    clk_800Hz = 0;
    counter = 0;
end

always @(posedge clk) begin
    if (clk_count == 62500) begin
        clk_800Hz <= ~clk_800Hz;
        clk_count <= 0;     
    end else begin
        clk_count <= clk_count + 1; 
    end
end  

always @(posedge clk_800Hz) begin
    counter <= counter + 1;
end

always_comb begin
    if (write) begin
        anode_select = sel;
        mux_select = sel;
    end else begin
        anode_select = counter;
        mux_select = counter;
    end
end

always_comb begin
    int i;
    for (i=0; i < 8; i = i + 1)
        d_ff_we[i] <= ~an[i] & write;
end

always_comb begin
    case (display_decode_input)
        4'b0000: seg_out = 7'b0000001; 
        4'b0001: seg_out = 7'b1001111; 
        4'b0010: seg_out = 7'b0010010; 
        4'b0011: seg_out = 7'b0000110; 
        4'b0100: seg_out = 7'b1001100; 
        4'b0101: seg_out = 7'b0100100; 
        4'b0110: seg_out = 7'b0100000; 
        4'b0111: seg_out = 7'b0001111; 
        4'b1000: seg_out = 7'b0000000; 
        4'b1001: seg_out = 7'b0000100; 
        4'b1010: seg_out = 7'b0001000; 
        4'b1011: seg_out = 7'b1100000; 
        4'b1100: seg_out = 7'b0110001; 
        4'b1101: seg_out = 7'b1000010; 
        4'b1110: seg_out = 7'b0110000; 
        4'b1111: seg_out = 7'b0111000; 
        default: seg_out = 7'b1111111; 
    endcase
    //{segA, segB, segC, segD, segE, segF, segG} = seg_out;
end

always_comb begin
    case (anode_select)
        3'b000: an = 8'b1111_1110;
        3'b001: an = 8'b1111_1101;
        3'b010: an = 8'b1111_1011;
        3'b011: an = 8'b1111_0111;
        3'b100: an = 8'b1110_1111;
        3'b101: an = 8'b1101_1111;
        3'b110: an = 8'b1011_1111;
        3'b111: an = 8'b0111_1111;
        default: an = 8'b1111_1111;
endcase
end

always_comb begin
    case (mux_select)
        3'b000: display_decode_input = d_ff_q[0];
        3'b001: display_decode_input = d_ff_q[1];
        3'b010: display_decode_input = d_ff_q[2];
        3'b011: display_decode_input = d_ff_q[3];
        3'b100: display_decode_input = d_ff_q[4];
        3'b101: display_decode_input = d_ff_q[5];
        3'b110: display_decode_input = d_ff_q[6];
        3'b111: display_decode_input = d_ff_q[7];
        default: display_decode_input = 4'b0000;
endcase
end


endmodule
