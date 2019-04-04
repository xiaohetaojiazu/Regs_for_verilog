`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/31 17:49:02
// Design Name: 
// Module Name: lab_3_RF
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


module lab_3_RF(
    input [ADDR:0] ra0,
    input [ADDR:0] ra1,
    input [ADDR:0] wa,
    input [SIZE:0] wd,
    input we,
    input clk,
    input clr,
    output [SIZE:0] rd0,
    output [SIZE:0] rd1
    );
    parameter SIZE=3;
    parameter ADDR=2;
    parameter NUM=8;
    integer i;
    reg [SIZE:0] REG_Files [NUM-1:0];
    
    always @(posedge clk or posedge clr)
        begin
            if(clr)
                for (i=0;i<NUM;i=i+1)
                    REG_Files[i]<=0;
            else
                if(we)
                    REG_Files[wa]<=wd;
        end
        
     assign rd0=REG_Files[ra0];
     assign rd1=REG_Files[ra1];
  
endmodule
