module BCD_to_7Segment (BCD,a,b,c,d,e,f,g,error);
  input [3:0] BCD;    
  output reg a, b, c, d, e, f, g;
  output reg error=1'b0; 

  always @(BCD)
      begin
        case (BCD)
            4'b0000: {a, b, c, d, e, f, g} = 7'b1111110;  
            4'b0001: {a, b, c, d, e, f, g} = 7'b0110000;  
            4'b0010: {a, b, c, d, e, f, g} = 7'b1101101;  
            4'b0011: {a, b, c, d, e, f, g} = 7'b1111001;  
            4'b0100: {a, b, c, d, e, f, g} = 7'b0110011;  
            4'b0101: {a, b, c, d, e, f, g} = 7'b1011011;  
            4'b0110: {a, b, c, d, e, f, g} = 7'b1011111;  
            4'b0111: {a, b, c, d, e, f, g} = 7'b1110000;  
            4'b1000: {a, b, c, d, e, f, g} = 7'b1111111;  
            4'b1001: {a, b, c, d, e, f, g} = 7'b1111011;  
            default:
        begin
                {a, b, c, d, e, f, g} = 7'b0000000;
                error = 1;
        end
        endcase
    end
endmodule
