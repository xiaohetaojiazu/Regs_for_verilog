`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/31 18:15:20
// Design Name: 
// Module Name: RF_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RF_tb(

    );
    parameter ADDR=2;
    parameter NUM=0<<2;
    parameter SIZE=15;
    reg [ADDR:0] ra0,ra1,wa;
    reg [SIZE:0] wd;
    reg we,clk,clr;
    wire [SIZE:0] rd0,rd1;
    
    initial
        begin
            we=0;
            clk=0;
            clr=0;
            ra0=3'b010;
            ra1=3'b100;
            wa=3'b100;
            wd=31;
            #100 clr=1;
            #5 clr=0;
            #500 we=1;
            #5 we=0;
       end
       
    always #5 clk=~clk;
    
    lab_3_RF l3r1(
        .ra0(ra0),
        .ra1(ra1),
        .wa(wa),
        .wd(wd),
        .we(we),
        .clk(clk),
        .clr(clr),
        .rd0(rd0),
        .rd1(rd1)
        );
        
endmodule
