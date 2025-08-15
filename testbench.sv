`timescale 1ns/1ps

module testbench;

    reg clk, rst;             // Inputs to DUT
    wire main_road, side_road; // Outputs from DUT

    // Instantiate the traffic_light module
    traffic_light uut (
        .clk(clk),
        .rst(rst),
        .main_road(main_road),
        .side_road(side_road)
    );

    // Clock generation: 10 ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test scenario
    initial begin
        rst = 1;           // Apply reset
        #10 rst = 0;       // Release reset

        // Let simulation run for 100 ns
        #100;

        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | main_road=%b | side_road=%b | clk=%b | rst=%b",
                 $time, main_road, side_road, clk, rst);
    end

endmodule
