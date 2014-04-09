module NewModule (iRed, iGreen,iBlue,iCLK,iRESET,
			 oRed, oGreen,oBlue);
			 
			input [9:0] iRed, iGreen,iBlue;
			input iCLK,iRESET;
			output reg [9:0] oRed,oGreen,oBlue;
			
			always @(posedge iCLK)
				begin
					if(iRESET)
						begin
						oRed <=10'b0;
						oGreen <=10'b0;
						oBlue <=10'b0;
						
						end
					else
						begin
						oRed <=iRed;
						oGreen <=iGreen;
						oBlue <=iBlue;
						
						end
			 end		
endmodule