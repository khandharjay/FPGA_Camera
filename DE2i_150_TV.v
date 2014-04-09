// ============================================================================
// Copyright (c) 2012 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//
// Major Functions:	DE2i_150_TV
//
// ============================================================================
// Revision History :
// ============================================================================
//   Ver  :| Author              :| Mod. Date  :| Changes Made:
//   V1.0 :| Dee Zeng            :| 2012/07/09 :| Initial Revision
// ============================================================================


module DE2i_150_TV(

							///////////CLOCK2/////////////
							CLOCK2_50,

							/////////CLOCK3/////////
							CLOCK3_50,

							/////////CLOCK/////////
							CLOCK_50,

							/////////DRAM/////////
							DRAM_ADDR,
							DRAM_BA,
							DRAM_CAS_N,
							DRAM_CKE,
							DRAM_CLK,
							DRAM_CS_N,
							DRAM_DQ,
							DRAM_DQM,
							DRAM_RAS_N,
							DRAM_WE_N,

							/////////EEP/////////
							EEP_I2C_SCLK,
							EEP_I2C_SDAT,

							/////////ENET/////////
							ENET_GTX_CLK,
							ENET_INT_N,
							ENET_LINK100,
							ENET_MDC,
							ENET_MDIO,
							ENET_RST_N,
							ENET_RX_CLK,
							ENET_RX_COL,
							ENET_RX_CRS,
							ENET_RX_DATA,
							ENET_RX_DV,
							ENET_RX_ER,
							ENET_TX_CLK,
							ENET_TX_DATA,
							ENET_TX_EN,
							ENET_TX_ER,

							/////////FAN/////////
							FAN_CTRL,

							/////////FL/////////
							FL_CE_N,
							FL_OE_N,
							FL_RY,
							FL_WE_N,
							FL_WP_N,
							FL_RESET_N,
							/////////FS/////////
							FS_DQ,
							FS_ADDR,
							/////////GPIO/////////
							GPIO,

							/////////G/////////
							G_SENSOR_INT1,
							G_SENSOR_SCLK,
							G_SENSOR_SDAT,

							/////////HEX0/////////
							HEX0,

							/////////HEX1/////////
							HEX1,

							/////////HEX2/////////
							HEX2,

							/////////HEX3/////////
							HEX3,

							/////////HEX4/////////
							HEX4,

							/////////HEX5/////////
							HEX5,

							/////////HEX6/////////
							HEX6,

							/////////HEX7/////////
							HEX7,

							/////////HSMC/////////
							HSMC_CLKIN0,
							HSMC_CLKIN_N1,
							HSMC_CLKIN_N2,
							HSMC_CLKIN_P1,
							HSMC_CLKIN_P2,
							HSMC_CLKOUT0,
							HSMC_CLKOUT_N1,
							HSMC_CLKOUT_N2,
							HSMC_CLKOUT_P1,
							HSMC_CLKOUT_P2,
							HSMC_D,
							HSMC_I2C_SCLK,
							HSMC_I2C_SDAT,
							HSMC_RX_D_N,
							HSMC_RX_D_P,
							HSMC_TX_D_N,
							HSMC_TX_D_P,

							/////////I2C/////////
							I2C_SCLK,
							I2C_SDAT,

							/////////IRDA/////////
							IRDA_RXD,

							/////////KEY/////////
							KEY,

							/////////LCD/////////
							LCD_DATA,
							LCD_EN,
							LCD_ON,
							LCD_RS,
							LCD_RW,

							/////////LEDG/////////
							LEDG,

							/////////LEDR/////////
							LEDR,

							/////////PCIE/////////
//							PCIE_PERST_N,
//							PCIE_REFCLK_P,
//							PCIE_RX_P,
//							PCIE_TX_P,
//							PCIE_WAKE_N,

							/////////SD/////////
							SD_CLK,
							SD_CMD,
							SD_DAT,
							SD_WP_N,

							/////////SMA/////////
							SMA_CLKIN,
							SMA_CLKOUT,

							/////////SSRAM/////////
							SSRAM_ADSC_N,
							SSRAM_ADSP_N,
							SSRAM_ADV_N,
							SSRAM_BE,
							SSRAM_CLK,
							SSRAM_GW_N,
							SSRAM_OE_N,
							SSRAM_WE_N,
							SSRAM0_CE_N,
							SSRAM1_CE_N,							
							/////////SW/////////
							SW,

							/////////TD/////////
							TD_CLK27,
							TD_DATA,
							TD_HS,
							TD_RESET_N,
							TD_VS,

							/////////UART/////////
							UART_CTS,
							UART_RTS,
							UART_RXD,
							UART_TXD,

							/////////VGA/////////
							VGA_B,
							VGA_BLANK_N,
							VGA_CLK,
							VGA_G,
							VGA_HS,
							VGA_R,
							VGA_SYNC_N,
							VGA_VS,
);

//=======================================================
//  PORT declarations
//=======================================================

							///////////CLOCK2/////////////

input                                              CLOCK2_50;

///////// CLOCK3 /////////
input                                              CLOCK3_50;

///////// CLOCK /////////
input                                              CLOCK_50;

///////// DRAM /////////
output                        [12:0]               DRAM_ADDR;
output                        [1:0]                DRAM_BA;
output                                             DRAM_CAS_N;
output                                             DRAM_CKE;
output                                             DRAM_CLK;
output                                             DRAM_CS_N;
inout                         [31:0]               DRAM_DQ;
output                        [3:0]                DRAM_DQM;
output                                             DRAM_RAS_N;
output                                             DRAM_WE_N;

///////// EEP /////////
output                                             EEP_I2C_SCLK;
inout                                              EEP_I2C_SDAT;

///////// ENET /////////
output                                             ENET_GTX_CLK;
input                                              ENET_INT_N;
input                                              ENET_LINK100;
output                                             ENET_MDC;
inout                                              ENET_MDIO;
output                                             ENET_RST_N;
input                                              ENET_RX_CLK;
input                                              ENET_RX_COL;
input                                              ENET_RX_CRS;
input                         [3:0]                ENET_RX_DATA;
input                                              ENET_RX_DV;
input                                              ENET_RX_ER;
input                                              ENET_TX_CLK;
output                        [3:0]                ENET_TX_DATA;
output                                             ENET_TX_EN;
output                                             ENET_TX_ER;

///////// FAN /////////
inout                                              FAN_CTRL;

///////// FL /////////
output                                             FL_CE_N;
output                                             FL_OE_N;
input                                              FL_RY;
output                                             FL_WE_N;
output                                             FL_WP_N;
output                                             FL_RESET_N;
///////// FS /////////
inout                         [31:0]               FS_DQ;
output                        [26:1]               FS_ADDR;
///////// GPIO /////////
inout                         [35:0]               GPIO;

///////// G /////////
input                                              G_SENSOR_INT1;
output                                             G_SENSOR_SCLK;
inout                                              G_SENSOR_SDAT;

///////// HEX0 /////////
output                        [6:0]                HEX0;

///////// HEX1 /////////
output                        [6:0]                HEX1;

///////// HEX2 /////////
output                        [6:0]                HEX2;

///////// HEX3 /////////
output                        [6:0]                HEX3;

///////// HEX4 /////////
output                        [6:0]                HEX4;

///////// HEX5 /////////
output                        [6:0]                HEX5;

///////// HEX6 /////////
output                        [6:0]                HEX6;

///////// HEX7 /////////
output                        [6:0]                HEX7;

///////// HSMC /////////
input                                              HSMC_CLKIN0;
input                                              HSMC_CLKIN_N1;
input                                              HSMC_CLKIN_N2;
input                                              HSMC_CLKIN_P1;
input                                              HSMC_CLKIN_P2;
output                                             HSMC_CLKOUT0;
inout                                              HSMC_CLKOUT_N1;
inout                                              HSMC_CLKOUT_N2;
inout                                              HSMC_CLKOUT_P1;
inout                                              HSMC_CLKOUT_P2;
inout                         [3:0]                HSMC_D;
output                                             HSMC_I2C_SCLK;
inout                                              HSMC_I2C_SDAT;
inout                         [16:0]               HSMC_RX_D_N;
inout                         [16:0]               HSMC_RX_D_P;
inout                         [16:0]               HSMC_TX_D_N;
inout                         [16:0]               HSMC_TX_D_P;

///////// I2C /////////
output                                             I2C_SCLK;
inout                                              I2C_SDAT;

///////// IRDA /////////
input                                              IRDA_RXD;

///////// KEY /////////
input                         [3:0]                KEY;

///////// LCD /////////
inout                         [7:0]                LCD_DATA;
output                                             LCD_EN;
output                                             LCD_ON;
output                                             LCD_RS;
output                                             LCD_RW;

///////// LEDG /////////
output                        [8:0]                LEDG;

///////// LEDR /////////
output                        [17:0]               LEDR;

///////// PCIE /////////
//input                                              PCIE_PERST_N;
//input                                              PCIE_REFCLK_P;
//input                         [1:0]                PCIE_RX_P;
//output                        [1:0]                PCIE_TX_P;
//output                                             PCIE_WAKE_N;

///////// SD /////////
output                                             SD_CLK;
inout                                              SD_CMD;
inout                         [3:0]                SD_DAT;
input                                              SD_WP_N;

///////// SMA /////////
input                                              SMA_CLKIN;
output                                             SMA_CLKOUT;

///////// SSRAM /////////
output                                             SSRAM_ADSC_N;
output                                             SSRAM_ADSP_N;
output                                             SSRAM_ADV_N;
inout                         [3:0]                SSRAM_BE;
output                                             SSRAM_CLK;
output                                             SSRAM_GW_N;
output                                             SSRAM_OE_N;
output                                             SSRAM_WE_N;
output                                             SSRAM0_CE_N;
output                                             SSRAM1_CE_N;

///////// SW /////////
input                         [17:0]               SW;

///////// TD /////////
input                                              TD_CLK27;
input                         [7:0]                TD_DATA;
input                                              TD_HS;
output                                             TD_RESET_N;
input                                              TD_VS;

///////// UART /////////
input                                             UART_CTS;
output                                              UART_RTS;
input                                              UART_RXD;
output                                             UART_TXD;

///////// VGA /////////
output                        [7:0]                VGA_B;
output                                             VGA_BLANK_N;
output                                             VGA_CLK;
output                        [7:0]                VGA_G;
output                                             VGA_HS;
output                        [7:0]                VGA_R;
output                                             VGA_SYNC_N;
output                                             VGA_VS;


//	For ITU-R 656 Decoder
wire	[15:0]	YCbCr;
wire	[9:0]	TV_X;
wire			TV_DVAL;

//	For VGA Controller
wire	[9:0]	mRed;
wire	[9:0]	mGreen;
wire	[9:0]	mBlue;
wire	[10:0]	VGA_X;
wire	[10:0]	VGA_Y;
wire			VGA_Read;	//	VGA data request
wire			m1VGA_Read;	//	Read odd field
wire			m2VGA_Read;	//	Read even field

//	For YUV 4:2:2 to YUV 4:4:4
wire	[7:0]	mY;
wire	[7:0]	mCb;
wire	[7:0]	mCr;

//	For field select
wire	[15:0]	mYCbCr;
wire	[15:0]	mYCbCr_d;
wire	[15:0]	m1YCbCr;
wire	[15:0]	m2YCbCr;
wire	[15:0]	m3YCbCr;

//	For Delay Timer
wire			TD_Stable;
wire			DLY0;
wire			DLY1;
wire			DLY2;

//	For Down Sample
wire	[3:0]	Remain;
wire	[9:0]	Quotient;

wire			mDVAL;

wire	[15:0]	m4YCbCr;
wire	[15:0]	m5YCbCr;
wire	[8:0]	Tmp1,Tmp2;
wire	[7:0]	Tmp3,Tmp4;

wire            NTSC;
wire            PAL;

//=============================================================================
// Structural coding
//=============================================================================

assign  FAN_CTRL = 1'bz;

//	Flash
assign	FL_RESET_N	=	1'b1;

//	16*2 LCD Module
assign	LCD_ON		=	1'b1;	//	LCD ON

//	All inout port turn to tri-state
assign	SD_DAT		=	4'bzzzz;

//	Enable TV Decoder
assign	TD_RESET_N	= 1'b1; 

assign	LEDG	=	VGA_Y;
assign	LEDR	=	VGA_X;


assign	m1VGA_Read	=	VGA_Y[0]		?	1'b0		:	VGA_Read	;
assign	m2VGA_Read	=	VGA_Y[0]		?	VGA_Read	:	1'b0		;
assign	mYCbCr_d	=	!VGA_Y[0]		?	m1YCbCr		:
											      m2YCbCr		;
assign	mYCbCr		=	m5YCbCr;

assign	Tmp1	=	m4YCbCr[7:0]+mYCbCr_d[7:0];
assign	Tmp2	=	m4YCbCr[15:8]+mYCbCr_d[15:8];
assign	Tmp3	=	Tmp1[8:2]+m3YCbCr[7:1];
assign	Tmp4	=	Tmp2[8:2]+m3YCbCr[15:9];
assign	m5YCbCr	=	{Tmp4,Tmp3};


//	7 segment LUT
SEG7_LUT_8 			u0	(	.oSEG0(HEX0),
							.oSEG1(HEX1),
							.oSEG2(HEX2),
							.oSEG3(HEX3),
							.oSEG4(HEX4),
							.oSEG5(HEX5),
							.oSEG6(HEX6),
							.oSEG7(HEX7),
							.iDIG(SW) );


//	TV Decoder Stable Check
TD_Detect			u2	(	.oTD_Stable(TD_Stable),
							.oNTSC(NTSC),
							.oPAL(PAL),
							.iTD_VS(TD_VS),
							.iTD_HS(TD_HS),
							.iRST_N(KEY[0])	);

//	Reset Delay Timer
Reset_Delay			u3	(	.iCLK(CLOCK_50),
							.iRST(TD_Stable),
							.oRST_0(DLY0),
							.oRST_1(DLY1),
							.oRST_2(DLY2));

//	ITU-R 656 to YUV 4:2:2
ITU_656_Decoder		u4	(	//	TV Decoder Input
							.iTD_DATA(TD_DATA),
							//	Position Output
							.oTV_X(TV_X),
							//	YUV 4:2:2 Output
							.oYCbCr(YCbCr),
							.oDVAL(TV_DVAL),
							//	Control Signals
							.iSwap_CbCr(Quotient[0]),
							.iSkip(Remain==4'h0),
							.iRST_N(DLY1),
							.iCLK_27(TD_CLK27)	);

//	For Down Sample 720 to 640
DIV 				u5	(	.aclr(!DLY0),	
							.clock(TD_CLK27),
							.denom(4'h9),
							.numer(TV_X),
							.quotient(Quotient),
							.remain(Remain));

//	SDRAM frame buffer
Sdram_Control_4Port	u6	(	//	HOST Side
						    .REF_CLK(CLOCK3_50),
						    .RESET_N(DLY0),
							//	FIFO Write Side 1
						    .WR1_DATA(YCbCr),
							.WR1(TV_DVAL),
							.WR1_FULL(),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(NTSC ? 640*507 : 640*576),		//	525-18
							.WR1_LENGTH(9'h80),
							.WR1_LOAD(!DLY0),
							.WR1_CLK(TD_CLK27),
							//	FIFO Read Side 1
						   .RD1_DATA(m1YCbCr),
				        	.RD1(m1VGA_Read),
				        	.RD1_ADDR(NTSC ? 640*13: 640*22),   	// : 640*42),     //	Read odd field and bypass blanking
							.RD1_MAX_ADDR(NTSC ? 640*253 : 640*262),//: 640*282),
							.RD1_LENGTH(9'h80),
				        	.RD1_LOAD(!DLY0),
							.RD1_CLK(TD_CLK27),
							//	FIFO Read Side 2
						    .RD2_DATA(m2YCbCr),
				        	.RD2(m2VGA_Read),
				        	.RD2_ADDR(NTSC ? 640*267 : 640*310),	// : 640*330),		//	Read even field and bypass blanking
							.RD2_MAX_ADDR(NTSC ? 640*507 : 640*550),//: 640*570),
							.RD2_LENGTH(9'h80),
				        	.RD2_LOAD(!DLY0),
							.RD2_CLK(TD_CLK27),
							//	SDRAM Side
						  .SA(DRAM_ADDR),
						  .BA({DRAM_BA_1,DRAM_BA_0}),
						  .CS_N(DRAM_CS_N),
						  .CKE(DRAM_CKE),
						  .RAS_N(DRAM_RAS_N),
				          .CAS_N(DRAM_CAS_N),
				          .WE_N(DRAM_WE_N),
						  .DQ(DRAM_DQ),
				            .DQM({DRAM_DQM[1],DRAM_DQM[0]}),
						  .SDR_CLK(DRAM_CLK)	);

//	YUV 4:2:2 to YUV 4:4:4
YUV422_to_444		u7	(	//	YUV 4:2:2 Input
							.iYCbCr(mYCbCr),
							//	YUV	4:4:4 Output
							.oY(mY),
							.oCb(mCb),
							.oCr(mCr),
							//	Control Signals
							.iX(VGA_X-160),
							.iCLK(TD_CLK27),
							.iRST_N(DLY0));

//	YCbCr 8-bit to RGB-10 bit 
YCbCr2RGB 			u8	(	//	Output Side
							.Red(mRed),
							.Green(mGreen),
							.Blue(mBlue),
							.oDVAL(mDVAL),
							//	Input Side
							.iY(mY),
							.iCb(mCb),
							.iCr(mCr),
							.iDVAL(VGA_Read),
							//	Control Signal
							.iRESET(!DLY2),
							.iCLK(TD_CLK27));

//	VGA Controller
wire [9:0] vga_r10;
wire [9:0] vga_g10;
wire [9:0] vga_b10;
assign VGA_R = vga_r10[9:2];
assign VGA_G = vga_g10[9:2];
assign VGA_B = vga_b10[9:2];

							
VGA_Ctrl			u9	(	//	Host Side
							.iRed(mRed),
							.iGreen(mGreen),
							.iBlue(mBlue),
							.oCurrent_X(VGA_X),
							.oCurrent_Y(VGA_Y),
							.oRequest(VGA_Read),
							//	VGA Side
							.oVGA_R(vga_r10 ),
							.oVGA_G(vga_g10 ),
							.oVGA_B(vga_b10 ),
							.oVGA_HS(VGA_HS),
							.oVGA_VS(VGA_VS),
							.oVGA_SYNC(VGA_SYNC_N),
							.oVGA_BLANK(VGA_BLANK_N),
							.oVGA_CLOCK(VGA_CLK),
							//	Control Signal
							.iCLK(TD_CLK27),
							.iRST_N(DLY2)	);


//	Line buffer, delay one line
Line_Buffer u10	(	.aclr(!DLY0),
                    .clken(VGA_Read),
					.clock(TD_CLK27),
					.shiftin(mYCbCr_d),
					.shiftout(m3YCbCr));

Line_Buffer u11	(	.aclr(!DLY0),
                    .clken(VGA_Read),
					.clock(TD_CLK27), 
					.shiftin(m3YCbCr),
					.shiftout(m4YCbCr));


					
//	Video decoder setting
I2C_AV_Config 	u1	(	//	Host Side
						.iCLK(CLOCK_50),
						.iRST_N(KEY[0]),
						//	I2C Side
						.I2C_SCLK(I2C_SCLK),
						.I2C_SDAT(I2C_SDAT)	);
						
endmodule
