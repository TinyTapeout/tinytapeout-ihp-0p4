module tt_um_ygdes_hdsiso8_dlhq (clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire CLK_OUT;
 wire clknet_0_CLK_OUT;
 wire D_OUT;
 wire \Decoded8[0] ;
 wire \Decoded8[1] ;
 wire \Decoded8[2] ;
 wire \Decoded8[3] ;
 wire \Decoded8[4] ;
 wire \Decoded8[5] ;
 wire \Decoded8[6] ;
 wire \Decoded8[7] ;
 wire INT_RESET;
 wire \J8.J4N[0] ;
 wire \J8.J4N[1] ;
 wire \J8.J4N[2] ;
 wire \J8.J4N[3] ;
 wire \J8.rstN ;
 wire LFSR_BIT;
 wire LFSR_PERIOD;
 wire \LFSR_state8[1] ;
 wire \LFSR_state8[2] ;
 wire \LFSR_state8[3] ;
 wire \LFSR_state8[4] ;
 wire \LFSR_state8[5] ;
 wire \LFSR_state8[6] ;
 wire \LFSR_state8[7] ;
 wire SHOW_LFSR_n1;
 wire SHOW_LFSR_n2;
 wire SISO_in;
 wire \demux_mux.Deven ;
 wire \demux_mux.DevenN ;
 wire \demux_mux.Dodd ;
 wire \demux_mux.DoddN ;
 wire \demux_mux.Dout_even ;
 wire \demux_mux.Dout_odd ;
 wire \demux_mux.Even_odd ;
 wire \demux_mux.FbEven ;
 wire \demux_mux.FbOdd ;
 wire \demux_mux.doe1 ;
 wire \demux_mux.doe2 ;
 wire \demux_mux.doo1 ;
 wire \demux_mux.doo2 ;
 wire \demux_mux.exit_even[0] ;
 wire \demux_mux.exit_even[1] ;
 wire \demux_mux.exit_even[2] ;
 wire \demux_mux.exit_even[3] ;
 wire \demux_mux.exit_odd[0] ;
 wire \demux_mux.exit_odd[1] ;
 wire \demux_mux.exit_odd[2] ;
 wire \demux_mux.exit_odd[3] ;
 wire \demux_mux.siso_first_even[0] ;
 wire \demux_mux.siso_first_even[1] ;
 wire \demux_mux.siso_first_even[2] ;
 wire \demux_mux.siso_first_even[3] ;
 wire \demux_mux.siso_first_odd[0] ;
 wire \demux_mux.siso_first_odd[1] ;
 wire \demux_mux.siso_first_odd[2] ;
 wire \demux_mux.siso_first_odd[3] ;
 wire \demux_mux.siso_last_even[1] ;
 wire \demux_mux.siso_last_even[2] ;
 wire \demux_mux.siso_last_even[3] ;
 wire \demux_mux.siso_last_odd[1] ;
 wire \demux_mux.siso_last_odd[2] ;
 wire \demux_mux.siso_last_odd[3] ;
 wire \demux_mux.slice0e.latch ;
 wire \demux_mux.slice0e.latch_n ;
 wire \demux_mux.slice0e.siso_out[0] ;
 wire \demux_mux.slice0e.siso_out[2] ;
 wire \demux_mux.slice0e.siso_out[3] ;
 wire \demux_mux.slice0o.latch ;
 wire \demux_mux.slice0o.latch_n ;
 wire \demux_mux.slice0o.siso_out[0] ;
 wire \demux_mux.slice0o.siso_out[2] ;
 wire \demux_mux.slice0o.siso_out[3] ;
 wire \demux_mux.slice1e.latch ;
 wire \demux_mux.slice1e.latch_n ;
 wire \demux_mux.slice1e.siso_out[0] ;
 wire \demux_mux.slice1e.siso_out[1] ;
 wire \demux_mux.slice1e.siso_out[3] ;
 wire \demux_mux.slice1o.latch ;
 wire \demux_mux.slice1o.latch_n ;
 wire \demux_mux.slice1o.siso_out[0] ;
 wire \demux_mux.slice1o.siso_out[1] ;
 wire \demux_mux.slice1o.siso_out[3] ;
 wire \demux_mux.slice2e.latch ;
 wire \demux_mux.slice2e.latch_n ;
 wire \demux_mux.slice2e.siso_out[0] ;
 wire \demux_mux.slice2e.siso_out[1] ;
 wire \demux_mux.slice2e.siso_out[2] ;
 wire \demux_mux.slice2o.latch ;
 wire \demux_mux.slice2o.latch_n ;
 wire \demux_mux.slice2o.siso_out[0] ;
 wire \demux_mux.slice2o.siso_out[1] ;
 wire \demux_mux.slice2o.siso_out[2] ;
 wire \demux_mux.slice3e.latch ;
 wire \demux_mux.slice3e.latch_n ;
 wire \demux_mux.slice3o.latch ;
 wire \demux_mux.slice3o.latch_n ;
 wire \lfsr.and8_1 ;
 wire \lfsr.and8_2 ;
 wire \lfsr.dum1 ;
 wire \lfsr.dum2 ;
 wire \lfsr.feedback ;
 wire \lfsr.x1 ;
 wire \lfsr.x2 ;
 wire \lfsr.x3 ;
 wire net1;
 wire \siso256_1.Amp0.Y[0] ;
 wire \siso256_1.Amp0.Y[1] ;
 wire \siso256_1.Amp0.Y[2] ;
 wire \siso256_1.Amp0.Y[3] ;
 wire \siso256_1.Amp1.Y[0] ;
 wire \siso256_1.Amp1.Y[1] ;
 wire \siso256_1.Amp1.Y[2] ;
 wire \siso256_1.Amp1.Y[3] ;
 wire \siso256_1.Amp2.Y[0] ;
 wire \siso256_1.Amp2.Y[1] ;
 wire \siso256_1.Amp2.Y[2] ;
 wire \siso256_1.Amp2.Y[3] ;
 wire \siso256_1.Amp3.Y[0] ;
 wire \siso256_1.Amp3.Y[1] ;
 wire \siso256_1.Amp3.Y[2] ;
 wire \siso256_1.Amp3.Y[3] ;
 wire \siso256_1.Amp4.Y[0] ;
 wire \siso256_1.Amp4.Y[1] ;
 wire \siso256_1.Amp4.Y[2] ;
 wire \siso256_1.Amp4.Y[3] ;
 wire \siso256_1.siso_out[0] ;
 wire \siso256_1.siso_out[1] ;
 wire \siso256_1.siso_out[2] ;
 wire \siso256_1.siso_out[3] ;
 wire \siso256_1.t1[0] ;
 wire \siso256_1.t1[1] ;
 wire \siso256_1.t1[2] ;
 wire \siso256_1.t1[3] ;
 wire \siso256_1.t2[0] ;
 wire \siso256_1.t2[1] ;
 wire \siso256_1.t2[2] ;
 wire \siso256_1.t2[3] ;
 wire \siso256_1.t3[0] ;
 wire \siso256_1.t3[1] ;
 wire \siso256_1.t3[2] ;
 wire \siso256_1.t3[3] ;
 wire \siso256_1.tranche0.t1[0] ;
 wire \siso256_1.tranche0.t1[1] ;
 wire \siso256_1.tranche0.t1[2] ;
 wire \siso256_1.tranche0.t1[3] ;
 wire \siso256_1.tranche0.t2[0] ;
 wire \siso256_1.tranche0.t2[1] ;
 wire \siso256_1.tranche0.t2[2] ;
 wire \siso256_1.tranche0.t2[3] ;
 wire \siso256_1.tranche0.t3[0] ;
 wire \siso256_1.tranche0.t3[1] ;
 wire \siso256_1.tranche0.t3[2] ;
 wire \siso256_1.tranche0.t3[3] ;
 wire \siso256_1.tranche0.tranche0.slice0.latch ;
 wire \siso256_1.tranche0.tranche0.slice0.latch_n ;
 wire \siso256_1.tranche0.tranche0.slice0.siso_out[0] ;
 wire \siso256_1.tranche0.tranche0.slice0.siso_out[1] ;
 wire \siso256_1.tranche0.tranche0.slice0.siso_out[2] ;
 wire \siso256_1.tranche0.tranche0.slice0.siso_out[3] ;
 wire \siso256_1.tranche0.tranche0.slice1.latch ;
 wire \siso256_1.tranche0.tranche0.slice1.latch_n ;
 wire \siso256_1.tranche0.tranche0.slice1.siso_out[0] ;
 wire \siso256_1.tranche0.tranche0.slice1.siso_out[1] ;
 wire \siso256_1.tranche0.tranche0.slice1.siso_out[2] ;
 wire \siso256_1.tranche0.tranche0.slice1.siso_out[3] ;
 wire \siso256_1.tranche0.tranche0.slice2.latch ;
 wire \siso256_1.tranche0.tranche0.slice2.latch_n ;
 wire \siso256_1.tranche0.tranche0.slice2.siso_out[0] ;
 wire \siso256_1.tranche0.tranche0.slice2.siso_out[1] ;
 wire \siso256_1.tranche0.tranche0.slice2.siso_out[2] ;
 wire \siso256_1.tranche0.tranche0.slice2.siso_out[3] ;
 wire \siso256_1.tranche0.tranche0.slice3.latch ;
 wire \siso256_1.tranche0.tranche0.slice3.latch_n ;
 wire \siso256_1.tranche0.tranche1.slice0.latch_n ;
 wire \siso256_1.tranche0.tranche1.slice0.siso_out[0] ;
 wire \siso256_1.tranche0.tranche1.slice0.siso_out[1] ;
 wire \siso256_1.tranche0.tranche1.slice0.siso_out[2] ;
 wire \siso256_1.tranche0.tranche1.slice0.siso_out[3] ;
 wire \siso256_1.tranche0.tranche1.slice1.latch_n ;
 wire \siso256_1.tranche0.tranche1.slice1.siso_out[0] ;
 wire \siso256_1.tranche0.tranche1.slice1.siso_out[1] ;
 wire \siso256_1.tranche0.tranche1.slice1.siso_out[2] ;
 wire \siso256_1.tranche0.tranche1.slice1.siso_out[3] ;
 wire \siso256_1.tranche0.tranche1.slice2.latch_n ;
 wire \siso256_1.tranche0.tranche1.slice2.siso_out[0] ;
 wire \siso256_1.tranche0.tranche1.slice2.siso_out[1] ;
 wire \siso256_1.tranche0.tranche1.slice2.siso_out[2] ;
 wire \siso256_1.tranche0.tranche1.slice2.siso_out[3] ;
 wire \siso256_1.tranche0.tranche1.slice3.latch_n ;
 wire \siso256_1.tranche0.tranche2.slice0.latch_n ;
 wire \siso256_1.tranche0.tranche2.slice0.siso_out[0] ;
 wire \siso256_1.tranche0.tranche2.slice0.siso_out[1] ;
 wire \siso256_1.tranche0.tranche2.slice0.siso_out[2] ;
 wire \siso256_1.tranche0.tranche2.slice0.siso_out[3] ;
 wire \siso256_1.tranche0.tranche2.slice1.latch_n ;
 wire \siso256_1.tranche0.tranche2.slice1.siso_out[0] ;
 wire \siso256_1.tranche0.tranche2.slice1.siso_out[1] ;
 wire \siso256_1.tranche0.tranche2.slice1.siso_out[2] ;
 wire \siso256_1.tranche0.tranche2.slice1.siso_out[3] ;
 wire \siso256_1.tranche0.tranche2.slice2.latch_n ;
 wire \siso256_1.tranche0.tranche2.slice2.siso_out[0] ;
 wire \siso256_1.tranche0.tranche2.slice2.siso_out[1] ;
 wire \siso256_1.tranche0.tranche2.slice2.siso_out[2] ;
 wire \siso256_1.tranche0.tranche2.slice2.siso_out[3] ;
 wire \siso256_1.tranche0.tranche2.slice3.latch_n ;
 wire \siso256_1.tranche0.tranche3.slice0.latch_n ;
 wire \siso256_1.tranche0.tranche3.slice0.siso_out[0] ;
 wire \siso256_1.tranche0.tranche3.slice0.siso_out[1] ;
 wire \siso256_1.tranche0.tranche3.slice0.siso_out[2] ;
 wire \siso256_1.tranche0.tranche3.slice0.siso_out[3] ;
 wire \siso256_1.tranche0.tranche3.slice1.latch_n ;
 wire \siso256_1.tranche0.tranche3.slice1.siso_out[0] ;
 wire \siso256_1.tranche0.tranche3.slice1.siso_out[1] ;
 wire \siso256_1.tranche0.tranche3.slice1.siso_out[2] ;
 wire \siso256_1.tranche0.tranche3.slice1.siso_out[3] ;
 wire \siso256_1.tranche0.tranche3.slice2.latch_n ;
 wire \siso256_1.tranche0.tranche3.slice2.siso_out[0] ;
 wire \siso256_1.tranche0.tranche3.slice2.siso_out[1] ;
 wire \siso256_1.tranche0.tranche3.slice2.siso_out[2] ;
 wire \siso256_1.tranche0.tranche3.slice2.siso_out[3] ;
 wire \siso256_1.tranche0.tranche3.slice3.latch_n ;
 wire \siso256_1.tranche1.t1[0] ;
 wire \siso256_1.tranche1.t1[1] ;
 wire \siso256_1.tranche1.t1[2] ;
 wire \siso256_1.tranche1.t1[3] ;
 wire \siso256_1.tranche1.t2[0] ;
 wire \siso256_1.tranche1.t2[1] ;
 wire \siso256_1.tranche1.t2[2] ;
 wire \siso256_1.tranche1.t2[3] ;
 wire \siso256_1.tranche1.t3[0] ;
 wire \siso256_1.tranche1.t3[1] ;
 wire \siso256_1.tranche1.t3[2] ;
 wire \siso256_1.tranche1.t3[3] ;
 wire \siso256_1.tranche1.tranche0.slice0.latch ;
 wire \siso256_1.tranche1.tranche0.slice0.latch_n ;
 wire \siso256_1.tranche1.tranche0.slice0.siso_out[0] ;
 wire \siso256_1.tranche1.tranche0.slice0.siso_out[1] ;
 wire \siso256_1.tranche1.tranche0.slice0.siso_out[2] ;
 wire \siso256_1.tranche1.tranche0.slice0.siso_out[3] ;
 wire \siso256_1.tranche1.tranche0.slice1.latch ;
 wire \siso256_1.tranche1.tranche0.slice1.latch_n ;
 wire \siso256_1.tranche1.tranche0.slice1.siso_out[0] ;
 wire \siso256_1.tranche1.tranche0.slice1.siso_out[1] ;
 wire \siso256_1.tranche1.tranche0.slice1.siso_out[2] ;
 wire \siso256_1.tranche1.tranche0.slice1.siso_out[3] ;
 wire \siso256_1.tranche1.tranche0.slice2.latch ;
 wire \siso256_1.tranche1.tranche0.slice2.latch_n ;
 wire \siso256_1.tranche1.tranche0.slice2.siso_out[0] ;
 wire \siso256_1.tranche1.tranche0.slice2.siso_out[1] ;
 wire \siso256_1.tranche1.tranche0.slice2.siso_out[2] ;
 wire \siso256_1.tranche1.tranche0.slice2.siso_out[3] ;
 wire \siso256_1.tranche1.tranche0.slice3.latch ;
 wire \siso256_1.tranche1.tranche0.slice3.latch_n ;
 wire \siso256_1.tranche1.tranche1.slice0.latch_n ;
 wire \siso256_1.tranche1.tranche1.slice0.siso_out[0] ;
 wire \siso256_1.tranche1.tranche1.slice0.siso_out[1] ;
 wire \siso256_1.tranche1.tranche1.slice0.siso_out[2] ;
 wire \siso256_1.tranche1.tranche1.slice0.siso_out[3] ;
 wire \siso256_1.tranche1.tranche1.slice1.latch_n ;
 wire \siso256_1.tranche1.tranche1.slice1.siso_out[0] ;
 wire \siso256_1.tranche1.tranche1.slice1.siso_out[1] ;
 wire \siso256_1.tranche1.tranche1.slice1.siso_out[2] ;
 wire \siso256_1.tranche1.tranche1.slice1.siso_out[3] ;
 wire \siso256_1.tranche1.tranche1.slice2.latch_n ;
 wire \siso256_1.tranche1.tranche1.slice2.siso_out[0] ;
 wire \siso256_1.tranche1.tranche1.slice2.siso_out[1] ;
 wire \siso256_1.tranche1.tranche1.slice2.siso_out[2] ;
 wire \siso256_1.tranche1.tranche1.slice2.siso_out[3] ;
 wire \siso256_1.tranche1.tranche1.slice3.latch_n ;
 wire \siso256_1.tranche1.tranche2.slice0.latch_n ;
 wire \siso256_1.tranche1.tranche2.slice0.siso_out[0] ;
 wire \siso256_1.tranche1.tranche2.slice0.siso_out[1] ;
 wire \siso256_1.tranche1.tranche2.slice0.siso_out[2] ;
 wire \siso256_1.tranche1.tranche2.slice0.siso_out[3] ;
 wire \siso256_1.tranche1.tranche2.slice1.latch_n ;
 wire \siso256_1.tranche1.tranche2.slice1.siso_out[0] ;
 wire \siso256_1.tranche1.tranche2.slice1.siso_out[1] ;
 wire \siso256_1.tranche1.tranche2.slice1.siso_out[2] ;
 wire \siso256_1.tranche1.tranche2.slice1.siso_out[3] ;
 wire \siso256_1.tranche1.tranche2.slice2.latch_n ;
 wire \siso256_1.tranche1.tranche2.slice2.siso_out[0] ;
 wire \siso256_1.tranche1.tranche2.slice2.siso_out[1] ;
 wire \siso256_1.tranche1.tranche2.slice2.siso_out[2] ;
 wire \siso256_1.tranche1.tranche2.slice2.siso_out[3] ;
 wire \siso256_1.tranche1.tranche2.slice3.latch_n ;
 wire \siso256_1.tranche1.tranche3.slice0.latch_n ;
 wire \siso256_1.tranche1.tranche3.slice0.siso_out[0] ;
 wire \siso256_1.tranche1.tranche3.slice0.siso_out[1] ;
 wire \siso256_1.tranche1.tranche3.slice0.siso_out[2] ;
 wire \siso256_1.tranche1.tranche3.slice0.siso_out[3] ;
 wire \siso256_1.tranche1.tranche3.slice1.latch_n ;
 wire \siso256_1.tranche1.tranche3.slice1.siso_out[0] ;
 wire \siso256_1.tranche1.tranche3.slice1.siso_out[1] ;
 wire \siso256_1.tranche1.tranche3.slice1.siso_out[2] ;
 wire \siso256_1.tranche1.tranche3.slice1.siso_out[3] ;
 wire \siso256_1.tranche1.tranche3.slice2.latch_n ;
 wire \siso256_1.tranche1.tranche3.slice2.siso_out[0] ;
 wire \siso256_1.tranche1.tranche3.slice2.siso_out[1] ;
 wire \siso256_1.tranche1.tranche3.slice2.siso_out[2] ;
 wire \siso256_1.tranche1.tranche3.slice2.siso_out[3] ;
 wire \siso256_1.tranche1.tranche3.slice3.latch_n ;
 wire \siso256_1.tranche2.t1[0] ;
 wire \siso256_1.tranche2.t1[1] ;
 wire \siso256_1.tranche2.t1[2] ;
 wire \siso256_1.tranche2.t1[3] ;
 wire \siso256_1.tranche2.t2[0] ;
 wire \siso256_1.tranche2.t2[1] ;
 wire \siso256_1.tranche2.t2[2] ;
 wire \siso256_1.tranche2.t2[3] ;
 wire \siso256_1.tranche2.t3[0] ;
 wire \siso256_1.tranche2.t3[1] ;
 wire \siso256_1.tranche2.t3[2] ;
 wire \siso256_1.tranche2.t3[3] ;
 wire \siso256_1.tranche2.tranche0.slice0.latch ;
 wire \siso256_1.tranche2.tranche0.slice0.latch_n ;
 wire \siso256_1.tranche2.tranche0.slice0.siso_out[0] ;
 wire \siso256_1.tranche2.tranche0.slice0.siso_out[1] ;
 wire \siso256_1.tranche2.tranche0.slice0.siso_out[2] ;
 wire \siso256_1.tranche2.tranche0.slice0.siso_out[3] ;
 wire \siso256_1.tranche2.tranche0.slice1.latch ;
 wire \siso256_1.tranche2.tranche0.slice1.latch_n ;
 wire \siso256_1.tranche2.tranche0.slice1.siso_out[0] ;
 wire \siso256_1.tranche2.tranche0.slice1.siso_out[1] ;
 wire \siso256_1.tranche2.tranche0.slice1.siso_out[2] ;
 wire \siso256_1.tranche2.tranche0.slice1.siso_out[3] ;
 wire \siso256_1.tranche2.tranche0.slice2.latch ;
 wire \siso256_1.tranche2.tranche0.slice2.latch_n ;
 wire \siso256_1.tranche2.tranche0.slice2.siso_out[0] ;
 wire \siso256_1.tranche2.tranche0.slice2.siso_out[1] ;
 wire \siso256_1.tranche2.tranche0.slice2.siso_out[2] ;
 wire \siso256_1.tranche2.tranche0.slice2.siso_out[3] ;
 wire \siso256_1.tranche2.tranche0.slice3.latch ;
 wire \siso256_1.tranche2.tranche0.slice3.latch_n ;
 wire \siso256_1.tranche2.tranche1.slice0.latch_n ;
 wire \siso256_1.tranche2.tranche1.slice0.siso_out[0] ;
 wire \siso256_1.tranche2.tranche1.slice0.siso_out[1] ;
 wire \siso256_1.tranche2.tranche1.slice0.siso_out[2] ;
 wire \siso256_1.tranche2.tranche1.slice0.siso_out[3] ;
 wire \siso256_1.tranche2.tranche1.slice1.latch_n ;
 wire \siso256_1.tranche2.tranche1.slice1.siso_out[0] ;
 wire \siso256_1.tranche2.tranche1.slice1.siso_out[1] ;
 wire \siso256_1.tranche2.tranche1.slice1.siso_out[2] ;
 wire \siso256_1.tranche2.tranche1.slice1.siso_out[3] ;
 wire \siso256_1.tranche2.tranche1.slice2.latch_n ;
 wire \siso256_1.tranche2.tranche1.slice2.siso_out[0] ;
 wire \siso256_1.tranche2.tranche1.slice2.siso_out[1] ;
 wire \siso256_1.tranche2.tranche1.slice2.siso_out[2] ;
 wire \siso256_1.tranche2.tranche1.slice2.siso_out[3] ;
 wire \siso256_1.tranche2.tranche1.slice3.latch_n ;
 wire \siso256_1.tranche2.tranche2.slice0.latch_n ;
 wire \siso256_1.tranche2.tranche2.slice0.siso_out[0] ;
 wire \siso256_1.tranche2.tranche2.slice0.siso_out[1] ;
 wire \siso256_1.tranche2.tranche2.slice0.siso_out[2] ;
 wire \siso256_1.tranche2.tranche2.slice0.siso_out[3] ;
 wire \siso256_1.tranche2.tranche2.slice1.latch_n ;
 wire \siso256_1.tranche2.tranche2.slice1.siso_out[0] ;
 wire \siso256_1.tranche2.tranche2.slice1.siso_out[1] ;
 wire \siso256_1.tranche2.tranche2.slice1.siso_out[2] ;
 wire \siso256_1.tranche2.tranche2.slice1.siso_out[3] ;
 wire \siso256_1.tranche2.tranche2.slice2.latch_n ;
 wire \siso256_1.tranche2.tranche2.slice2.siso_out[0] ;
 wire \siso256_1.tranche2.tranche2.slice2.siso_out[1] ;
 wire \siso256_1.tranche2.tranche2.slice2.siso_out[2] ;
 wire \siso256_1.tranche2.tranche2.slice2.siso_out[3] ;
 wire \siso256_1.tranche2.tranche2.slice3.latch_n ;
 wire \siso256_1.tranche2.tranche3.slice0.latch_n ;
 wire \siso256_1.tranche2.tranche3.slice0.siso_out[0] ;
 wire \siso256_1.tranche2.tranche3.slice0.siso_out[1] ;
 wire \siso256_1.tranche2.tranche3.slice0.siso_out[2] ;
 wire \siso256_1.tranche2.tranche3.slice0.siso_out[3] ;
 wire \siso256_1.tranche2.tranche3.slice1.latch_n ;
 wire \siso256_1.tranche2.tranche3.slice1.siso_out[0] ;
 wire \siso256_1.tranche2.tranche3.slice1.siso_out[1] ;
 wire \siso256_1.tranche2.tranche3.slice1.siso_out[2] ;
 wire \siso256_1.tranche2.tranche3.slice1.siso_out[3] ;
 wire \siso256_1.tranche2.tranche3.slice2.latch_n ;
 wire \siso256_1.tranche2.tranche3.slice2.siso_out[0] ;
 wire \siso256_1.tranche2.tranche3.slice2.siso_out[1] ;
 wire \siso256_1.tranche2.tranche3.slice2.siso_out[2] ;
 wire \siso256_1.tranche2.tranche3.slice2.siso_out[3] ;
 wire \siso256_1.tranche2.tranche3.slice3.latch_n ;
 wire \siso256_1.tranche3.t1[0] ;
 wire \siso256_1.tranche3.t1[1] ;
 wire \siso256_1.tranche3.t1[2] ;
 wire \siso256_1.tranche3.t1[3] ;
 wire \siso256_1.tranche3.t2[0] ;
 wire \siso256_1.tranche3.t2[1] ;
 wire \siso256_1.tranche3.t2[2] ;
 wire \siso256_1.tranche3.t2[3] ;
 wire \siso256_1.tranche3.t3[0] ;
 wire \siso256_1.tranche3.t3[1] ;
 wire \siso256_1.tranche3.t3[2] ;
 wire \siso256_1.tranche3.t3[3] ;
 wire \siso256_1.tranche3.tranche0.slice0.latch ;
 wire \siso256_1.tranche3.tranche0.slice0.latch_n ;
 wire \siso256_1.tranche3.tranche0.slice0.siso_out[0] ;
 wire \siso256_1.tranche3.tranche0.slice0.siso_out[1] ;
 wire \siso256_1.tranche3.tranche0.slice0.siso_out[2] ;
 wire \siso256_1.tranche3.tranche0.slice0.siso_out[3] ;
 wire \siso256_1.tranche3.tranche0.slice1.latch ;
 wire \siso256_1.tranche3.tranche0.slice1.latch_n ;
 wire \siso256_1.tranche3.tranche0.slice1.siso_out[0] ;
 wire \siso256_1.tranche3.tranche0.slice1.siso_out[1] ;
 wire \siso256_1.tranche3.tranche0.slice1.siso_out[2] ;
 wire \siso256_1.tranche3.tranche0.slice1.siso_out[3] ;
 wire \siso256_1.tranche3.tranche0.slice2.latch ;
 wire \siso256_1.tranche3.tranche0.slice2.latch_n ;
 wire \siso256_1.tranche3.tranche0.slice2.siso_out[0] ;
 wire \siso256_1.tranche3.tranche0.slice2.siso_out[1] ;
 wire \siso256_1.tranche3.tranche0.slice2.siso_out[2] ;
 wire \siso256_1.tranche3.tranche0.slice2.siso_out[3] ;
 wire \siso256_1.tranche3.tranche0.slice3.latch ;
 wire \siso256_1.tranche3.tranche0.slice3.latch_n ;
 wire \siso256_1.tranche3.tranche1.slice0.latch_n ;
 wire \siso256_1.tranche3.tranche1.slice0.siso_out[0] ;
 wire \siso256_1.tranche3.tranche1.slice0.siso_out[1] ;
 wire \siso256_1.tranche3.tranche1.slice0.siso_out[2] ;
 wire \siso256_1.tranche3.tranche1.slice0.siso_out[3] ;
 wire \siso256_1.tranche3.tranche1.slice1.latch_n ;
 wire \siso256_1.tranche3.tranche1.slice1.siso_out[0] ;
 wire \siso256_1.tranche3.tranche1.slice1.siso_out[1] ;
 wire \siso256_1.tranche3.tranche1.slice1.siso_out[2] ;
 wire \siso256_1.tranche3.tranche1.slice1.siso_out[3] ;
 wire \siso256_1.tranche3.tranche1.slice2.latch_n ;
 wire \siso256_1.tranche3.tranche1.slice2.siso_out[0] ;
 wire \siso256_1.tranche3.tranche1.slice2.siso_out[1] ;
 wire \siso256_1.tranche3.tranche1.slice2.siso_out[2] ;
 wire \siso256_1.tranche3.tranche1.slice2.siso_out[3] ;
 wire \siso256_1.tranche3.tranche1.slice3.latch_n ;
 wire \siso256_1.tranche3.tranche2.slice0.latch_n ;
 wire \siso256_1.tranche3.tranche2.slice0.siso_out[0] ;
 wire \siso256_1.tranche3.tranche2.slice0.siso_out[1] ;
 wire \siso256_1.tranche3.tranche2.slice0.siso_out[2] ;
 wire \siso256_1.tranche3.tranche2.slice0.siso_out[3] ;
 wire \siso256_1.tranche3.tranche2.slice1.latch_n ;
 wire \siso256_1.tranche3.tranche2.slice1.siso_out[0] ;
 wire \siso256_1.tranche3.tranche2.slice1.siso_out[1] ;
 wire \siso256_1.tranche3.tranche2.slice1.siso_out[2] ;
 wire \siso256_1.tranche3.tranche2.slice1.siso_out[3] ;
 wire \siso256_1.tranche3.tranche2.slice2.latch_n ;
 wire \siso256_1.tranche3.tranche2.slice2.siso_out[0] ;
 wire \siso256_1.tranche3.tranche2.slice2.siso_out[1] ;
 wire \siso256_1.tranche3.tranche2.slice2.siso_out[2] ;
 wire \siso256_1.tranche3.tranche2.slice2.siso_out[3] ;
 wire \siso256_1.tranche3.tranche2.slice3.latch_n ;
 wire \siso256_1.tranche3.tranche3.slice0.latch_n ;
 wire \siso256_1.tranche3.tranche3.slice0.siso_out[0] ;
 wire \siso256_1.tranche3.tranche3.slice0.siso_out[1] ;
 wire \siso256_1.tranche3.tranche3.slice0.siso_out[2] ;
 wire \siso256_1.tranche3.tranche3.slice0.siso_out[3] ;
 wire \siso256_1.tranche3.tranche3.slice1.latch_n ;
 wire \siso256_1.tranche3.tranche3.slice1.siso_out[0] ;
 wire \siso256_1.tranche3.tranche3.slice1.siso_out[1] ;
 wire \siso256_1.tranche3.tranche3.slice1.siso_out[2] ;
 wire \siso256_1.tranche3.tranche3.slice1.siso_out[3] ;
 wire \siso256_1.tranche3.tranche3.slice2.latch_n ;
 wire \siso256_1.tranche3.tranche3.slice2.siso_out[0] ;
 wire \siso256_1.tranche3.tranche3.slice2.siso_out[1] ;
 wire \siso256_1.tranche3.tranche3.slice2.siso_out[2] ;
 wire \siso256_1.tranche3.tranche3.slice2.siso_out[3] ;
 wire \siso256_1.tranche3.tranche3.slice3.latch_n ;
 wire \siso256_2.Amp0.Y[0] ;
 wire \siso256_2.Amp0.Y[1] ;
 wire \siso256_2.Amp0.Y[2] ;
 wire \siso256_2.Amp0.Y[3] ;
 wire \siso256_2.Amp1.Y[0] ;
 wire \siso256_2.Amp1.Y[1] ;
 wire \siso256_2.Amp1.Y[2] ;
 wire \siso256_2.Amp1.Y[3] ;
 wire \siso256_2.Amp2.Y[0] ;
 wire \siso256_2.Amp2.Y[1] ;
 wire \siso256_2.Amp2.Y[2] ;
 wire \siso256_2.Amp2.Y[3] ;
 wire \siso256_2.Amp3.Y[0] ;
 wire \siso256_2.Amp3.Y[1] ;
 wire \siso256_2.Amp3.Y[2] ;
 wire \siso256_2.Amp3.Y[3] ;
 wire \siso256_2.Amp4.Y[0] ;
 wire \siso256_2.Amp4.Y[1] ;
 wire \siso256_2.Amp4.Y[2] ;
 wire \siso256_2.Amp4.Y[3] ;
 wire \siso256_2.siso_out[0] ;
 wire \siso256_2.siso_out[1] ;
 wire \siso256_2.siso_out[2] ;
 wire \siso256_2.siso_out[3] ;
 wire \siso256_2.t1[0] ;
 wire \siso256_2.t1[1] ;
 wire \siso256_2.t1[2] ;
 wire \siso256_2.t1[3] ;
 wire \siso256_2.t2[0] ;
 wire \siso256_2.t2[1] ;
 wire \siso256_2.t2[2] ;
 wire \siso256_2.t2[3] ;
 wire \siso256_2.t3[0] ;
 wire \siso256_2.t3[1] ;
 wire \siso256_2.t3[2] ;
 wire \siso256_2.t3[3] ;
 wire \siso256_2.tranche0.t1[0] ;
 wire \siso256_2.tranche0.t1[1] ;
 wire \siso256_2.tranche0.t1[2] ;
 wire \siso256_2.tranche0.t1[3] ;
 wire \siso256_2.tranche0.t2[0] ;
 wire \siso256_2.tranche0.t2[1] ;
 wire \siso256_2.tranche0.t2[2] ;
 wire \siso256_2.tranche0.t2[3] ;
 wire \siso256_2.tranche0.t3[0] ;
 wire \siso256_2.tranche0.t3[1] ;
 wire \siso256_2.tranche0.t3[2] ;
 wire \siso256_2.tranche0.t3[3] ;
 wire \siso256_2.tranche0.tranche0.slice0.latch ;
 wire \siso256_2.tranche0.tranche0.slice0.latch_n ;
 wire \siso256_2.tranche0.tranche0.slice0.siso_out[0] ;
 wire \siso256_2.tranche0.tranche0.slice0.siso_out[1] ;
 wire \siso256_2.tranche0.tranche0.slice0.siso_out[2] ;
 wire \siso256_2.tranche0.tranche0.slice0.siso_out[3] ;
 wire \siso256_2.tranche0.tranche0.slice1.latch ;
 wire \siso256_2.tranche0.tranche0.slice1.latch_n ;
 wire \siso256_2.tranche0.tranche0.slice1.siso_out[0] ;
 wire \siso256_2.tranche0.tranche0.slice1.siso_out[1] ;
 wire \siso256_2.tranche0.tranche0.slice1.siso_out[2] ;
 wire \siso256_2.tranche0.tranche0.slice1.siso_out[3] ;
 wire \siso256_2.tranche0.tranche0.slice2.latch ;
 wire \siso256_2.tranche0.tranche0.slice2.latch_n ;
 wire \siso256_2.tranche0.tranche0.slice2.siso_out[0] ;
 wire \siso256_2.tranche0.tranche0.slice2.siso_out[1] ;
 wire \siso256_2.tranche0.tranche0.slice2.siso_out[2] ;
 wire \siso256_2.tranche0.tranche0.slice2.siso_out[3] ;
 wire \siso256_2.tranche0.tranche0.slice3.latch ;
 wire \siso256_2.tranche0.tranche0.slice3.latch_n ;
 wire \siso256_2.tranche0.tranche1.slice0.latch_n ;
 wire \siso256_2.tranche0.tranche1.slice0.siso_out[0] ;
 wire \siso256_2.tranche0.tranche1.slice0.siso_out[1] ;
 wire \siso256_2.tranche0.tranche1.slice0.siso_out[2] ;
 wire \siso256_2.tranche0.tranche1.slice0.siso_out[3] ;
 wire \siso256_2.tranche0.tranche1.slice1.latch_n ;
 wire \siso256_2.tranche0.tranche1.slice1.siso_out[0] ;
 wire \siso256_2.tranche0.tranche1.slice1.siso_out[1] ;
 wire \siso256_2.tranche0.tranche1.slice1.siso_out[2] ;
 wire \siso256_2.tranche0.tranche1.slice1.siso_out[3] ;
 wire \siso256_2.tranche0.tranche1.slice2.latch_n ;
 wire \siso256_2.tranche0.tranche1.slice2.siso_out[0] ;
 wire \siso256_2.tranche0.tranche1.slice2.siso_out[1] ;
 wire \siso256_2.tranche0.tranche1.slice2.siso_out[2] ;
 wire \siso256_2.tranche0.tranche1.slice2.siso_out[3] ;
 wire \siso256_2.tranche0.tranche1.slice3.latch_n ;
 wire \siso256_2.tranche0.tranche2.slice0.latch_n ;
 wire \siso256_2.tranche0.tranche2.slice0.siso_out[0] ;
 wire \siso256_2.tranche0.tranche2.slice0.siso_out[1] ;
 wire \siso256_2.tranche0.tranche2.slice0.siso_out[2] ;
 wire \siso256_2.tranche0.tranche2.slice0.siso_out[3] ;
 wire \siso256_2.tranche0.tranche2.slice1.latch_n ;
 wire \siso256_2.tranche0.tranche2.slice1.siso_out[0] ;
 wire \siso256_2.tranche0.tranche2.slice1.siso_out[1] ;
 wire \siso256_2.tranche0.tranche2.slice1.siso_out[2] ;
 wire \siso256_2.tranche0.tranche2.slice1.siso_out[3] ;
 wire \siso256_2.tranche0.tranche2.slice2.latch_n ;
 wire \siso256_2.tranche0.tranche2.slice2.siso_out[0] ;
 wire \siso256_2.tranche0.tranche2.slice2.siso_out[1] ;
 wire \siso256_2.tranche0.tranche2.slice2.siso_out[2] ;
 wire \siso256_2.tranche0.tranche2.slice2.siso_out[3] ;
 wire \siso256_2.tranche0.tranche2.slice3.latch_n ;
 wire \siso256_2.tranche0.tranche3.slice0.latch_n ;
 wire \siso256_2.tranche0.tranche3.slice0.siso_out[0] ;
 wire \siso256_2.tranche0.tranche3.slice0.siso_out[1] ;
 wire \siso256_2.tranche0.tranche3.slice0.siso_out[2] ;
 wire \siso256_2.tranche0.tranche3.slice0.siso_out[3] ;
 wire \siso256_2.tranche0.tranche3.slice1.latch_n ;
 wire \siso256_2.tranche0.tranche3.slice1.siso_out[0] ;
 wire \siso256_2.tranche0.tranche3.slice1.siso_out[1] ;
 wire \siso256_2.tranche0.tranche3.slice1.siso_out[2] ;
 wire \siso256_2.tranche0.tranche3.slice1.siso_out[3] ;
 wire \siso256_2.tranche0.tranche3.slice2.latch_n ;
 wire \siso256_2.tranche0.tranche3.slice2.siso_out[0] ;
 wire \siso256_2.tranche0.tranche3.slice2.siso_out[1] ;
 wire \siso256_2.tranche0.tranche3.slice2.siso_out[2] ;
 wire \siso256_2.tranche0.tranche3.slice2.siso_out[3] ;
 wire \siso256_2.tranche0.tranche3.slice3.latch_n ;
 wire \siso256_2.tranche1.t1[0] ;
 wire \siso256_2.tranche1.t1[1] ;
 wire \siso256_2.tranche1.t1[2] ;
 wire \siso256_2.tranche1.t1[3] ;
 wire \siso256_2.tranche1.t2[0] ;
 wire \siso256_2.tranche1.t2[1] ;
 wire \siso256_2.tranche1.t2[2] ;
 wire \siso256_2.tranche1.t2[3] ;
 wire \siso256_2.tranche1.t3[0] ;
 wire \siso256_2.tranche1.t3[1] ;
 wire \siso256_2.tranche1.t3[2] ;
 wire \siso256_2.tranche1.t3[3] ;
 wire \siso256_2.tranche1.tranche0.slice0.latch ;
 wire \siso256_2.tranche1.tranche0.slice0.latch_n ;
 wire \siso256_2.tranche1.tranche0.slice0.siso_out[0] ;
 wire \siso256_2.tranche1.tranche0.slice0.siso_out[1] ;
 wire \siso256_2.tranche1.tranche0.slice0.siso_out[2] ;
 wire \siso256_2.tranche1.tranche0.slice0.siso_out[3] ;
 wire \siso256_2.tranche1.tranche0.slice1.latch ;
 wire \siso256_2.tranche1.tranche0.slice1.latch_n ;
 wire \siso256_2.tranche1.tranche0.slice1.siso_out[0] ;
 wire \siso256_2.tranche1.tranche0.slice1.siso_out[1] ;
 wire \siso256_2.tranche1.tranche0.slice1.siso_out[2] ;
 wire \siso256_2.tranche1.tranche0.slice1.siso_out[3] ;
 wire \siso256_2.tranche1.tranche0.slice2.latch ;
 wire \siso256_2.tranche1.tranche0.slice2.latch_n ;
 wire \siso256_2.tranche1.tranche0.slice2.siso_out[0] ;
 wire \siso256_2.tranche1.tranche0.slice2.siso_out[1] ;
 wire \siso256_2.tranche1.tranche0.slice2.siso_out[2] ;
 wire \siso256_2.tranche1.tranche0.slice2.siso_out[3] ;
 wire \siso256_2.tranche1.tranche0.slice3.latch ;
 wire \siso256_2.tranche1.tranche0.slice3.latch_n ;
 wire \siso256_2.tranche1.tranche1.slice0.latch_n ;
 wire \siso256_2.tranche1.tranche1.slice0.siso_out[0] ;
 wire \siso256_2.tranche1.tranche1.slice0.siso_out[1] ;
 wire \siso256_2.tranche1.tranche1.slice0.siso_out[2] ;
 wire \siso256_2.tranche1.tranche1.slice0.siso_out[3] ;
 wire \siso256_2.tranche1.tranche1.slice1.latch_n ;
 wire \siso256_2.tranche1.tranche1.slice1.siso_out[0] ;
 wire \siso256_2.tranche1.tranche1.slice1.siso_out[1] ;
 wire \siso256_2.tranche1.tranche1.slice1.siso_out[2] ;
 wire \siso256_2.tranche1.tranche1.slice1.siso_out[3] ;
 wire \siso256_2.tranche1.tranche1.slice2.latch_n ;
 wire \siso256_2.tranche1.tranche1.slice2.siso_out[0] ;
 wire \siso256_2.tranche1.tranche1.slice2.siso_out[1] ;
 wire \siso256_2.tranche1.tranche1.slice2.siso_out[2] ;
 wire \siso256_2.tranche1.tranche1.slice2.siso_out[3] ;
 wire \siso256_2.tranche1.tranche1.slice3.latch_n ;
 wire \siso256_2.tranche1.tranche2.slice0.latch_n ;
 wire \siso256_2.tranche1.tranche2.slice0.siso_out[0] ;
 wire \siso256_2.tranche1.tranche2.slice0.siso_out[1] ;
 wire \siso256_2.tranche1.tranche2.slice0.siso_out[2] ;
 wire \siso256_2.tranche1.tranche2.slice0.siso_out[3] ;
 wire \siso256_2.tranche1.tranche2.slice1.latch_n ;
 wire \siso256_2.tranche1.tranche2.slice1.siso_out[0] ;
 wire \siso256_2.tranche1.tranche2.slice1.siso_out[1] ;
 wire \siso256_2.tranche1.tranche2.slice1.siso_out[2] ;
 wire \siso256_2.tranche1.tranche2.slice1.siso_out[3] ;
 wire \siso256_2.tranche1.tranche2.slice2.latch_n ;
 wire \siso256_2.tranche1.tranche2.slice2.siso_out[0] ;
 wire \siso256_2.tranche1.tranche2.slice2.siso_out[1] ;
 wire \siso256_2.tranche1.tranche2.slice2.siso_out[2] ;
 wire \siso256_2.tranche1.tranche2.slice2.siso_out[3] ;
 wire \siso256_2.tranche1.tranche2.slice3.latch_n ;
 wire \siso256_2.tranche1.tranche3.slice0.latch_n ;
 wire \siso256_2.tranche1.tranche3.slice0.siso_out[0] ;
 wire \siso256_2.tranche1.tranche3.slice0.siso_out[1] ;
 wire \siso256_2.tranche1.tranche3.slice0.siso_out[2] ;
 wire \siso256_2.tranche1.tranche3.slice0.siso_out[3] ;
 wire \siso256_2.tranche1.tranche3.slice1.latch_n ;
 wire \siso256_2.tranche1.tranche3.slice1.siso_out[0] ;
 wire \siso256_2.tranche1.tranche3.slice1.siso_out[1] ;
 wire \siso256_2.tranche1.tranche3.slice1.siso_out[2] ;
 wire \siso256_2.tranche1.tranche3.slice1.siso_out[3] ;
 wire \siso256_2.tranche1.tranche3.slice2.latch_n ;
 wire \siso256_2.tranche1.tranche3.slice2.siso_out[0] ;
 wire \siso256_2.tranche1.tranche3.slice2.siso_out[1] ;
 wire \siso256_2.tranche1.tranche3.slice2.siso_out[2] ;
 wire \siso256_2.tranche1.tranche3.slice2.siso_out[3] ;
 wire \siso256_2.tranche1.tranche3.slice3.latch_n ;
 wire \siso256_2.tranche2.t1[0] ;
 wire \siso256_2.tranche2.t1[1] ;
 wire \siso256_2.tranche2.t1[2] ;
 wire \siso256_2.tranche2.t1[3] ;
 wire \siso256_2.tranche2.t2[0] ;
 wire \siso256_2.tranche2.t2[1] ;
 wire \siso256_2.tranche2.t2[2] ;
 wire \siso256_2.tranche2.t2[3] ;
 wire \siso256_2.tranche2.t3[0] ;
 wire \siso256_2.tranche2.t3[1] ;
 wire \siso256_2.tranche2.t3[2] ;
 wire \siso256_2.tranche2.t3[3] ;
 wire \siso256_2.tranche2.tranche0.slice0.latch ;
 wire \siso256_2.tranche2.tranche0.slice0.latch_n ;
 wire \siso256_2.tranche2.tranche0.slice0.siso_out[0] ;
 wire \siso256_2.tranche2.tranche0.slice0.siso_out[1] ;
 wire \siso256_2.tranche2.tranche0.slice0.siso_out[2] ;
 wire \siso256_2.tranche2.tranche0.slice0.siso_out[3] ;
 wire \siso256_2.tranche2.tranche0.slice1.latch ;
 wire \siso256_2.tranche2.tranche0.slice1.latch_n ;
 wire \siso256_2.tranche2.tranche0.slice1.siso_out[0] ;
 wire \siso256_2.tranche2.tranche0.slice1.siso_out[1] ;
 wire \siso256_2.tranche2.tranche0.slice1.siso_out[2] ;
 wire \siso256_2.tranche2.tranche0.slice1.siso_out[3] ;
 wire \siso256_2.tranche2.tranche0.slice2.latch ;
 wire \siso256_2.tranche2.tranche0.slice2.latch_n ;
 wire \siso256_2.tranche2.tranche0.slice2.siso_out[0] ;
 wire \siso256_2.tranche2.tranche0.slice2.siso_out[1] ;
 wire \siso256_2.tranche2.tranche0.slice2.siso_out[2] ;
 wire \siso256_2.tranche2.tranche0.slice2.siso_out[3] ;
 wire \siso256_2.tranche2.tranche0.slice3.latch ;
 wire \siso256_2.tranche2.tranche0.slice3.latch_n ;
 wire \siso256_2.tranche2.tranche1.slice0.latch_n ;
 wire \siso256_2.tranche2.tranche1.slice0.siso_out[0] ;
 wire \siso256_2.tranche2.tranche1.slice0.siso_out[1] ;
 wire \siso256_2.tranche2.tranche1.slice0.siso_out[2] ;
 wire \siso256_2.tranche2.tranche1.slice0.siso_out[3] ;
 wire \siso256_2.tranche2.tranche1.slice1.latch_n ;
 wire \siso256_2.tranche2.tranche1.slice1.siso_out[0] ;
 wire \siso256_2.tranche2.tranche1.slice1.siso_out[1] ;
 wire \siso256_2.tranche2.tranche1.slice1.siso_out[2] ;
 wire \siso256_2.tranche2.tranche1.slice1.siso_out[3] ;
 wire \siso256_2.tranche2.tranche1.slice2.latch_n ;
 wire \siso256_2.tranche2.tranche1.slice2.siso_out[0] ;
 wire \siso256_2.tranche2.tranche1.slice2.siso_out[1] ;
 wire \siso256_2.tranche2.tranche1.slice2.siso_out[2] ;
 wire \siso256_2.tranche2.tranche1.slice2.siso_out[3] ;
 wire \siso256_2.tranche2.tranche1.slice3.latch_n ;
 wire \siso256_2.tranche2.tranche2.slice0.latch_n ;
 wire \siso256_2.tranche2.tranche2.slice0.siso_out[0] ;
 wire \siso256_2.tranche2.tranche2.slice0.siso_out[1] ;
 wire \siso256_2.tranche2.tranche2.slice0.siso_out[2] ;
 wire \siso256_2.tranche2.tranche2.slice0.siso_out[3] ;
 wire \siso256_2.tranche2.tranche2.slice1.latch_n ;
 wire \siso256_2.tranche2.tranche2.slice1.siso_out[0] ;
 wire \siso256_2.tranche2.tranche2.slice1.siso_out[1] ;
 wire \siso256_2.tranche2.tranche2.slice1.siso_out[2] ;
 wire \siso256_2.tranche2.tranche2.slice1.siso_out[3] ;
 wire \siso256_2.tranche2.tranche2.slice2.latch_n ;
 wire \siso256_2.tranche2.tranche2.slice2.siso_out[0] ;
 wire \siso256_2.tranche2.tranche2.slice2.siso_out[1] ;
 wire \siso256_2.tranche2.tranche2.slice2.siso_out[2] ;
 wire \siso256_2.tranche2.tranche2.slice2.siso_out[3] ;
 wire \siso256_2.tranche2.tranche2.slice3.latch_n ;
 wire \siso256_2.tranche2.tranche3.slice0.latch_n ;
 wire \siso256_2.tranche2.tranche3.slice0.siso_out[0] ;
 wire \siso256_2.tranche2.tranche3.slice0.siso_out[1] ;
 wire \siso256_2.tranche2.tranche3.slice0.siso_out[2] ;
 wire \siso256_2.tranche2.tranche3.slice0.siso_out[3] ;
 wire \siso256_2.tranche2.tranche3.slice1.latch_n ;
 wire \siso256_2.tranche2.tranche3.slice1.siso_out[0] ;
 wire \siso256_2.tranche2.tranche3.slice1.siso_out[1] ;
 wire \siso256_2.tranche2.tranche3.slice1.siso_out[2] ;
 wire \siso256_2.tranche2.tranche3.slice1.siso_out[3] ;
 wire \siso256_2.tranche2.tranche3.slice2.latch_n ;
 wire \siso256_2.tranche2.tranche3.slice2.siso_out[0] ;
 wire \siso256_2.tranche2.tranche3.slice2.siso_out[1] ;
 wire \siso256_2.tranche2.tranche3.slice2.siso_out[2] ;
 wire \siso256_2.tranche2.tranche3.slice2.siso_out[3] ;
 wire \siso256_2.tranche2.tranche3.slice3.latch_n ;
 wire \siso256_2.tranche3.t1[0] ;
 wire \siso256_2.tranche3.t1[1] ;
 wire \siso256_2.tranche3.t1[2] ;
 wire \siso256_2.tranche3.t1[3] ;
 wire \siso256_2.tranche3.t2[0] ;
 wire \siso256_2.tranche3.t2[1] ;
 wire \siso256_2.tranche3.t2[2] ;
 wire \siso256_2.tranche3.t2[3] ;
 wire \siso256_2.tranche3.t3[0] ;
 wire \siso256_2.tranche3.t3[1] ;
 wire \siso256_2.tranche3.t3[2] ;
 wire \siso256_2.tranche3.t3[3] ;
 wire \siso256_2.tranche3.tranche0.slice0.latch ;
 wire \siso256_2.tranche3.tranche0.slice0.latch_n ;
 wire \siso256_2.tranche3.tranche0.slice0.siso_out[0] ;
 wire \siso256_2.tranche3.tranche0.slice0.siso_out[1] ;
 wire \siso256_2.tranche3.tranche0.slice0.siso_out[2] ;
 wire \siso256_2.tranche3.tranche0.slice0.siso_out[3] ;
 wire \siso256_2.tranche3.tranche0.slice1.latch ;
 wire \siso256_2.tranche3.tranche0.slice1.latch_n ;
 wire \siso256_2.tranche3.tranche0.slice1.siso_out[0] ;
 wire \siso256_2.tranche3.tranche0.slice1.siso_out[1] ;
 wire \siso256_2.tranche3.tranche0.slice1.siso_out[2] ;
 wire \siso256_2.tranche3.tranche0.slice1.siso_out[3] ;
 wire \siso256_2.tranche3.tranche0.slice2.latch ;
 wire \siso256_2.tranche3.tranche0.slice2.latch_n ;
 wire \siso256_2.tranche3.tranche0.slice2.siso_out[0] ;
 wire \siso256_2.tranche3.tranche0.slice2.siso_out[1] ;
 wire \siso256_2.tranche3.tranche0.slice2.siso_out[2] ;
 wire \siso256_2.tranche3.tranche0.slice2.siso_out[3] ;
 wire \siso256_2.tranche3.tranche0.slice3.latch ;
 wire \siso256_2.tranche3.tranche0.slice3.latch_n ;
 wire \siso256_2.tranche3.tranche1.slice0.latch_n ;
 wire \siso256_2.tranche3.tranche1.slice0.siso_out[0] ;
 wire \siso256_2.tranche3.tranche1.slice0.siso_out[1] ;
 wire \siso256_2.tranche3.tranche1.slice0.siso_out[2] ;
 wire \siso256_2.tranche3.tranche1.slice0.siso_out[3] ;
 wire \siso256_2.tranche3.tranche1.slice1.latch_n ;
 wire \siso256_2.tranche3.tranche1.slice1.siso_out[0] ;
 wire \siso256_2.tranche3.tranche1.slice1.siso_out[1] ;
 wire \siso256_2.tranche3.tranche1.slice1.siso_out[2] ;
 wire \siso256_2.tranche3.tranche1.slice1.siso_out[3] ;
 wire \siso256_2.tranche3.tranche1.slice2.latch_n ;
 wire \siso256_2.tranche3.tranche1.slice2.siso_out[0] ;
 wire \siso256_2.tranche3.tranche1.slice2.siso_out[1] ;
 wire \siso256_2.tranche3.tranche1.slice2.siso_out[2] ;
 wire \siso256_2.tranche3.tranche1.slice2.siso_out[3] ;
 wire \siso256_2.tranche3.tranche1.slice3.latch_n ;
 wire \siso256_2.tranche3.tranche2.slice0.latch_n ;
 wire \siso256_2.tranche3.tranche2.slice0.siso_out[0] ;
 wire \siso256_2.tranche3.tranche2.slice0.siso_out[1] ;
 wire \siso256_2.tranche3.tranche2.slice0.siso_out[2] ;
 wire \siso256_2.tranche3.tranche2.slice0.siso_out[3] ;
 wire \siso256_2.tranche3.tranche2.slice1.latch_n ;
 wire \siso256_2.tranche3.tranche2.slice1.siso_out[0] ;
 wire \siso256_2.tranche3.tranche2.slice1.siso_out[1] ;
 wire \siso256_2.tranche3.tranche2.slice1.siso_out[2] ;
 wire \siso256_2.tranche3.tranche2.slice1.siso_out[3] ;
 wire \siso256_2.tranche3.tranche2.slice2.latch_n ;
 wire \siso256_2.tranche3.tranche2.slice2.siso_out[0] ;
 wire \siso256_2.tranche3.tranche2.slice2.siso_out[1] ;
 wire \siso256_2.tranche3.tranche2.slice2.siso_out[2] ;
 wire \siso256_2.tranche3.tranche2.slice2.siso_out[3] ;
 wire \siso256_2.tranche3.tranche2.slice3.latch_n ;
 wire \siso256_2.tranche3.tranche3.slice0.latch_n ;
 wire \siso256_2.tranche3.tranche3.slice0.siso_out[0] ;
 wire \siso256_2.tranche3.tranche3.slice0.siso_out[1] ;
 wire \siso256_2.tranche3.tranche3.slice0.siso_out[2] ;
 wire \siso256_2.tranche3.tranche3.slice0.siso_out[3] ;
 wire \siso256_2.tranche3.tranche3.slice1.latch_n ;
 wire \siso256_2.tranche3.tranche3.slice1.siso_out[0] ;
 wire \siso256_2.tranche3.tranche3.slice1.siso_out[1] ;
 wire \siso256_2.tranche3.tranche3.slice1.siso_out[2] ;
 wire \siso256_2.tranche3.tranche3.slice1.siso_out[3] ;
 wire \siso256_2.tranche3.tranche3.slice2.latch_n ;
 wire \siso256_2.tranche3.tranche3.slice2.siso_out[0] ;
 wire \siso256_2.tranche3.tranche3.slice2.siso_out[1] ;
 wire \siso256_2.tranche3.tranche3.slice2.siso_out[2] ;
 wire \siso256_2.tranche3.tranche3.slice2.siso_out[3] ;
 wire \siso256_2.tranche3.tranche3.slice3.latch_n ;
 wire \siso64_1.t1[0] ;
 wire \siso64_1.t1[1] ;
 wire \siso64_1.t1[2] ;
 wire \siso64_1.t1[3] ;
 wire \siso64_1.t2[0] ;
 wire \siso64_1.t2[1] ;
 wire \siso64_1.t2[2] ;
 wire \siso64_1.t2[3] ;
 wire \siso64_1.t3[0] ;
 wire \siso64_1.t3[1] ;
 wire \siso64_1.t3[2] ;
 wire \siso64_1.t3[3] ;
 wire \siso64_1.tranche0.slice0.latch ;
 wire \siso64_1.tranche0.slice0.latch_n ;
 wire \siso64_1.tranche0.slice0.siso_out[0] ;
 wire \siso64_1.tranche0.slice0.siso_out[1] ;
 wire \siso64_1.tranche0.slice0.siso_out[2] ;
 wire \siso64_1.tranche0.slice0.siso_out[3] ;
 wire \siso64_1.tranche0.slice1.latch ;
 wire \siso64_1.tranche0.slice1.latch_n ;
 wire \siso64_1.tranche0.slice1.siso_out[0] ;
 wire \siso64_1.tranche0.slice1.siso_out[1] ;
 wire \siso64_1.tranche0.slice1.siso_out[2] ;
 wire \siso64_1.tranche0.slice1.siso_out[3] ;
 wire \siso64_1.tranche0.slice2.latch ;
 wire \siso64_1.tranche0.slice2.latch_n ;
 wire \siso64_1.tranche0.slice2.siso_out[0] ;
 wire \siso64_1.tranche0.slice2.siso_out[1] ;
 wire \siso64_1.tranche0.slice2.siso_out[2] ;
 wire \siso64_1.tranche0.slice2.siso_out[3] ;
 wire \siso64_1.tranche0.slice3.latch ;
 wire \siso64_1.tranche0.slice3.latch_n ;
 wire \siso64_1.tranche1.slice0.latch_n ;
 wire \siso64_1.tranche1.slice0.siso_out[0] ;
 wire \siso64_1.tranche1.slice0.siso_out[1] ;
 wire \siso64_1.tranche1.slice0.siso_out[2] ;
 wire \siso64_1.tranche1.slice0.siso_out[3] ;
 wire \siso64_1.tranche1.slice1.latch_n ;
 wire \siso64_1.tranche1.slice1.siso_out[0] ;
 wire \siso64_1.tranche1.slice1.siso_out[1] ;
 wire \siso64_1.tranche1.slice1.siso_out[2] ;
 wire \siso64_1.tranche1.slice1.siso_out[3] ;
 wire \siso64_1.tranche1.slice2.latch_n ;
 wire \siso64_1.tranche1.slice2.siso_out[0] ;
 wire \siso64_1.tranche1.slice2.siso_out[1] ;
 wire \siso64_1.tranche1.slice2.siso_out[2] ;
 wire \siso64_1.tranche1.slice2.siso_out[3] ;
 wire \siso64_1.tranche1.slice3.latch_n ;
 wire \siso64_1.tranche2.slice0.latch_n ;
 wire \siso64_1.tranche2.slice0.siso_out[0] ;
 wire \siso64_1.tranche2.slice0.siso_out[1] ;
 wire \siso64_1.tranche2.slice0.siso_out[2] ;
 wire \siso64_1.tranche2.slice0.siso_out[3] ;
 wire \siso64_1.tranche2.slice1.latch_n ;
 wire \siso64_1.tranche2.slice1.siso_out[0] ;
 wire \siso64_1.tranche2.slice1.siso_out[1] ;
 wire \siso64_1.tranche2.slice1.siso_out[2] ;
 wire \siso64_1.tranche2.slice1.siso_out[3] ;
 wire \siso64_1.tranche2.slice2.latch_n ;
 wire \siso64_1.tranche2.slice2.siso_out[0] ;
 wire \siso64_1.tranche2.slice2.siso_out[1] ;
 wire \siso64_1.tranche2.slice2.siso_out[2] ;
 wire \siso64_1.tranche2.slice2.siso_out[3] ;
 wire \siso64_1.tranche2.slice3.latch_n ;
 wire \siso64_1.tranche3.slice0.latch_n ;
 wire \siso64_1.tranche3.slice0.siso_out[0] ;
 wire \siso64_1.tranche3.slice0.siso_out[1] ;
 wire \siso64_1.tranche3.slice0.siso_out[2] ;
 wire \siso64_1.tranche3.slice0.siso_out[3] ;
 wire \siso64_1.tranche3.slice1.latch_n ;
 wire \siso64_1.tranche3.slice1.siso_out[0] ;
 wire \siso64_1.tranche3.slice1.siso_out[1] ;
 wire \siso64_1.tranche3.slice1.siso_out[2] ;
 wire \siso64_1.tranche3.slice1.siso_out[3] ;
 wire \siso64_1.tranche3.slice2.latch_n ;
 wire \siso64_1.tranche3.slice2.siso_out[0] ;
 wire \siso64_1.tranche3.slice2.siso_out[1] ;
 wire \siso64_1.tranche3.slice2.siso_out[2] ;
 wire \siso64_1.tranche3.slice2.siso_out[3] ;
 wire \siso64_1.tranche3.slice3.latch_n ;
 wire \siso64_2.t1[0] ;
 wire \siso64_2.t1[1] ;
 wire \siso64_2.t1[2] ;
 wire \siso64_2.t1[3] ;
 wire \siso64_2.t2[0] ;
 wire \siso64_2.t2[1] ;
 wire \siso64_2.t2[2] ;
 wire \siso64_2.t2[3] ;
 wire \siso64_2.t3[0] ;
 wire \siso64_2.t3[1] ;
 wire \siso64_2.t3[2] ;
 wire \siso64_2.t3[3] ;
 wire \siso64_2.tranche0.slice0.latch ;
 wire \siso64_2.tranche0.slice0.latch_n ;
 wire \siso64_2.tranche0.slice0.siso_out[0] ;
 wire \siso64_2.tranche0.slice0.siso_out[1] ;
 wire \siso64_2.tranche0.slice0.siso_out[2] ;
 wire \siso64_2.tranche0.slice0.siso_out[3] ;
 wire \siso64_2.tranche0.slice1.latch ;
 wire \siso64_2.tranche0.slice1.latch_n ;
 wire \siso64_2.tranche0.slice1.siso_out[0] ;
 wire \siso64_2.tranche0.slice1.siso_out[1] ;
 wire \siso64_2.tranche0.slice1.siso_out[2] ;
 wire \siso64_2.tranche0.slice1.siso_out[3] ;
 wire \siso64_2.tranche0.slice2.latch ;
 wire \siso64_2.tranche0.slice2.latch_n ;
 wire \siso64_2.tranche0.slice2.siso_out[0] ;
 wire \siso64_2.tranche0.slice2.siso_out[1] ;
 wire \siso64_2.tranche0.slice2.siso_out[2] ;
 wire \siso64_2.tranche0.slice2.siso_out[3] ;
 wire \siso64_2.tranche0.slice3.latch ;
 wire \siso64_2.tranche0.slice3.latch_n ;
 wire \siso64_2.tranche1.slice0.latch_n ;
 wire \siso64_2.tranche1.slice0.siso_out[0] ;
 wire \siso64_2.tranche1.slice0.siso_out[1] ;
 wire \siso64_2.tranche1.slice0.siso_out[2] ;
 wire \siso64_2.tranche1.slice0.siso_out[3] ;
 wire \siso64_2.tranche1.slice1.latch_n ;
 wire \siso64_2.tranche1.slice1.siso_out[0] ;
 wire \siso64_2.tranche1.slice1.siso_out[1] ;
 wire \siso64_2.tranche1.slice1.siso_out[2] ;
 wire \siso64_2.tranche1.slice1.siso_out[3] ;
 wire \siso64_2.tranche1.slice2.latch_n ;
 wire \siso64_2.tranche1.slice2.siso_out[0] ;
 wire \siso64_2.tranche1.slice2.siso_out[1] ;
 wire \siso64_2.tranche1.slice2.siso_out[2] ;
 wire \siso64_2.tranche1.slice2.siso_out[3] ;
 wire \siso64_2.tranche1.slice3.latch_n ;
 wire \siso64_2.tranche2.slice0.latch_n ;
 wire \siso64_2.tranche2.slice0.siso_out[0] ;
 wire \siso64_2.tranche2.slice0.siso_out[1] ;
 wire \siso64_2.tranche2.slice0.siso_out[2] ;
 wire \siso64_2.tranche2.slice0.siso_out[3] ;
 wire \siso64_2.tranche2.slice1.latch_n ;
 wire \siso64_2.tranche2.slice1.siso_out[0] ;
 wire \siso64_2.tranche2.slice1.siso_out[1] ;
 wire \siso64_2.tranche2.slice1.siso_out[2] ;
 wire \siso64_2.tranche2.slice1.siso_out[3] ;
 wire \siso64_2.tranche2.slice2.latch_n ;
 wire \siso64_2.tranche2.slice2.siso_out[0] ;
 wire \siso64_2.tranche2.slice2.siso_out[1] ;
 wire \siso64_2.tranche2.slice2.siso_out[2] ;
 wire \siso64_2.tranche2.slice2.siso_out[3] ;
 wire \siso64_2.tranche2.slice3.latch_n ;
 wire \siso64_2.tranche3.slice0.latch_n ;
 wire \siso64_2.tranche3.slice0.siso_out[0] ;
 wire \siso64_2.tranche3.slice0.siso_out[1] ;
 wire \siso64_2.tranche3.slice0.siso_out[2] ;
 wire \siso64_2.tranche3.slice0.siso_out[3] ;
 wire \siso64_2.tranche3.slice1.latch_n ;
 wire \siso64_2.tranche3.slice1.siso_out[0] ;
 wire \siso64_2.tranche3.slice1.siso_out[1] ;
 wire \siso64_2.tranche3.slice1.siso_out[2] ;
 wire \siso64_2.tranche3.slice1.siso_out[3] ;
 wire \siso64_2.tranche3.slice2.latch_n ;
 wire \siso64_2.tranche3.slice2.siso_out[0] ;
 wire \siso64_2.tranche3.slice2.siso_out[1] ;
 wire \siso64_2.tranche3.slice2.siso_out[2] ;
 wire \siso64_2.tranche3.slice2.siso_out[3] ;
 wire \siso64_2.tranche3.slice3.latch_n ;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net9;
 wire net10;
 wire net;
 wire clknet_2_0__leaf_CLK_OUT;
 wire clknet_2_1__leaf_CLK_OUT;
 wire clknet_2_2__leaf_CLK_OUT;
 wire clknet_2_3__leaf_CLK_OUT;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;

 sg13cmos5l_dfrbpq_2 DFF_reset (.RESET_B(net1),
    .D(net4),
    .Q(INT_RESET),
    .CLK(clknet_2_3__leaf_CLK_OUT));
 sg13cmos5l_decap_4 FILLER_0_0 ();
 sg13cmos5l_decap_4 FILLER_0_109 ();
 sg13cmos5l_fill_1 FILLER_0_113 ();
 sg13cmos5l_decap_8 FILLER_0_171 ();
 sg13cmos5l_decap_8 FILLER_0_178 ();
 sg13cmos5l_decap_8 FILLER_0_185 ();
 sg13cmos5l_fill_2 FILLER_0_192 ();
 sg13cmos5l_fill_2 FILLER_0_228 ();
 sg13cmos5l_fill_1 FILLER_0_247 ();
 sg13cmos5l_decap_8 FILLER_0_271 ();
 sg13cmos5l_fill_2 FILLER_0_278 ();
 sg13cmos5l_fill_1 FILLER_0_280 ();
 sg13cmos5l_decap_8 FILLER_0_315 ();
 sg13cmos5l_fill_1 FILLER_0_322 ();
 sg13cmos5l_decap_8 FILLER_0_397 ();
 sg13cmos5l_fill_2 FILLER_0_4 ();
 sg13cmos5l_fill_1 FILLER_0_40 ();
 sg13cmos5l_decap_4 FILLER_0_404 ();
 sg13cmos5l_fill_1 FILLER_0_408 ();
 sg13cmos5l_decap_8 FILLER_10_0 ();
 sg13cmos5l_decap_8 FILLER_10_105 ();
 sg13cmos5l_decap_4 FILLER_10_112 ();
 sg13cmos5l_decap_8 FILLER_10_128 ();
 sg13cmos5l_decap_8 FILLER_10_192 ();
 sg13cmos5l_decap_8 FILLER_10_199 ();
 sg13cmos5l_decap_8 FILLER_10_206 ();
 sg13cmos5l_decap_4 FILLER_10_213 ();
 sg13cmos5l_decap_4 FILLER_10_314 ();
 sg13cmos5l_fill_2 FILLER_10_59 ();
 sg13cmos5l_fill_1 FILLER_10_7 ();
 sg13cmos5l_fill_2 FILLER_10_90 ();
 sg13cmos5l_fill_1 FILLER_10_92 ();
 sg13cmos5l_decap_4 FILLER_11_137 ();
 sg13cmos5l_fill_2 FILLER_11_141 ();
 sg13cmos5l_fill_2 FILLER_11_206 ();
 sg13cmos5l_fill_1 FILLER_11_208 ();
 sg13cmos5l_decap_4 FILLER_11_34 ();
 sg13cmos5l_fill_1 FILLER_11_38 ();
 sg13cmos5l_decap_4 FILLER_11_403 ();
 sg13cmos5l_fill_2 FILLER_11_407 ();
 sg13cmos5l_fill_2 FILLER_11_90 ();
 sg13cmos5l_decap_4 FILLER_11_98 ();
 sg13cmos5l_decap_8 FILLER_12_143 ();
 sg13cmos5l_decap_4 FILLER_12_150 ();
 sg13cmos5l_fill_1 FILLER_12_154 ();
 sg13cmos5l_decap_8 FILLER_12_195 ();
 sg13cmos5l_decap_8 FILLER_12_202 ();
 sg13cmos5l_fill_2 FILLER_12_306 ();
 sg13cmos5l_decap_4 FILLER_12_331 ();
 sg13cmos5l_decap_4 FILLER_12_403 ();
 sg13cmos5l_fill_2 FILLER_12_407 ();
 sg13cmos5l_decap_4 FILLER_12_51 ();
 sg13cmos5l_fill_1 FILLER_12_55 ();
 sg13cmos5l_decap_8 FILLER_13_137 ();
 sg13cmos5l_decap_8 FILLER_13_144 ();
 sg13cmos5l_fill_2 FILLER_13_151 ();
 sg13cmos5l_fill_1 FILLER_13_153 ();
 sg13cmos5l_fill_1 FILLER_13_171 ();
 sg13cmos5l_decap_8 FILLER_13_189 ();
 sg13cmos5l_decap_8 FILLER_13_196 ();
 sg13cmos5l_decap_4 FILLER_13_203 ();
 sg13cmos5l_fill_2 FILLER_13_207 ();
 sg13cmos5l_fill_2 FILLER_13_243 ();
 sg13cmos5l_fill_1 FILLER_13_245 ();
 sg13cmos5l_fill_1 FILLER_13_263 ();
 sg13cmos5l_decap_4 FILLER_13_304 ();
 sg13cmos5l_fill_1 FILLER_13_331 ();
 sg13cmos5l_fill_2 FILLER_13_406 ();
 sg13cmos5l_fill_1 FILLER_13_408 ();
 sg13cmos5l_decap_4 FILLER_13_51 ();
 sg13cmos5l_fill_1 FILLER_13_55 ();
 sg13cmos5l_decap_8 FILLER_13_96 ();
 sg13cmos5l_decap_4 FILLER_14_0 ();
 sg13cmos5l_decap_8 FILLER_14_104 ();
 sg13cmos5l_fill_2 FILLER_14_111 ();
 sg13cmos5l_decap_4 FILLER_14_136 ();
 sg13cmos5l_fill_2 FILLER_14_140 ();
 sg13cmos5l_fill_1 FILLER_14_171 ();
 sg13cmos5l_decap_8 FILLER_14_189 ();
 sg13cmos5l_decap_4 FILLER_14_196 ();
 sg13cmos5l_fill_1 FILLER_14_200 ();
 sg13cmos5l_decap_4 FILLER_14_252 ();
 sg13cmos5l_fill_2 FILLER_14_27 ();
 sg13cmos5l_decap_4 FILLER_14_303 ();
 sg13cmos5l_fill_1 FILLER_14_307 ();
 sg13cmos5l_fill_1 FILLER_14_331 ();
 sg13cmos5l_decap_4 FILLER_14_355 ();
 sg13cmos5l_fill_1 FILLER_14_359 ();
 sg13cmos5l_decap_8 FILLER_14_394 ();
 sg13cmos5l_decap_8 FILLER_14_401 ();
 sg13cmos5l_fill_1 FILLER_14_408 ();
 sg13cmos5l_decap_4 FILLER_14_52 ();
 sg13cmos5l_decap_8 FILLER_14_90 ();
 sg13cmos5l_decap_8 FILLER_14_97 ();
 sg13cmos5l_decap_8 FILLER_15_0 ();
 sg13cmos5l_decap_8 FILLER_15_108 ();
 sg13cmos5l_decap_4 FILLER_15_115 ();
 sg13cmos5l_decap_4 FILLER_15_136 ();
 sg13cmos5l_fill_2 FILLER_15_140 ();
 sg13cmos5l_decap_8 FILLER_15_193 ();
 sg13cmos5l_fill_1 FILLER_15_200 ();
 sg13cmos5l_decap_4 FILLER_15_241 ();
 sg13cmos5l_fill_1 FILLER_15_245 ();
 sg13cmos5l_fill_2 FILLER_15_27 ();
 sg13cmos5l_decap_4 FILLER_15_304 ();
 sg13cmos5l_fill_1 FILLER_15_348 ();
 sg13cmos5l_decap_8 FILLER_15_400 ();
 sg13cmos5l_fill_2 FILLER_15_407 ();
 sg13cmos5l_decap_4 FILLER_15_52 ();
 sg13cmos5l_fill_2 FILLER_15_7 ();
 sg13cmos5l_fill_1 FILLER_15_9 ();
 sg13cmos5l_fill_1 FILLER_15_90 ();
 sg13cmos5l_decap_8 FILLER_16_136 ();
 sg13cmos5l_decap_8 FILLER_16_143 ();
 sg13cmos5l_fill_1 FILLER_16_235 ();
 sg13cmos5l_fill_1 FILLER_16_299 ();
 sg13cmos5l_decap_8 FILLER_16_402 ();
 sg13cmos5l_decap_8 FILLER_17_0 ();
 sg13cmos5l_decap_8 FILLER_17_136 ();
 sg13cmos5l_decap_8 FILLER_17_143 ();
 sg13cmos5l_fill_2 FILLER_17_150 ();
 sg13cmos5l_fill_1 FILLER_17_152 ();
 sg13cmos5l_decap_8 FILLER_17_187 ();
 sg13cmos5l_decap_8 FILLER_17_194 ();
 sg13cmos5l_decap_8 FILLER_17_218 ();
 sg13cmos5l_fill_1 FILLER_17_225 ();
 sg13cmos5l_decap_4 FILLER_17_232 ();
 sg13cmos5l_decap_8 FILLER_17_310 ();
 sg13cmos5l_decap_8 FILLER_17_402 ();
 sg13cmos5l_fill_1 FILLER_17_50 ();
 sg13cmos5l_fill_2 FILLER_17_7 ();
 sg13cmos5l_fill_1 FILLER_17_9 ();
 sg13cmos5l_decap_8 FILLER_18_0 ();
 sg13cmos5l_fill_1 FILLER_18_108 ();
 sg13cmos5l_decap_8 FILLER_18_138 ();
 sg13cmos5l_decap_4 FILLER_18_145 ();
 sg13cmos5l_fill_1 FILLER_18_149 ();
 sg13cmos5l_fill_2 FILLER_18_201 ();
 sg13cmos5l_fill_1 FILLER_18_203 ();
 sg13cmos5l_decap_8 FILLER_18_221 ();
 sg13cmos5l_fill_1 FILLER_18_228 ();
 sg13cmos5l_decap_4 FILLER_18_275 ();
 sg13cmos5l_decap_4 FILLER_18_319 ();
 sg13cmos5l_fill_2 FILLER_18_323 ();
 sg13cmos5l_fill_1 FILLER_18_331 ();
 sg13cmos5l_decap_8 FILLER_18_395 ();
 sg13cmos5l_decap_8 FILLER_18_402 ();
 sg13cmos5l_fill_2 FILLER_18_50 ();
 sg13cmos5l_decap_8 FILLER_18_58 ();
 sg13cmos5l_fill_2 FILLER_18_65 ();
 sg13cmos5l_fill_2 FILLER_18_7 ();
 sg13cmos5l_fill_1 FILLER_18_9 ();
 sg13cmos5l_fill_1 FILLER_18_90 ();
 sg13cmos5l_decap_8 FILLER_19_0 ();
 sg13cmos5l_decap_8 FILLER_19_126 ();
 sg13cmos5l_decap_4 FILLER_19_133 ();
 sg13cmos5l_fill_1 FILLER_19_137 ();
 sg13cmos5l_decap_4 FILLER_19_161 ();
 sg13cmos5l_fill_2 FILLER_19_165 ();
 sg13cmos5l_decap_4 FILLER_19_201 ();
 sg13cmos5l_fill_1 FILLER_19_205 ();
 sg13cmos5l_decap_8 FILLER_19_223 ();
 sg13cmos5l_decap_4 FILLER_19_230 ();
 sg13cmos5l_fill_2 FILLER_19_234 ();
 sg13cmos5l_decap_4 FILLER_19_253 ();
 sg13cmos5l_fill_2 FILLER_19_257 ();
 sg13cmos5l_decap_4 FILLER_19_265 ();
 sg13cmos5l_fill_2 FILLER_19_269 ();
 sg13cmos5l_decap_4 FILLER_19_27 ();
 sg13cmos5l_fill_2 FILLER_19_31 ();
 sg13cmos5l_decap_4 FILLER_19_334 ();
 sg13cmos5l_fill_1 FILLER_19_338 ();
 sg13cmos5l_decap_8 FILLER_19_345 ();
 sg13cmos5l_fill_2 FILLER_19_352 ();
 sg13cmos5l_fill_1 FILLER_19_354 ();
 sg13cmos5l_decap_8 FILLER_19_395 ();
 sg13cmos5l_decap_8 FILLER_19_402 ();
 sg13cmos5l_decap_8 FILLER_19_50 ();
 sg13cmos5l_fill_2 FILLER_19_57 ();
 sg13cmos5l_decap_4 FILLER_19_65 ();
 sg13cmos5l_fill_2 FILLER_19_7 ();
 sg13cmos5l_fill_1 FILLER_19_75 ();
 sg13cmos5l_fill_1 FILLER_19_9 ();
 sg13cmos5l_fill_2 FILLER_19_94 ();
 sg13cmos5l_fill_1 FILLER_19_96 ();
 sg13cmos5l_fill_2 FILLER_1_0 ();
 sg13cmos5l_fill_2 FILLER_1_173 ();
 sg13cmos5l_fill_1 FILLER_1_2 ();
 sg13cmos5l_fill_2 FILLER_1_209 ();
 sg13cmos5l_fill_2 FILLER_1_228 ();
 sg13cmos5l_fill_1 FILLER_1_247 ();
 sg13cmos5l_fill_2 FILLER_1_407 ();
 sg13cmos5l_decap_8 FILLER_20_0 ();
 sg13cmos5l_fill_2 FILLER_20_124 ();
 sg13cmos5l_fill_1 FILLER_20_126 ();
 sg13cmos5l_fill_2 FILLER_20_14 ();
 sg13cmos5l_decap_4 FILLER_20_161 ();
 sg13cmos5l_fill_1 FILLER_20_165 ();
 sg13cmos5l_decap_8 FILLER_20_223 ();
 sg13cmos5l_decap_8 FILLER_20_230 ();
 sg13cmos5l_decap_8 FILLER_20_237 ();
 sg13cmos5l_decap_4 FILLER_20_244 ();
 sg13cmos5l_fill_1 FILLER_20_248 ();
 sg13cmos5l_fill_1 FILLER_20_255 ();
 sg13cmos5l_decap_4 FILLER_20_324 ();
 sg13cmos5l_fill_1 FILLER_20_328 ();
 sg13cmos5l_decap_8 FILLER_20_346 ();
 sg13cmos5l_decap_8 FILLER_20_353 ();
 sg13cmos5l_fill_1 FILLER_20_360 ();
 sg13cmos5l_decap_8 FILLER_20_395 ();
 sg13cmos5l_decap_8 FILLER_20_402 ();
 sg13cmos5l_decap_8 FILLER_20_56 ();
 sg13cmos5l_decap_8 FILLER_20_63 ();
 sg13cmos5l_decap_8 FILLER_20_7 ();
 sg13cmos5l_fill_1 FILLER_20_70 ();
 sg13cmos5l_decap_8 FILLER_21_0 ();
 sg13cmos5l_decap_8 FILLER_21_106 ();
 sg13cmos5l_decap_8 FILLER_21_113 ();
 sg13cmos5l_fill_1 FILLER_21_120 ();
 sg13cmos5l_decap_8 FILLER_21_223 ();
 sg13cmos5l_decap_8 FILLER_21_230 ();
 sg13cmos5l_decap_8 FILLER_21_237 ();
 sg13cmos5l_decap_8 FILLER_21_244 ();
 sg13cmos5l_fill_2 FILLER_21_251 ();
 sg13cmos5l_fill_1 FILLER_21_253 ();
 sg13cmos5l_fill_2 FILLER_21_305 ();
 sg13cmos5l_fill_1 FILLER_21_307 ();
 sg13cmos5l_fill_2 FILLER_21_326 ();
 sg13cmos5l_fill_1 FILLER_21_328 ();
 sg13cmos5l_fill_2 FILLER_21_358 ();
 sg13cmos5l_fill_1 FILLER_21_360 ();
 sg13cmos5l_fill_2 FILLER_21_407 ();
 sg13cmos5l_decap_8 FILLER_21_50 ();
 sg13cmos5l_decap_8 FILLER_21_57 ();
 sg13cmos5l_fill_2 FILLER_21_64 ();
 sg13cmos5l_fill_2 FILLER_21_7 ();
 sg13cmos5l_fill_1 FILLER_21_9 ();
 sg13cmos5l_decap_8 FILLER_22_0 ();
 sg13cmos5l_decap_8 FILLER_22_106 ();
 sg13cmos5l_decap_8 FILLER_22_113 ();
 sg13cmos5l_fill_2 FILLER_22_120 ();
 sg13cmos5l_fill_1 FILLER_22_122 ();
 sg13cmos5l_decap_8 FILLER_22_174 ();
 sg13cmos5l_decap_8 FILLER_22_181 ();
 sg13cmos5l_fill_1 FILLER_22_188 ();
 sg13cmos5l_decap_8 FILLER_22_223 ();
 sg13cmos5l_decap_8 FILLER_22_230 ();
 sg13cmos5l_fill_2 FILLER_22_237 ();
 sg13cmos5l_fill_1 FILLER_22_239 ();
 sg13cmos5l_fill_2 FILLER_22_308 ();
 sg13cmos5l_fill_1 FILLER_22_328 ();
 sg13cmos5l_fill_2 FILLER_22_363 ();
 sg13cmos5l_fill_1 FILLER_22_365 ();
 sg13cmos5l_decap_8 FILLER_22_400 ();
 sg13cmos5l_fill_2 FILLER_22_407 ();
 sg13cmos5l_decap_4 FILLER_22_50 ();
 sg13cmos5l_fill_1 FILLER_22_54 ();
 sg13cmos5l_fill_2 FILLER_22_7 ();
 sg13cmos5l_fill_1 FILLER_22_9 ();
 sg13cmos5l_decap_8 FILLER_23_0 ();
 sg13cmos5l_decap_4 FILLER_23_106 ();
 sg13cmos5l_fill_1 FILLER_23_110 ();
 sg13cmos5l_fill_2 FILLER_23_174 ();
 sg13cmos5l_decap_8 FILLER_23_182 ();
 sg13cmos5l_fill_2 FILLER_23_189 ();
 sg13cmos5l_decap_4 FILLER_23_220 ();
 sg13cmos5l_decap_8 FILLER_23_275 ();
 sg13cmos5l_fill_2 FILLER_23_282 ();
 sg13cmos5l_decap_4 FILLER_23_319 ();
 sg13cmos5l_fill_2 FILLER_23_380 ();
 sg13cmos5l_fill_1 FILLER_23_382 ();
 sg13cmos5l_fill_2 FILLER_23_406 ();
 sg13cmos5l_fill_1 FILLER_23_408 ();
 sg13cmos5l_decap_4 FILLER_23_44 ();
 sg13cmos5l_fill_1 FILLER_23_48 ();
 sg13cmos5l_fill_2 FILLER_23_7 ();
 sg13cmos5l_fill_1 FILLER_23_9 ();
 sg13cmos5l_fill_1 FILLER_24_0 ();
 sg13cmos5l_decap_8 FILLER_24_103 ();
 sg13cmos5l_fill_1 FILLER_24_110 ();
 sg13cmos5l_fill_1 FILLER_24_128 ();
 sg13cmos5l_decap_4 FILLER_24_146 ();
 sg13cmos5l_fill_1 FILLER_24_150 ();
 sg13cmos5l_decap_4 FILLER_24_174 ();
 sg13cmos5l_decap_4 FILLER_24_201 ();
 sg13cmos5l_fill_1 FILLER_24_205 ();
 sg13cmos5l_decap_8 FILLER_24_212 ();
 sg13cmos5l_decap_8 FILLER_24_219 ();
 sg13cmos5l_fill_1 FILLER_24_226 ();
 sg13cmos5l_decap_8 FILLER_24_261 ();
 sg13cmos5l_decap_8 FILLER_24_268 ();
 sg13cmos5l_decap_8 FILLER_24_275 ();
 sg13cmos5l_decap_8 FILLER_24_282 ();
 sg13cmos5l_fill_1 FILLER_24_289 ();
 sg13cmos5l_decap_4 FILLER_24_336 ();
 sg13cmos5l_fill_1 FILLER_24_340 ();
 sg13cmos5l_decap_8 FILLER_24_35 ();
 sg13cmos5l_fill_2 FILLER_24_381 ();
 sg13cmos5l_fill_2 FILLER_24_406 ();
 sg13cmos5l_fill_1 FILLER_24_408 ();
 sg13cmos5l_fill_2 FILLER_24_42 ();
 sg13cmos5l_fill_1 FILLER_24_44 ();
 sg13cmos5l_decap_8 FILLER_24_96 ();
 sg13cmos5l_decap_8 FILLER_25_0 ();
 sg13cmos5l_decap_8 FILLER_25_103 ();
 sg13cmos5l_fill_1 FILLER_25_110 ();
 sg13cmos5l_fill_1 FILLER_25_128 ();
 sg13cmos5l_fill_2 FILLER_25_146 ();
 sg13cmos5l_fill_1 FILLER_25_165 ();
 sg13cmos5l_decap_8 FILLER_25_217 ();
 sg13cmos5l_fill_2 FILLER_25_224 ();
 sg13cmos5l_fill_1 FILLER_25_255 ();
 sg13cmos5l_decap_4 FILLER_25_27 ();
 sg13cmos5l_decap_8 FILLER_25_279 ();
 sg13cmos5l_decap_4 FILLER_25_286 ();
 sg13cmos5l_decap_4 FILLER_25_48 ();
 sg13cmos5l_fill_2 FILLER_25_7 ();
 sg13cmos5l_fill_1 FILLER_25_9 ();
 sg13cmos5l_decap_8 FILLER_26_0 ();
 sg13cmos5l_fill_1 FILLER_26_11 ();
 sg13cmos5l_fill_2 FILLER_26_128 ();
 sg13cmos5l_fill_2 FILLER_26_147 ();
 sg13cmos5l_fill_1 FILLER_26_166 ();
 sg13cmos5l_decap_8 FILLER_26_224 ();
 sg13cmos5l_fill_2 FILLER_26_231 ();
 sg13cmos5l_decap_8 FILLER_26_279 ();
 sg13cmos5l_decap_4 FILLER_26_286 ();
 sg13cmos5l_decap_4 FILLER_26_7 ();
 sg13cmos5l_fill_1 FILLER_26_80 ();
 sg13cmos5l_fill_1 FILLER_26_93 ();
 sg13cmos5l_decap_8 FILLER_27_0 ();
 sg13cmos5l_fill_1 FILLER_27_105 ();
 sg13cmos5l_fill_1 FILLER_27_11 ();
 sg13cmos5l_fill_2 FILLER_27_146 ();
 sg13cmos5l_fill_1 FILLER_27_148 ();
 sg13cmos5l_fill_1 FILLER_27_166 ();
 sg13cmos5l_fill_1 FILLER_27_218 ();
 sg13cmos5l_decap_4 FILLER_27_236 ();
 sg13cmos5l_decap_8 FILLER_27_286 ();
 sg13cmos5l_decap_8 FILLER_27_293 ();
 sg13cmos5l_decap_4 FILLER_27_351 ();
 sg13cmos5l_fill_1 FILLER_27_372 ();
 sg13cmos5l_fill_2 FILLER_27_407 ();
 sg13cmos5l_decap_4 FILLER_27_7 ();
 sg13cmos5l_fill_1 FILLER_27_80 ();
 sg13cmos5l_fill_2 FILLER_28_0 ();
 sg13cmos5l_fill_2 FILLER_28_132 ();
 sg13cmos5l_fill_2 FILLER_28_146 ();
 sg13cmos5l_fill_1 FILLER_28_148 ();
 sg13cmos5l_fill_1 FILLER_28_166 ();
 sg13cmos5l_fill_1 FILLER_28_184 ();
 sg13cmos5l_fill_2 FILLER_28_197 ();
 sg13cmos5l_fill_1 FILLER_28_199 ();
 sg13cmos5l_decap_8 FILLER_28_234 ();
 sg13cmos5l_decap_4 FILLER_28_241 ();
 sg13cmos5l_decap_4 FILLER_28_262 ();
 sg13cmos5l_decap_8 FILLER_28_301 ();
 sg13cmos5l_decap_4 FILLER_28_308 ();
 sg13cmos5l_fill_2 FILLER_28_380 ();
 sg13cmos5l_fill_1 FILLER_28_382 ();
 sg13cmos5l_decap_8 FILLER_28_400 ();
 sg13cmos5l_fill_2 FILLER_28_407 ();
 sg13cmos5l_fill_2 FILLER_28_48 ();
 sg13cmos5l_fill_1 FILLER_28_67 ();
 sg13cmos5l_fill_2 FILLER_28_85 ();
 sg13cmos5l_decap_4 FILLER_28_99 ();
 sg13cmos5l_fill_2 FILLER_29_102 ();
 sg13cmos5l_fill_1 FILLER_29_104 ();
 sg13cmos5l_decap_4 FILLER_29_149 ();
 sg13cmos5l_decap_4 FILLER_29_194 ();
 sg13cmos5l_fill_2 FILLER_29_198 ();
 sg13cmos5l_fill_2 FILLER_29_246 ();
 sg13cmos5l_fill_2 FILLER_29_305 ();
 sg13cmos5l_fill_1 FILLER_29_307 ();
 sg13cmos5l_decap_8 FILLER_29_376 ();
 sg13cmos5l_decap_8 FILLER_29_400 ();
 sg13cmos5l_fill_2 FILLER_29_407 ();
 sg13cmos5l_decap_4 FILLER_29_51 ();
 sg13cmos5l_fill_1 FILLER_29_55 ();
 sg13cmos5l_decap_8 FILLER_2_0 ();
 sg13cmos5l_fill_1 FILLER_2_14 ();
 sg13cmos5l_fill_2 FILLER_2_173 ();
 sg13cmos5l_fill_2 FILLER_2_209 ();
 sg13cmos5l_fill_2 FILLER_2_228 ();
 sg13cmos5l_fill_1 FILLER_2_247 ();
 sg13cmos5l_decap_4 FILLER_2_32 ();
 sg13cmos5l_fill_1 FILLER_2_36 ();
 sg13cmos5l_fill_2 FILLER_2_407 ();
 sg13cmos5l_decap_8 FILLER_2_7 ();
 sg13cmos5l_decap_8 FILLER_30_0 ();
 sg13cmos5l_fill_2 FILLER_30_158 ();
 sg13cmos5l_fill_1 FILLER_30_160 ();
 sg13cmos5l_fill_1 FILLER_30_195 ();
 sg13cmos5l_fill_2 FILLER_30_256 ();
 sg13cmos5l_fill_1 FILLER_30_258 ();
 sg13cmos5l_fill_2 FILLER_30_314 ();
 sg13cmos5l_fill_2 FILLER_30_322 ();
 sg13cmos5l_fill_1 FILLER_30_324 ();
 sg13cmos5l_decap_8 FILLER_30_399 ();
 sg13cmos5l_fill_2 FILLER_30_406 ();
 sg13cmos5l_fill_1 FILLER_30_408 ();
 sg13cmos5l_fill_1 FILLER_30_44 ();
 sg13cmos5l_decap_4 FILLER_30_51 ();
 sg13cmos5l_fill_1 FILLER_30_55 ();
 sg13cmos5l_fill_2 FILLER_30_7 ();
 sg13cmos5l_fill_1 FILLER_30_9 ();
 sg13cmos5l_decap_4 FILLER_30_90 ();
 sg13cmos5l_fill_1 FILLER_30_94 ();
 sg13cmos5l_decap_8 FILLER_31_0 ();
 sg13cmos5l_fill_2 FILLER_31_166 ();
 sg13cmos5l_fill_1 FILLER_31_168 ();
 sg13cmos5l_fill_1 FILLER_31_261 ();
 sg13cmos5l_fill_1 FILLER_31_283 ();
 sg13cmos5l_decap_4 FILLER_31_335 ();
 sg13cmos5l_fill_1 FILLER_31_339 ();
 sg13cmos5l_fill_2 FILLER_31_369 ();
 sg13cmos5l_fill_1 FILLER_31_371 ();
 sg13cmos5l_fill_2 FILLER_31_406 ();
 sg13cmos5l_fill_1 FILLER_31_408 ();
 sg13cmos5l_fill_2 FILLER_31_7 ();
 sg13cmos5l_fill_1 FILLER_31_9 ();
 sg13cmos5l_fill_2 FILLER_31_96 ();
 sg13cmos5l_decap_8 FILLER_32_0 ();
 sg13cmos5l_fill_1 FILLER_32_154 ();
 sg13cmos5l_fill_2 FILLER_32_170 ();
 sg13cmos5l_fill_2 FILLER_32_201 ();
 sg13cmos5l_fill_1 FILLER_32_203 ();
 sg13cmos5l_fill_1 FILLER_32_210 ();
 sg13cmos5l_fill_1 FILLER_32_341 ();
 sg13cmos5l_fill_1 FILLER_32_359 ();
 sg13cmos5l_fill_2 FILLER_32_406 ();
 sg13cmos5l_fill_1 FILLER_32_408 ();
 sg13cmos5l_decap_4 FILLER_32_50 ();
 sg13cmos5l_fill_2 FILLER_32_54 ();
 sg13cmos5l_fill_2 FILLER_32_7 ();
 sg13cmos5l_fill_1 FILLER_32_9 ();
 sg13cmos5l_fill_1 FILLER_33_0 ();
 sg13cmos5l_fill_2 FILLER_33_213 ();
 sg13cmos5l_fill_1 FILLER_33_215 ();
 sg13cmos5l_fill_2 FILLER_33_323 ();
 sg13cmos5l_fill_1 FILLER_33_371 ();
 sg13cmos5l_fill_2 FILLER_33_406 ();
 sg13cmos5l_fill_1 FILLER_33_408 ();
 sg13cmos5l_fill_2 FILLER_33_69 ();
 sg13cmos5l_fill_1 FILLER_33_71 ();
 sg13cmos5l_fill_1 FILLER_34_0 ();
 sg13cmos5l_fill_1 FILLER_34_135 ();
 sg13cmos5l_fill_1 FILLER_34_206 ();
 sg13cmos5l_fill_1 FILLER_34_266 ();
 sg13cmos5l_fill_1 FILLER_34_341 ();
 sg13cmos5l_fill_1 FILLER_34_376 ();
 sg13cmos5l_fill_1 FILLER_34_381 ();
 sg13cmos5l_decap_4 FILLER_34_405 ();
 sg13cmos5l_fill_2 FILLER_34_52 ();
 sg13cmos5l_fill_1 FILLER_34_54 ();
 sg13cmos5l_fill_1 FILLER_35_0 ();
 sg13cmos5l_fill_1 FILLER_35_144 ();
 sg13cmos5l_fill_1 FILLER_35_198 ();
 sg13cmos5l_fill_2 FILLER_35_339 ();
 sg13cmos5l_fill_1 FILLER_35_341 ();
 sg13cmos5l_decap_4 FILLER_35_405 ();
 sg13cmos5l_fill_1 FILLER_35_52 ();
 sg13cmos5l_decap_8 FILLER_36_0 ();
 sg13cmos5l_fill_1 FILLER_36_144 ();
 sg13cmos5l_fill_1 FILLER_36_266 ();
 sg13cmos5l_fill_2 FILLER_36_381 ();
 sg13cmos5l_decap_8 FILLER_36_400 ();
 sg13cmos5l_fill_2 FILLER_36_407 ();
 sg13cmos5l_fill_1 FILLER_36_54 ();
 sg13cmos5l_fill_1 FILLER_36_7 ();
 sg13cmos5l_decap_8 FILLER_37_0 ();
 sg13cmos5l_fill_1 FILLER_37_104 ();
 sg13cmos5l_fill_1 FILLER_37_245 ();
 sg13cmos5l_fill_1 FILLER_37_309 ();
 sg13cmos5l_fill_2 FILLER_37_346 ();
 sg13cmos5l_fill_2 FILLER_37_380 ();
 sg13cmos5l_fill_1 FILLER_37_382 ();
 sg13cmos5l_decap_4 FILLER_37_404 ();
 sg13cmos5l_fill_1 FILLER_37_408 ();
 sg13cmos5l_fill_2 FILLER_37_7 ();
 sg13cmos5l_fill_1 FILLER_38_0 ();
 sg13cmos5l_fill_1 FILLER_38_121 ();
 sg13cmos5l_fill_1 FILLER_38_188 ();
 sg13cmos5l_fill_2 FILLER_38_211 ();
 sg13cmos5l_fill_1 FILLER_38_213 ();
 sg13cmos5l_fill_1 FILLER_38_289 ();
 sg13cmos5l_fill_1 FILLER_38_408 ();
 sg13cmos5l_fill_2 FILLER_38_43 ();
 sg13cmos5l_decap_4 FILLER_3_0 ();
 sg13cmos5l_fill_2 FILLER_3_173 ();
 sg13cmos5l_fill_2 FILLER_3_209 ();
 sg13cmos5l_fill_2 FILLER_3_228 ();
 sg13cmos5l_fill_1 FILLER_3_247 ();
 sg13cmos5l_fill_2 FILLER_3_350 ();
 sg13cmos5l_decap_4 FILLER_3_44 ();
 sg13cmos5l_decap_4 FILLER_4_0 ();
 sg13cmos5l_decap_4 FILLER_4_101 ();
 sg13cmos5l_fill_1 FILLER_4_105 ();
 sg13cmos5l_decap_4 FILLER_4_180 ();
 sg13cmos5l_fill_2 FILLER_4_184 ();
 sg13cmos5l_decap_8 FILLER_4_232 ();
 sg13cmos5l_fill_2 FILLER_4_239 ();
 sg13cmos5l_fill_1 FILLER_4_241 ();
 sg13cmos5l_fill_2 FILLER_4_254 ();
 sg13cmos5l_fill_1 FILLER_4_256 ();
 sg13cmos5l_fill_1 FILLER_4_263 ();
 sg13cmos5l_decap_4 FILLER_4_281 ();
 sg13cmos5l_fill_1 FILLER_4_285 ();
 sg13cmos5l_fill_2 FILLER_4_298 ();
 sg13cmos5l_fill_1 FILLER_4_300 ();
 sg13cmos5l_fill_1 FILLER_4_307 ();
 sg13cmos5l_fill_1 FILLER_4_337 ();
 sg13cmos5l_decap_4 FILLER_4_361 ();
 sg13cmos5l_decap_4 FILLER_4_405 ();
 sg13cmos5l_fill_1 FILLER_4_44 ();
 sg13cmos5l_decap_4 FILLER_4_79 ();
 sg13cmos5l_fill_1 FILLER_4_83 ();
 sg13cmos5l_decap_4 FILLER_5_0 ();
 sg13cmos5l_fill_2 FILLER_5_101 ();
 sg13cmos5l_fill_1 FILLER_5_103 ();
 sg13cmos5l_fill_1 FILLER_5_133 ();
 sg13cmos5l_decap_8 FILLER_5_180 ();
 sg13cmos5l_decap_8 FILLER_5_187 ();
 sg13cmos5l_decap_4 FILLER_5_194 ();
 sg13cmos5l_fill_2 FILLER_5_198 ();
 sg13cmos5l_decap_8 FILLER_5_234 ();
 sg13cmos5l_fill_2 FILLER_5_241 ();
 sg13cmos5l_fill_1 FILLER_5_243 ();
 sg13cmos5l_decap_4 FILLER_5_291 ();
 sg13cmos5l_fill_2 FILLER_5_335 ();
 sg13cmos5l_fill_1 FILLER_5_337 ();
 sg13cmos5l_fill_2 FILLER_5_406 ();
 sg13cmos5l_fill_1 FILLER_5_408 ();
 sg13cmos5l_decap_4 FILLER_6_0 ();
 sg13cmos5l_fill_2 FILLER_6_149 ();
 sg13cmos5l_fill_2 FILLER_6_180 ();
 sg13cmos5l_fill_1 FILLER_6_182 ();
 sg13cmos5l_decap_8 FILLER_6_234 ();
 sg13cmos5l_fill_2 FILLER_6_241 ();
 sg13cmos5l_fill_1 FILLER_6_243 ();
 sg13cmos5l_fill_2 FILLER_6_335 ();
 sg13cmos5l_fill_1 FILLER_6_337 ();
 sg13cmos5l_fill_2 FILLER_6_406 ();
 sg13cmos5l_fill_1 FILLER_6_408 ();
 sg13cmos5l_fill_2 FILLER_6_44 ();
 sg13cmos5l_fill_1 FILLER_6_46 ();
 sg13cmos5l_decap_4 FILLER_6_70 ();
 sg13cmos5l_fill_1 FILLER_6_74 ();
 sg13cmos5l_decap_4 FILLER_7_0 ();
 sg13cmos5l_decap_8 FILLER_7_176 ();
 sg13cmos5l_decap_4 FILLER_7_240 ();
 sg13cmos5l_fill_2 FILLER_7_352 ();
 sg13cmos5l_fill_1 FILLER_7_354 ();
 sg13cmos5l_fill_2 FILLER_7_406 ();
 sg13cmos5l_fill_1 FILLER_7_408 ();
 sg13cmos5l_fill_2 FILLER_7_44 ();
 sg13cmos5l_fill_1 FILLER_7_46 ();
 sg13cmos5l_decap_4 FILLER_7_70 ();
 sg13cmos5l_decap_8 FILLER_8_0 ();
 sg13cmos5l_decap_8 FILLER_8_175 ();
 sg13cmos5l_fill_1 FILLER_8_182 ();
 sg13cmos5l_decap_8 FILLER_8_229 ();
 sg13cmos5l_decap_8 FILLER_8_236 ();
 sg13cmos5l_fill_1 FILLER_8_243 ();
 sg13cmos5l_fill_2 FILLER_8_33 ();
 sg13cmos5l_fill_1 FILLER_8_35 ();
 sg13cmos5l_fill_2 FILLER_8_352 ();
 sg13cmos5l_fill_1 FILLER_8_354 ();
 sg13cmos5l_fill_2 FILLER_8_407 ();
 sg13cmos5l_fill_2 FILLER_8_7 ();
 sg13cmos5l_fill_2 FILLER_8_87 ();
 sg13cmos5l_fill_1 FILLER_8_89 ();
 sg13cmos5l_fill_1 FILLER_8_9 ();
 sg13cmos5l_fill_2 FILLER_9_0 ();
 sg13cmos5l_decap_8 FILLER_9_186 ();
 sg13cmos5l_fill_2 FILLER_9_193 ();
 sg13cmos5l_decap_8 FILLER_9_212 ();
 sg13cmos5l_decap_8 FILLER_9_219 ();
 sg13cmos5l_decap_8 FILLER_9_226 ();
 sg13cmos5l_decap_8 FILLER_9_233 ();
 sg13cmos5l_decap_4 FILLER_9_240 ();
 sg13cmos5l_fill_2 FILLER_9_244 ();
 sg13cmos5l_fill_2 FILLER_9_263 ();
 sg13cmos5l_decap_8 FILLER_9_271 ();
 sg13cmos5l_fill_2 FILLER_9_358 ();
 sg13cmos5l_fill_1 FILLER_9_360 ();
 sg13cmos5l_fill_2 FILLER_9_407 ();
 sg13cmos5l_fill_2 FILLER_9_93 ();
 sg13cmos5l_dfrbp_2 \J8.DFF_J1  (.RESET_B(net9),
    .D(net19),
    .Q(uo_out[2]),
    .Q_N(\J8.J4N[0] ),
    .CLK(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_dfrbp_2 \J8.DFF_J2  (.RESET_B(net9),
    .D(net32),
    .Q(uo_out[3]),
    .Q_N(\J8.J4N[1] ),
    .CLK(clknet_2_2__leaf_CLK_OUT));
 sg13cmos5l_dfrbp_2 \J8.DFF_J3  (.RESET_B(net9),
    .D(net28),
    .Q(uo_out[4]),
    .Q_N(\J8.J4N[2] ),
    .CLK(clknet_2_2__leaf_CLK_OUT));
 sg13cmos5l_dfrbp_2 \J8.DFF_J4  (.RESET_B(net10),
    .D(net31),
    .Q(uo_out[5]),
    .Q_N(\J8.J4N[3] ),
    .CLK(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_inv_4 \J8.boost0  (.A(net9),
    .Y(\J8.rstN ));
 sg13cmos5l_a21o_2 \J8.dec0  (.A2(\J8.J4N[0] ),
    .A1(\J8.J4N[3] ),
    .B1(\J8.rstN ),
    .X(\Decoded8[0] ));
 sg13cmos5l_a21o_2 \J8.dec1  (.A2(\J8.J4N[1] ),
    .A1(uo_out[2]),
    .B1(\J8.rstN ),
    .X(\Decoded8[1] ));
 sg13cmos5l_a21o_2 \J8.dec2  (.A2(\J8.J4N[2] ),
    .A1(uo_out[3]),
    .B1(\J8.rstN ),
    .X(\Decoded8[2] ));
 sg13cmos5l_a21o_2 \J8.dec3  (.A2(\J8.J4N[3] ),
    .A1(uo_out[4]),
    .B1(\J8.rstN ),
    .X(\Decoded8[3] ));
 sg13cmos5l_a21o_2 \J8.dec4  (.A2(uo_out[2]),
    .A1(uo_out[5]),
    .B1(\J8.rstN ),
    .X(\Decoded8[4] ));
 sg13cmos5l_a21o_2 \J8.dec5  (.A2(uo_out[3]),
    .A1(\J8.J4N[0] ),
    .B1(\J8.rstN ),
    .X(\Decoded8[5] ));
 sg13cmos5l_a21o_2 \J8.dec6  (.A2(uo_out[4]),
    .A1(\J8.J4N[1] ),
    .B1(\J8.rstN ),
    .X(\Decoded8[6] ));
 sg13cmos5l_a21o_2 \J8.dec7  (.A2(uo_out[5]),
    .A1(\J8.J4N[2] ),
    .B1(\J8.rstN ),
    .X(\Decoded8[7] ));
 sg13cmos5l_buf_1 _08_ (.A(D_OUT),
    .X(uo_out[0]));
 sg13cmos5l_buf_1 _09_ (.A(net18),
    .X(uo_out[1]));
 sg13cmos5l_buf_1 _10_ (.A(LFSR_PERIOD),
    .X(uo_out[6]));
 sg13cmos5l_buf_1 _11_ (.A(LFSR_BIT),
    .X(uo_out[7]));
 sg13cmos5l_buf_8 clkbuf_0_CLK_OUT (.A(CLK_OUT),
    .X(clknet_0_CLK_OUT));
 sg13cmos5l_buf_8 clkbuf_2_0__f_CLK_OUT (.A(clknet_0_CLK_OUT),
    .X(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_buf_8 clkbuf_2_1__f_CLK_OUT (.A(clknet_0_CLK_OUT),
    .X(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_buf_8 clkbuf_2_2__f_CLK_OUT (.A(clknet_0_CLK_OUT),
    .X(clknet_2_2__leaf_CLK_OUT));
 sg13cmos5l_buf_8 clkbuf_2_3__f_CLK_OUT (.A(clknet_0_CLK_OUT),
    .X(clknet_2_3__leaf_CLK_OUT));
 sg13cmos5l_inv_2 clkload0 (.A(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_buf_8 clkload1 (.A(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_inv_2 clkload2 (.A(clknet_2_2__leaf_CLK_OUT));
 sg13cmos5l_inv_4 \demux_mux.Amp_evenN  (.A(\demux_mux.DevenN ),
    .Y(\demux_mux.Deven ));
 sg13cmos5l_inv_4 \demux_mux.Amp_oddN  (.A(\demux_mux.DoddN ),
    .Y(\demux_mux.Dodd ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchEven.Amp0  (.A(\Decoded8[0] ),
    .Y(\demux_mux.slice3e.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchEven.Amp1  (.A(\Decoded8[2] ),
    .Y(\demux_mux.slice2e.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchEven.Amp2  (.A(\Decoded8[4] ),
    .Y(\demux_mux.slice1e.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchEven.Amp3  (.A(\Decoded8[6] ),
    .Y(\demux_mux.slice0e.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchOdd.Amp0  (.A(\Decoded8[1] ),
    .Y(\demux_mux.slice3o.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchOdd.Amp1  (.A(\Decoded8[3] ),
    .Y(\demux_mux.slice2o.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchOdd.Amp2  (.A(\Decoded8[5] ),
    .Y(\demux_mux.slice1o.latch ));
 sg13cmos5l_inv_4 \demux_mux.BoostLatchOdd.Amp3  (.A(\Decoded8[7] ),
    .Y(\demux_mux.slice0o.latch ));
 sg13cmos5l_nor4_1 \demux_mux.Nor_EvenOdd  (.A(\Decoded8[1] ),
    .B(\Decoded8[3] ),
    .C(\Decoded8[5] ),
    .D(\Decoded8[7] ),
    .Y(\demux_mux.Even_odd ));
 sg13cmos5l_a22oi_1 \demux_mux.mux_comb0_even  (.Y(\demux_mux.doe1 ),
    .B1(\Decoded8[2] ),
    .B2(\demux_mux.exit_even[1] ),
    .A2(\demux_mux.exit_even[0] ),
    .A1(\Decoded8[0] ));
 sg13cmos5l_a22oi_1 \demux_mux.mux_comb0_odd  (.Y(\demux_mux.doo1 ),
    .B1(\Decoded8[3] ),
    .B2(\demux_mux.exit_odd[1] ),
    .A2(\demux_mux.exit_odd[0] ),
    .A1(\Decoded8[1] ));
 sg13cmos5l_a22oi_1 \demux_mux.mux_comb1_even  (.Y(\demux_mux.doe2 ),
    .B1(\Decoded8[6] ),
    .B2(\demux_mux.exit_even[3] ),
    .A2(\demux_mux.exit_even[2] ),
    .A1(\Decoded8[4] ));
 sg13cmos5l_a22oi_1 \demux_mux.mux_comb1_odd  (.Y(\demux_mux.doo2 ),
    .B1(\Decoded8[7] ),
    .B2(\demux_mux.exit_odd[3] ),
    .A2(\demux_mux.exit_odd[2] ),
    .A1(\Decoded8[5] ));
 sg13cmos5l_nand2_1 \demux_mux.mux_nand2_even  (.Y(\demux_mux.Dout_even ),
    .A(\demux_mux.doe1 ),
    .B(\demux_mux.doe2 ));
 sg13cmos5l_nand2_1 \demux_mux.mux_nand2_odd  (.Y(\demux_mux.Dout_odd ),
    .A(\demux_mux.doo1 ),
    .B(\demux_mux.doo2 ));
 sg13cmos5l_inv_4 \demux_mux.slice0e.Amp  (.A(\demux_mux.slice0e.latch ),
    .Y(\demux_mux.slice0e.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0e.l0  (.D(\demux_mux.Deven ),
    .GATE(\demux_mux.slice0e.latch_n ),
    .Q(\demux_mux.slice0e.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0e.l1  (.D(\demux_mux.siso_last_even[1] ),
    .GATE(\demux_mux.slice0e.latch_n ),
    .Q(\demux_mux.exit_even[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0e.l2  (.D(\demux_mux.siso_last_even[2] ),
    .GATE(\demux_mux.slice0e.latch_n ),
    .Q(\demux_mux.slice0e.siso_out[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0e.l3  (.D(\demux_mux.siso_last_even[3] ),
    .GATE(\demux_mux.slice0e.latch_n ),
    .Q(\demux_mux.slice0e.siso_out[3] ));
 sg13cmos5l_inv_4 \demux_mux.slice0o.Amp  (.A(\demux_mux.slice0o.latch ),
    .Y(\demux_mux.slice0o.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0o.l0  (.D(\demux_mux.Dodd ),
    .GATE(\demux_mux.slice0o.latch_n ),
    .Q(\demux_mux.slice0o.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0o.l1  (.D(\demux_mux.siso_last_odd[1] ),
    .GATE(\demux_mux.slice0o.latch_n ),
    .Q(\demux_mux.exit_odd[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0o.l2  (.D(\demux_mux.siso_last_odd[2] ),
    .GATE(\demux_mux.slice0o.latch_n ),
    .Q(\demux_mux.slice0o.siso_out[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice0o.l3  (.D(\demux_mux.siso_last_odd[3] ),
    .GATE(\demux_mux.slice0o.latch_n ),
    .Q(\demux_mux.slice0o.siso_out[3] ));
 sg13cmos5l_inv_4 \demux_mux.slice1e.Amp  (.A(\demux_mux.slice1e.latch ),
    .Y(\demux_mux.slice1e.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1e.l0  (.D(\demux_mux.slice0e.siso_out[0] ),
    .GATE(\demux_mux.slice1e.latch_n ),
    .Q(\demux_mux.slice1e.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1e.l1  (.D(\demux_mux.Deven ),
    .GATE(\demux_mux.slice1e.latch_n ),
    .Q(\demux_mux.slice1e.siso_out[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1e.l2  (.D(\demux_mux.slice0e.siso_out[2] ),
    .GATE(\demux_mux.slice1e.latch_n ),
    .Q(\demux_mux.exit_even[3] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1e.l3  (.D(\demux_mux.slice0e.siso_out[3] ),
    .GATE(\demux_mux.slice1e.latch_n ),
    .Q(\demux_mux.slice1e.siso_out[3] ));
 sg13cmos5l_inv_4 \demux_mux.slice1o.Amp  (.A(\demux_mux.slice1o.latch ),
    .Y(\demux_mux.slice1o.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1o.l0  (.D(\demux_mux.slice0o.siso_out[0] ),
    .GATE(\demux_mux.slice1o.latch_n ),
    .Q(\demux_mux.slice1o.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1o.l1  (.D(\demux_mux.Dodd ),
    .GATE(\demux_mux.slice1o.latch_n ),
    .Q(\demux_mux.slice1o.siso_out[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1o.l2  (.D(\demux_mux.slice0o.siso_out[2] ),
    .GATE(\demux_mux.slice1o.latch_n ),
    .Q(\demux_mux.exit_odd[3] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice1o.l3  (.D(\demux_mux.slice0o.siso_out[3] ),
    .GATE(\demux_mux.slice1o.latch_n ),
    .Q(\demux_mux.slice1o.siso_out[3] ));
 sg13cmos5l_inv_4 \demux_mux.slice2e.Amp  (.A(\demux_mux.slice2e.latch ),
    .Y(\demux_mux.slice2e.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2e.l0  (.D(\demux_mux.slice1e.siso_out[0] ),
    .GATE(\demux_mux.slice2e.latch_n ),
    .Q(\demux_mux.slice2e.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2e.l1  (.D(\demux_mux.slice1e.siso_out[1] ),
    .GATE(\demux_mux.slice2e.latch_n ),
    .Q(\demux_mux.slice2e.siso_out[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2e.l2  (.D(\demux_mux.Deven ),
    .GATE(\demux_mux.slice2e.latch_n ),
    .Q(\demux_mux.slice2e.siso_out[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2e.l3  (.D(\demux_mux.slice1e.siso_out[3] ),
    .GATE(\demux_mux.slice2e.latch_n ),
    .Q(\demux_mux.exit_even[2] ));
 sg13cmos5l_inv_4 \demux_mux.slice2o.Amp  (.A(\demux_mux.slice2o.latch ),
    .Y(\demux_mux.slice2o.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2o.l0  (.D(\demux_mux.slice1o.siso_out[0] ),
    .GATE(\demux_mux.slice2o.latch_n ),
    .Q(\demux_mux.slice2o.siso_out[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2o.l1  (.D(\demux_mux.slice1o.siso_out[1] ),
    .GATE(\demux_mux.slice2o.latch_n ),
    .Q(\demux_mux.slice2o.siso_out[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2o.l2  (.D(\demux_mux.Dodd ),
    .GATE(\demux_mux.slice2o.latch_n ),
    .Q(\demux_mux.slice2o.siso_out[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice2o.l3  (.D(\demux_mux.slice1o.siso_out[3] ),
    .GATE(\demux_mux.slice2o.latch_n ),
    .Q(\demux_mux.exit_odd[2] ));
 sg13cmos5l_inv_4 \demux_mux.slice3e.Amp  (.A(\demux_mux.slice3e.latch ),
    .Y(\demux_mux.slice3e.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3e.l0  (.D(\demux_mux.slice2e.siso_out[0] ),
    .GATE(\demux_mux.slice3e.latch_n ),
    .Q(\demux_mux.siso_first_even[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3e.l1  (.D(\demux_mux.slice2e.siso_out[1] ),
    .GATE(\demux_mux.slice3e.latch_n ),
    .Q(\demux_mux.siso_first_even[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3e.l2  (.D(\demux_mux.slice2e.siso_out[2] ),
    .GATE(\demux_mux.slice3e.latch_n ),
    .Q(\demux_mux.siso_first_even[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3e.l3  (.D(\demux_mux.Deven ),
    .GATE(\demux_mux.slice3e.latch_n ),
    .Q(\demux_mux.siso_first_even[3] ));
 sg13cmos5l_inv_4 \demux_mux.slice3o.Amp  (.A(\demux_mux.slice3o.latch ),
    .Y(\demux_mux.slice3o.latch_n ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3o.l0  (.D(\demux_mux.slice2o.siso_out[0] ),
    .GATE(\demux_mux.slice3o.latch_n ),
    .Q(\demux_mux.siso_first_odd[0] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3o.l1  (.D(\demux_mux.slice2o.siso_out[1] ),
    .GATE(\demux_mux.slice3o.latch_n ),
    .Q(\demux_mux.siso_first_odd[1] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3o.l2  (.D(\demux_mux.slice2o.siso_out[2] ),
    .GATE(\demux_mux.slice3o.latch_n ),
    .Q(\demux_mux.siso_first_odd[2] ));
 sg13cmos5l_dlhq_1 \demux_mux.slice3o.l3  (.D(\demux_mux.Dodd ),
    .GATE(\demux_mux.slice3o.latch_n ),
    .Q(\demux_mux.siso_first_odd[3] ));
 sg13cmos5l_sdfrbp_1 \demux_mux.sync_Deven  (.RESET_B(net9),
    .SCD(net34),
    .Q(\demux_mux.FbEven ),
    .CLK(clknet_2_2__leaf_CLK_OUT),
    .D(net37),
    .Q_N(\demux_mux.DevenN ),
    .SCE(\demux_mux.Even_odd ));
 sg13cmos5l_sdfrbp_1 \demux_mux.sync_Dodd  (.RESET_B(net9),
    .SCD(net37),
    .Q(\demux_mux.FbOdd ),
    .CLK(clknet_2_2__leaf_CLK_OUT),
    .D(net35),
    .Q_N(\demux_mux.DoddN ),
    .SCE(\demux_mux.Even_odd ));
 sg13cmos5l_sdfrbpq_1 \demux_mux.sync_Dout  (.Q(D_OUT),
    .CLK(clknet_2_2__leaf_CLK_OUT),
    .RESET_B(net9),
    .SCD(\demux_mux.Dout_even ),
    .D(\demux_mux.Dout_odd ),
    .SCE(\demux_mux.Even_odd ));
 sg13cmos5l_buf_1 fanout10 (.A(INT_RESET),
    .X(net10));
 sg13cmos5l_buf_1 fanout9 (.A(INT_RESET),
    .X(net9));
 sg13cmos5l_dlygate4sd3_1 hold19 (.A(\J8.J4N[3] ),
    .X(net19));
 sg13cmos5l_dlygate4sd3_1 hold20 (.A(\LFSR_state8[2] ),
    .X(net20));
 sg13cmos5l_dlygate4sd3_1 hold21 (.A(\LFSR_state8[6] ),
    .X(net21));
 sg13cmos5l_dlygate4sd3_1 hold22 (.A(\LFSR_state8[7] ),
    .X(net22));
 sg13cmos5l_dlygate4sd3_1 hold23 (.A(\LFSR_state8[4] ),
    .X(net23));
 sg13cmos5l_dlygate4sd3_1 hold24 (.A(\LFSR_state8[1] ),
    .X(net24));
 sg13cmos5l_dlygate4sd3_1 hold25 (.A(\lfsr.x3 ),
    .X(net25));
 sg13cmos5l_dlygate4sd3_1 hold26 (.A(\LFSR_state8[5] ),
    .X(net26));
 sg13cmos5l_dlygate4sd3_1 hold27 (.A(\lfsr.x1 ),
    .X(net27));
 sg13cmos5l_dlygate4sd3_1 hold28 (.A(uo_out[3]),
    .X(net28));
 sg13cmos5l_dlygate4sd3_1 hold29 (.A(\LFSR_state8[3] ),
    .X(net29));
 sg13cmos5l_dlygate4sd3_1 hold30 (.A(\lfsr.x2 ),
    .X(net30));
 sg13cmos5l_dlygate4sd3_1 hold31 (.A(uo_out[4]),
    .X(net31));
 sg13cmos5l_dlygate4sd3_1 hold32 (.A(uo_out[2]),
    .X(net32));
 sg13cmos5l_dlygate4sd3_1 hold33 (.A(INT_RESET),
    .X(net33));
 sg13cmos5l_dlygate4sd3_1 hold34 (.A(\demux_mux.FbEven ),
    .X(net34));
 sg13cmos5l_dlygate4sd3_1 hold35 (.A(\demux_mux.FbOdd ),
    .X(net35));
 sg13cmos5l_dlygate4sd3_1 hold36 (.A(LFSR_BIT),
    .X(net36));
 sg13cmos5l_dlygate4sd3_1 hold37 (.A(SISO_in),
    .X(net37));
 sg13cmos5l_buf_1 input1 (.A(rst_n),
    .X(net1));
 sg13cmos5l_buf_1 input2 (.A(ui_in[0]),
    .X(net2));
 sg13cmos5l_buf_1 input3 (.A(ui_in[1]),
    .X(net3));
 sg13cmos5l_buf_1 input4 (.A(ui_in[2]),
    .X(net4));
 sg13cmos5l_buf_1 input5 (.A(ui_in[3]),
    .X(net5));
 sg13cmos5l_buf_1 input6 (.A(ui_in[5]),
    .X(net6));
 sg13cmos5l_buf_1 input7 (.A(ui_in[6]),
    .X(net7));
 sg13cmos5l_buf_1 input8 (.A(ui_in[7]),
    .X(net8));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr0  (.RESET_B(net9),
    .D(net25),
    .Q(LFSR_BIT),
    .CLK(clknet_2_3__leaf_CLK_OUT));
 sg13cmos5l_dfrbp_2 \lfsr.lfsr1  (.RESET_B(net10),
    .D(net20),
    .Q(\lfsr.dum2 ),
    .Q_N(\LFSR_state8[1] ),
    .CLK(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_dfrbp_2 \lfsr.lfsr2  (.RESET_B(net10),
    .D(net30),
    .Q(\lfsr.dum1 ),
    .Q_N(\LFSR_state8[2] ),
    .CLK(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr3  (.RESET_B(net10),
    .D(net23),
    .Q(\LFSR_state8[3] ),
    .CLK(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr4  (.RESET_B(net10),
    .D(net27),
    .Q(\LFSR_state8[4] ),
    .CLK(clknet_2_0__leaf_CLK_OUT));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr5  (.RESET_B(net10),
    .D(net21),
    .Q(\LFSR_state8[5] ),
    .CLK(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr6  (.RESET_B(net10),
    .D(net22),
    .Q(\LFSR_state8[6] ),
    .CLK(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_dfrbpq_2 \lfsr.lfsr7  (.RESET_B(net10),
    .D(\lfsr.feedback ),
    .Q(\LFSR_state8[7] ),
    .CLK(clknet_2_1__leaf_CLK_OUT));
 sg13cmos5l_and4_2 \lfsr.period4_1  (.A(LFSR_BIT),
    .B(\LFSR_state8[1] ),
    .C(\LFSR_state8[2] ),
    .D(\LFSR_state8[3] ),
    .X(\lfsr.and8_1 ));
 sg13cmos5l_and4_2 \lfsr.period4_2  (.A(\LFSR_state8[4] ),
    .B(\LFSR_state8[5] ),
    .C(\LFSR_state8[6] ),
    .D(\LFSR_state8[7] ),
    .X(\lfsr.and8_2 ));
 sg13cmos5l_and2_2 \lfsr.period8  (.A(\lfsr.and8_1 ),
    .B(\lfsr.and8_2 ),
    .X(LFSR_PERIOD));
 sg13cmos5l_and2_2 \lfsr.stall  (.A(net36),
    .B(net7),
    .X(\lfsr.feedback ));
 sg13cmos5l_xor2_1 \lfsr.x_a  (.B(net26),
    .A(\lfsr.feedback ),
    .X(\lfsr.x1 ));
 sg13cmos5l_xor2_1 \lfsr.x_b  (.B(net29),
    .A(\lfsr.feedback ),
    .X(\lfsr.x2 ));
 sg13cmos5l_xor2_1 \lfsr.x_c  (.B(net24),
    .A(\lfsr.feedback ),
    .X(\lfsr.x3 ));
 sg13cmos5l_mux2_2 mux_clk (.A0(clk),
    .A1(net3),
    .S(net2),
    .X(CLK_OUT));
 sg13cmos5l_mux2_2 mux_uio0 (.A0(LFSR_BIT),
    .A1(\Decoded8[0] ),
    .S(SHOW_LFSR_n1),
    .X(uio_out[0]));
 sg13cmos5l_mux2_2 mux_uio1 (.A0(\LFSR_state8[1] ),
    .A1(\Decoded8[1] ),
    .S(SHOW_LFSR_n1),
    .X(uio_out[1]));
 sg13cmos5l_mux2_2 mux_uio2 (.A0(\LFSR_state8[2] ),
    .A1(\Decoded8[2] ),
    .S(SHOW_LFSR_n1),
    .X(uio_out[2]));
 sg13cmos5l_mux2_2 mux_uio3 (.A0(\LFSR_state8[3] ),
    .A1(\Decoded8[3] ),
    .S(SHOW_LFSR_n1),
    .X(uio_out[3]));
 sg13cmos5l_mux2_2 mux_uio4 (.A0(\LFSR_state8[4] ),
    .A1(\Decoded8[4] ),
    .S(SHOW_LFSR_n2),
    .X(uio_out[4]));
 sg13cmos5l_mux2_2 mux_uio5 (.A0(\LFSR_state8[5] ),
    .A1(\Decoded8[5] ),
    .S(SHOW_LFSR_n2),
    .X(uio_out[5]));
 sg13cmos5l_mux2_2 mux_uio6 (.A0(\LFSR_state8[6] ),
    .A1(\Decoded8[6] ),
    .S(SHOW_LFSR_n2),
    .X(uio_out[6]));
 sg13cmos5l_mux2_2 mux_uio7 (.A0(\LFSR_state8[7] ),
    .A1(\Decoded8[7] ),
    .S(SHOW_LFSR_n2),
    .X(uio_out[7]));
 sg13cmos5l_inv_4 negClkOut_18 (.A(clknet_2_3__leaf_CLK_OUT),
    .Y(net18));
 sg13cmos5l_inv_4 negShow1 (.A(net6),
    .Y(SHOW_LFSR_n1));
 sg13cmos5l_inv_4 negShow2 (.A(net6),
    .Y(SHOW_LFSR_n2));
 sg13cmos5l_inv_4 \siso256_1.Amp0.Amp0  (.A(\Decoded8[0] ),
    .Y(\siso256_1.Amp0.Y[0] ));
 sg13cmos5l_inv_4 \siso256_1.Amp0.Amp1  (.A(\Decoded8[2] ),
    .Y(\siso256_1.Amp0.Y[1] ));
 sg13cmos5l_inv_4 \siso256_1.Amp0.Amp2  (.A(\Decoded8[4] ),
    .Y(\siso256_1.Amp0.Y[2] ));
 sg13cmos5l_inv_4 \siso256_1.Amp0.Amp3  (.A(\Decoded8[6] ),
    .Y(\siso256_1.Amp0.Y[3] ));
 sg13cmos5l_inv_4 \siso256_1.Amp1.Amp0  (.A(\siso256_1.Amp0.Y[0] ),
    .Y(\siso256_1.Amp1.Y[0] ));
 sg13cmos5l_inv_4 \siso256_1.Amp1.Amp1  (.A(\siso256_1.Amp0.Y[1] ),
    .Y(\siso256_1.Amp1.Y[1] ));
 sg13cmos5l_inv_4 \siso256_1.Amp1.Amp2  (.A(\siso256_1.Amp0.Y[2] ),
    .Y(\siso256_1.Amp1.Y[2] ));
 sg13cmos5l_inv_4 \siso256_1.Amp1.Amp3  (.A(\siso256_1.Amp0.Y[3] ),
    .Y(\siso256_1.Amp1.Y[3] ));
 sg13cmos5l_inv_4 \siso256_1.Amp2.Amp0  (.A(\siso256_1.Amp0.Y[0] ),
    .Y(\siso256_1.Amp2.Y[0] ));
 sg13cmos5l_inv_4 \siso256_1.Amp2.Amp1  (.A(\siso256_1.Amp0.Y[1] ),
    .Y(\siso256_1.Amp2.Y[1] ));
 sg13cmos5l_inv_4 \siso256_1.Amp2.Amp2  (.A(\siso256_1.Amp0.Y[2] ),
    .Y(\siso256_1.Amp2.Y[2] ));
 sg13cmos5l_inv_4 \siso256_1.Amp2.Amp3  (.A(\siso256_1.Amp0.Y[3] ),
    .Y(\siso256_1.Amp2.Y[3] ));
 sg13cmos5l_inv_4 \siso256_1.Amp3.Amp0  (.A(\siso256_1.Amp0.Y[0] ),
    .Y(\siso256_1.Amp3.Y[0] ));
 sg13cmos5l_inv_4 \siso256_1.Amp3.Amp1  (.A(\siso256_1.Amp0.Y[1] ),
    .Y(\siso256_1.Amp3.Y[1] ));
 sg13cmos5l_inv_4 \siso256_1.Amp3.Amp2  (.A(\siso256_1.Amp0.Y[2] ),
    .Y(\siso256_1.Amp3.Y[2] ));
 sg13cmos5l_inv_4 \siso256_1.Amp3.Amp3  (.A(\siso256_1.Amp0.Y[3] ),
    .Y(\siso256_1.Amp3.Y[3] ));
 sg13cmos5l_inv_4 \siso256_1.Amp4.Amp0  (.A(\siso256_1.Amp0.Y[0] ),
    .Y(\siso256_1.Amp4.Y[0] ));
 sg13cmos5l_inv_4 \siso256_1.Amp4.Amp1  (.A(\siso256_1.Amp0.Y[1] ),
    .Y(\siso256_1.Amp4.Y[1] ));
 sg13cmos5l_inv_4 \siso256_1.Amp4.Amp2  (.A(\siso256_1.Amp0.Y[2] ),
    .Y(\siso256_1.Amp4.Y[2] ));
 sg13cmos5l_inv_4 \siso256_1.Amp4.Amp3  (.A(\siso256_1.Amp0.Y[3] ),
    .Y(\siso256_1.Amp4.Y[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.Amp.Amp0  (.A(\siso256_1.Amp1.Y[0] ),
    .Y(\siso256_1.tranche0.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.Amp.Amp1  (.A(\siso256_1.Amp1.Y[1] ),
    .Y(\siso256_1.tranche0.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.Amp.Amp2  (.A(\siso256_1.Amp1.Y[2] ),
    .Y(\siso256_1.tranche0.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.Amp.Amp3  (.A(\siso256_1.Amp1.Y[3] ),
    .Y(\siso256_1.tranche0.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche0.slice0.Amp  (.A(\siso256_1.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche0.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice0.l0  (.D(\demux_mux.siso_first_even[0] ),
    .GATE(\siso256_1.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice0.l1  (.D(\demux_mux.siso_first_even[1] ),
    .GATE(\siso256_1.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice0.l2  (.D(\demux_mux.siso_first_even[2] ),
    .GATE(\siso256_1.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice0.l3  (.D(\demux_mux.siso_first_even[3] ),
    .GATE(\siso256_1.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche0.slice1.Amp  (.A(\siso256_1.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche0.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice1.l0  (.D(\siso256_1.tranche0.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice1.l1  (.D(\siso256_1.tranche0.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice1.l2  (.D(\siso256_1.tranche0.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice1.l3  (.D(\siso256_1.tranche0.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche0.slice2.Amp  (.A(\siso256_1.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche0.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice2.l0  (.D(\siso256_1.tranche0.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice2.l1  (.D(\siso256_1.tranche0.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice2.l2  (.D(\siso256_1.tranche0.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice2.l3  (.D(\siso256_1.tranche0.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche0.slice3.Amp  (.A(\siso256_1.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche0.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice3.l0  (.D(\siso256_1.tranche0.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice3.l1  (.D(\siso256_1.tranche0.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice3.l2  (.D(\siso256_1.tranche0.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche0.slice3.l3  (.D(\siso256_1.tranche0.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t1[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche1.slice0.Amp  (.A(\siso256_1.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche0.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice0.l0  (.D(\siso256_1.tranche0.t1[0] ),
    .GATE(\siso256_1.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice0.l1  (.D(\siso256_1.tranche0.t1[1] ),
    .GATE(\siso256_1.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice0.l2  (.D(\siso256_1.tranche0.t1[2] ),
    .GATE(\siso256_1.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice0.l3  (.D(\siso256_1.tranche0.t1[3] ),
    .GATE(\siso256_1.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche1.slice1.Amp  (.A(\siso256_1.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche0.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice1.l0  (.D(\siso256_1.tranche0.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice1.l1  (.D(\siso256_1.tranche0.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice1.l2  (.D(\siso256_1.tranche0.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice1.l3  (.D(\siso256_1.tranche0.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche1.slice2.Amp  (.A(\siso256_1.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche0.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice2.l0  (.D(\siso256_1.tranche0.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice2.l1  (.D(\siso256_1.tranche0.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice2.l2  (.D(\siso256_1.tranche0.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice2.l3  (.D(\siso256_1.tranche0.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche1.slice3.Amp  (.A(\siso256_1.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche0.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice3.l0  (.D(\siso256_1.tranche0.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice3.l1  (.D(\siso256_1.tranche0.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice3.l2  (.D(\siso256_1.tranche0.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche1.slice3.l3  (.D(\siso256_1.tranche0.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t2[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche2.slice0.Amp  (.A(\siso256_1.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche0.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice0.l0  (.D(\siso256_1.tranche0.t2[0] ),
    .GATE(\siso256_1.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice0.l1  (.D(\siso256_1.tranche0.t2[1] ),
    .GATE(\siso256_1.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice0.l2  (.D(\siso256_1.tranche0.t2[2] ),
    .GATE(\siso256_1.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice0.l3  (.D(\siso256_1.tranche0.t2[3] ),
    .GATE(\siso256_1.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche2.slice1.Amp  (.A(\siso256_1.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche0.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice1.l0  (.D(\siso256_1.tranche0.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice1.l1  (.D(\siso256_1.tranche0.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice1.l2  (.D(\siso256_1.tranche0.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice1.l3  (.D(\siso256_1.tranche0.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche2.slice2.Amp  (.A(\siso256_1.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche0.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice2.l0  (.D(\siso256_1.tranche0.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice2.l1  (.D(\siso256_1.tranche0.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice2.l2  (.D(\siso256_1.tranche0.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice2.l3  (.D(\siso256_1.tranche0.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche2.slice3.Amp  (.A(\siso256_1.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche0.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice3.l0  (.D(\siso256_1.tranche0.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice3.l1  (.D(\siso256_1.tranche0.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice3.l2  (.D(\siso256_1.tranche0.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche2.slice3.l3  (.D(\siso256_1.tranche0.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche0.t3[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche3.slice0.Amp  (.A(\siso256_1.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche0.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice0.l0  (.D(\siso256_1.tranche0.t3[0] ),
    .GATE(\siso256_1.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice0.l1  (.D(\siso256_1.tranche0.t3[1] ),
    .GATE(\siso256_1.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice0.l2  (.D(\siso256_1.tranche0.t3[2] ),
    .GATE(\siso256_1.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice0.l3  (.D(\siso256_1.tranche0.t3[3] ),
    .GATE(\siso256_1.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche3.slice1.Amp  (.A(\siso256_1.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche0.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice1.l0  (.D(\siso256_1.tranche0.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice1.l1  (.D(\siso256_1.tranche0.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice1.l2  (.D(\siso256_1.tranche0.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice1.l3  (.D(\siso256_1.tranche0.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche3.slice2.Amp  (.A(\siso256_1.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche0.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice2.l0  (.D(\siso256_1.tranche0.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice2.l1  (.D(\siso256_1.tranche0.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice2.l2  (.D(\siso256_1.tranche0.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice2.l3  (.D(\siso256_1.tranche0.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche0.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche0.tranche3.slice3.Amp  (.A(\siso256_1.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche0.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice3.l0  (.D(\siso256_1.tranche0.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice3.l1  (.D(\siso256_1.tranche0.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice3.l2  (.D(\siso256_1.tranche0.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche0.tranche3.slice3.l3  (.D(\siso256_1.tranche0.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t1[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.Amp.Amp0  (.A(\siso256_1.Amp2.Y[0] ),
    .Y(\siso256_1.tranche1.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.Amp.Amp1  (.A(\siso256_1.Amp2.Y[1] ),
    .Y(\siso256_1.tranche1.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.Amp.Amp2  (.A(\siso256_1.Amp2.Y[2] ),
    .Y(\siso256_1.tranche1.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.Amp.Amp3  (.A(\siso256_1.Amp2.Y[3] ),
    .Y(\siso256_1.tranche1.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche0.slice0.Amp  (.A(\siso256_1.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche1.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice0.l0  (.D(\siso256_1.t1[0] ),
    .GATE(\siso256_1.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice0.l1  (.D(\siso256_1.t1[1] ),
    .GATE(\siso256_1.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice0.l2  (.D(\siso256_1.t1[2] ),
    .GATE(\siso256_1.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice0.l3  (.D(\siso256_1.t1[3] ),
    .GATE(\siso256_1.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche0.slice1.Amp  (.A(\siso256_1.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche1.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice1.l0  (.D(\siso256_1.tranche1.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice1.l1  (.D(\siso256_1.tranche1.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice1.l2  (.D(\siso256_1.tranche1.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice1.l3  (.D(\siso256_1.tranche1.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche0.slice2.Amp  (.A(\siso256_1.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche1.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice2.l0  (.D(\siso256_1.tranche1.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice2.l1  (.D(\siso256_1.tranche1.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice2.l2  (.D(\siso256_1.tranche1.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice2.l3  (.D(\siso256_1.tranche1.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche0.slice3.Amp  (.A(\siso256_1.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche1.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice3.l0  (.D(\siso256_1.tranche1.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice3.l1  (.D(\siso256_1.tranche1.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice3.l2  (.D(\siso256_1.tranche1.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche0.slice3.l3  (.D(\siso256_1.tranche1.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t1[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche1.slice0.Amp  (.A(\siso256_1.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche1.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice0.l0  (.D(\siso256_1.tranche1.t1[0] ),
    .GATE(\siso256_1.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice0.l1  (.D(\siso256_1.tranche1.t1[1] ),
    .GATE(\siso256_1.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice0.l2  (.D(\siso256_1.tranche1.t1[2] ),
    .GATE(\siso256_1.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice0.l3  (.D(\siso256_1.tranche1.t1[3] ),
    .GATE(\siso256_1.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche1.slice1.Amp  (.A(\siso256_1.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche1.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice1.l0  (.D(\siso256_1.tranche1.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice1.l1  (.D(\siso256_1.tranche1.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice1.l2  (.D(\siso256_1.tranche1.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice1.l3  (.D(\siso256_1.tranche1.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche1.slice2.Amp  (.A(\siso256_1.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche1.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice2.l0  (.D(\siso256_1.tranche1.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice2.l1  (.D(\siso256_1.tranche1.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice2.l2  (.D(\siso256_1.tranche1.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice2.l3  (.D(\siso256_1.tranche1.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche1.slice3.Amp  (.A(\siso256_1.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche1.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice3.l0  (.D(\siso256_1.tranche1.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice3.l1  (.D(\siso256_1.tranche1.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice3.l2  (.D(\siso256_1.tranche1.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche1.slice3.l3  (.D(\siso256_1.tranche1.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t2[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche2.slice0.Amp  (.A(\siso256_1.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche1.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice0.l0  (.D(\siso256_1.tranche1.t2[0] ),
    .GATE(\siso256_1.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice0.l1  (.D(\siso256_1.tranche1.t2[1] ),
    .GATE(\siso256_1.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice0.l2  (.D(\siso256_1.tranche1.t2[2] ),
    .GATE(\siso256_1.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice0.l3  (.D(\siso256_1.tranche1.t2[3] ),
    .GATE(\siso256_1.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche2.slice1.Amp  (.A(\siso256_1.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche1.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice1.l0  (.D(\siso256_1.tranche1.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice1.l1  (.D(\siso256_1.tranche1.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice1.l2  (.D(\siso256_1.tranche1.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice1.l3  (.D(\siso256_1.tranche1.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche2.slice2.Amp  (.A(\siso256_1.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche1.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice2.l0  (.D(\siso256_1.tranche1.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice2.l1  (.D(\siso256_1.tranche1.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice2.l2  (.D(\siso256_1.tranche1.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice2.l3  (.D(\siso256_1.tranche1.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche2.slice3.Amp  (.A(\siso256_1.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche1.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice3.l0  (.D(\siso256_1.tranche1.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice3.l1  (.D(\siso256_1.tranche1.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice3.l2  (.D(\siso256_1.tranche1.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche2.slice3.l3  (.D(\siso256_1.tranche1.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche1.t3[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche3.slice0.Amp  (.A(\siso256_1.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche1.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice0.l0  (.D(\siso256_1.tranche1.t3[0] ),
    .GATE(\siso256_1.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice0.l1  (.D(\siso256_1.tranche1.t3[1] ),
    .GATE(\siso256_1.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice0.l2  (.D(\siso256_1.tranche1.t3[2] ),
    .GATE(\siso256_1.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice0.l3  (.D(\siso256_1.tranche1.t3[3] ),
    .GATE(\siso256_1.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche3.slice1.Amp  (.A(\siso256_1.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche1.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice1.l0  (.D(\siso256_1.tranche1.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice1.l1  (.D(\siso256_1.tranche1.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice1.l2  (.D(\siso256_1.tranche1.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice1.l3  (.D(\siso256_1.tranche1.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche3.slice2.Amp  (.A(\siso256_1.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche1.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice2.l0  (.D(\siso256_1.tranche1.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice2.l1  (.D(\siso256_1.tranche1.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice2.l2  (.D(\siso256_1.tranche1.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice2.l3  (.D(\siso256_1.tranche1.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche1.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche1.tranche3.slice3.Amp  (.A(\siso256_1.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche1.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice3.l0  (.D(\siso256_1.tranche1.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice3.l1  (.D(\siso256_1.tranche1.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice3.l2  (.D(\siso256_1.tranche1.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche1.tranche3.slice3.l3  (.D(\siso256_1.tranche1.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t2[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.Amp.Amp0  (.A(\siso256_1.Amp3.Y[0] ),
    .Y(\siso256_1.tranche2.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.Amp.Amp1  (.A(\siso256_1.Amp3.Y[1] ),
    .Y(\siso256_1.tranche2.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.Amp.Amp2  (.A(\siso256_1.Amp3.Y[2] ),
    .Y(\siso256_1.tranche2.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.Amp.Amp3  (.A(\siso256_1.Amp3.Y[3] ),
    .Y(\siso256_1.tranche2.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche0.slice0.Amp  (.A(\siso256_1.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche2.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice0.l0  (.D(\siso256_1.t2[0] ),
    .GATE(\siso256_1.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice0.l1  (.D(\siso256_1.t2[1] ),
    .GATE(\siso256_1.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice0.l2  (.D(\siso256_1.t2[2] ),
    .GATE(\siso256_1.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice0.l3  (.D(\siso256_1.t2[3] ),
    .GATE(\siso256_1.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche0.slice1.Amp  (.A(\siso256_1.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche2.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice1.l0  (.D(\siso256_1.tranche2.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice1.l1  (.D(\siso256_1.tranche2.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice1.l2  (.D(\siso256_1.tranche2.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice1.l3  (.D(\siso256_1.tranche2.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche0.slice2.Amp  (.A(\siso256_1.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche2.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice2.l0  (.D(\siso256_1.tranche2.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice2.l1  (.D(\siso256_1.tranche2.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice2.l2  (.D(\siso256_1.tranche2.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice2.l3  (.D(\siso256_1.tranche2.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche0.slice3.Amp  (.A(\siso256_1.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche2.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice3.l0  (.D(\siso256_1.tranche2.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice3.l1  (.D(\siso256_1.tranche2.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice3.l2  (.D(\siso256_1.tranche2.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche0.slice3.l3  (.D(\siso256_1.tranche2.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t1[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche1.slice0.Amp  (.A(\siso256_1.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche2.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice0.l0  (.D(\siso256_1.tranche2.t1[0] ),
    .GATE(\siso256_1.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice0.l1  (.D(\siso256_1.tranche2.t1[1] ),
    .GATE(\siso256_1.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice0.l2  (.D(\siso256_1.tranche2.t1[2] ),
    .GATE(\siso256_1.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice0.l3  (.D(\siso256_1.tranche2.t1[3] ),
    .GATE(\siso256_1.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche1.slice1.Amp  (.A(\siso256_1.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche2.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice1.l0  (.D(\siso256_1.tranche2.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice1.l1  (.D(\siso256_1.tranche2.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice1.l2  (.D(\siso256_1.tranche2.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice1.l3  (.D(\siso256_1.tranche2.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche1.slice2.Amp  (.A(\siso256_1.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche2.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice2.l0  (.D(\siso256_1.tranche2.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice2.l1  (.D(\siso256_1.tranche2.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice2.l2  (.D(\siso256_1.tranche2.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice2.l3  (.D(\siso256_1.tranche2.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche1.slice3.Amp  (.A(\siso256_1.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche2.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice3.l0  (.D(\siso256_1.tranche2.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice3.l1  (.D(\siso256_1.tranche2.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice3.l2  (.D(\siso256_1.tranche2.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche1.slice3.l3  (.D(\siso256_1.tranche2.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t2[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche2.slice0.Amp  (.A(\siso256_1.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche2.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice0.l0  (.D(\siso256_1.tranche2.t2[0] ),
    .GATE(\siso256_1.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice0.l1  (.D(\siso256_1.tranche2.t2[1] ),
    .GATE(\siso256_1.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice0.l2  (.D(\siso256_1.tranche2.t2[2] ),
    .GATE(\siso256_1.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice0.l3  (.D(\siso256_1.tranche2.t2[3] ),
    .GATE(\siso256_1.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche2.slice1.Amp  (.A(\siso256_1.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche2.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice1.l0  (.D(\siso256_1.tranche2.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice1.l1  (.D(\siso256_1.tranche2.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice1.l2  (.D(\siso256_1.tranche2.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice1.l3  (.D(\siso256_1.tranche2.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche2.slice2.Amp  (.A(\siso256_1.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche2.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice2.l0  (.D(\siso256_1.tranche2.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice2.l1  (.D(\siso256_1.tranche2.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice2.l2  (.D(\siso256_1.tranche2.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice2.l3  (.D(\siso256_1.tranche2.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche2.slice3.Amp  (.A(\siso256_1.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche2.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice3.l0  (.D(\siso256_1.tranche2.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice3.l1  (.D(\siso256_1.tranche2.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice3.l2  (.D(\siso256_1.tranche2.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche2.slice3.l3  (.D(\siso256_1.tranche2.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche2.t3[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche3.slice0.Amp  (.A(\siso256_1.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche2.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice0.l0  (.D(\siso256_1.tranche2.t3[0] ),
    .GATE(\siso256_1.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice0.l1  (.D(\siso256_1.tranche2.t3[1] ),
    .GATE(\siso256_1.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice0.l2  (.D(\siso256_1.tranche2.t3[2] ),
    .GATE(\siso256_1.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice0.l3  (.D(\siso256_1.tranche2.t3[3] ),
    .GATE(\siso256_1.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche3.slice1.Amp  (.A(\siso256_1.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche2.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice1.l0  (.D(\siso256_1.tranche2.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice1.l1  (.D(\siso256_1.tranche2.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice1.l2  (.D(\siso256_1.tranche2.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice1.l3  (.D(\siso256_1.tranche2.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche3.slice2.Amp  (.A(\siso256_1.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche2.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice2.l0  (.D(\siso256_1.tranche2.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice2.l1  (.D(\siso256_1.tranche2.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice2.l2  (.D(\siso256_1.tranche2.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice2.l3  (.D(\siso256_1.tranche2.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche2.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche2.tranche3.slice3.Amp  (.A(\siso256_1.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche2.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice3.l0  (.D(\siso256_1.tranche2.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice3.l1  (.D(\siso256_1.tranche2.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice3.l2  (.D(\siso256_1.tranche2.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche2.tranche3.slice3.l3  (.D(\siso256_1.tranche2.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_1.t3[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.Amp.Amp0  (.A(\siso256_1.Amp4.Y[0] ),
    .Y(\siso256_1.tranche3.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.Amp.Amp1  (.A(\siso256_1.Amp4.Y[1] ),
    .Y(\siso256_1.tranche3.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.Amp.Amp2  (.A(\siso256_1.Amp4.Y[2] ),
    .Y(\siso256_1.tranche3.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.Amp.Amp3  (.A(\siso256_1.Amp4.Y[3] ),
    .Y(\siso256_1.tranche3.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche0.slice0.Amp  (.A(\siso256_1.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche3.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice0.l0  (.D(\siso256_1.t3[0] ),
    .GATE(\siso256_1.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice0.l1  (.D(\siso256_1.t3[1] ),
    .GATE(\siso256_1.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice0.l2  (.D(\siso256_1.t3[2] ),
    .GATE(\siso256_1.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice0.l3  (.D(\siso256_1.t3[3] ),
    .GATE(\siso256_1.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche0.slice1.Amp  (.A(\siso256_1.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche3.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice1.l0  (.D(\siso256_1.tranche3.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice1.l1  (.D(\siso256_1.tranche3.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice1.l2  (.D(\siso256_1.tranche3.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice1.l3  (.D(\siso256_1.tranche3.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche0.slice2.Amp  (.A(\siso256_1.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche3.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice2.l0  (.D(\siso256_1.tranche3.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice2.l1  (.D(\siso256_1.tranche3.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice2.l2  (.D(\siso256_1.tranche3.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice2.l3  (.D(\siso256_1.tranche3.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche0.slice3.Amp  (.A(\siso256_1.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche3.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice3.l0  (.D(\siso256_1.tranche3.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice3.l1  (.D(\siso256_1.tranche3.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice3.l2  (.D(\siso256_1.tranche3.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche0.slice3.l3  (.D(\siso256_1.tranche3.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t1[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche1.slice0.Amp  (.A(\siso256_1.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche3.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice0.l0  (.D(\siso256_1.tranche3.t1[0] ),
    .GATE(\siso256_1.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice0.l1  (.D(\siso256_1.tranche3.t1[1] ),
    .GATE(\siso256_1.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice0.l2  (.D(\siso256_1.tranche3.t1[2] ),
    .GATE(\siso256_1.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice0.l3  (.D(\siso256_1.tranche3.t1[3] ),
    .GATE(\siso256_1.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche1.slice1.Amp  (.A(\siso256_1.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche3.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice1.l0  (.D(\siso256_1.tranche3.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice1.l1  (.D(\siso256_1.tranche3.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice1.l2  (.D(\siso256_1.tranche3.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice1.l3  (.D(\siso256_1.tranche3.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche1.slice2.Amp  (.A(\siso256_1.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche3.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice2.l0  (.D(\siso256_1.tranche3.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice2.l1  (.D(\siso256_1.tranche3.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice2.l2  (.D(\siso256_1.tranche3.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice2.l3  (.D(\siso256_1.tranche3.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche1.slice3.Amp  (.A(\siso256_1.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche3.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice3.l0  (.D(\siso256_1.tranche3.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice3.l1  (.D(\siso256_1.tranche3.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice3.l2  (.D(\siso256_1.tranche3.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche1.slice3.l3  (.D(\siso256_1.tranche3.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t2[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche2.slice0.Amp  (.A(\siso256_1.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche3.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice0.l0  (.D(\siso256_1.tranche3.t2[0] ),
    .GATE(\siso256_1.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice0.l1  (.D(\siso256_1.tranche3.t2[1] ),
    .GATE(\siso256_1.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice0.l2  (.D(\siso256_1.tranche3.t2[2] ),
    .GATE(\siso256_1.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice0.l3  (.D(\siso256_1.tranche3.t2[3] ),
    .GATE(\siso256_1.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche2.slice1.Amp  (.A(\siso256_1.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche3.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice1.l0  (.D(\siso256_1.tranche3.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice1.l1  (.D(\siso256_1.tranche3.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice1.l2  (.D(\siso256_1.tranche3.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice1.l3  (.D(\siso256_1.tranche3.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche2.slice2.Amp  (.A(\siso256_1.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche3.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice2.l0  (.D(\siso256_1.tranche3.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice2.l1  (.D(\siso256_1.tranche3.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice2.l2  (.D(\siso256_1.tranche3.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice2.l3  (.D(\siso256_1.tranche3.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche2.slice3.Amp  (.A(\siso256_1.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche3.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice3.l0  (.D(\siso256_1.tranche3.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice3.l1  (.D(\siso256_1.tranche3.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice3.l2  (.D(\siso256_1.tranche3.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche2.slice3.l3  (.D(\siso256_1.tranche3.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_1.tranche3.t3[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche3.slice0.Amp  (.A(\siso256_1.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_1.tranche3.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice0.l0  (.D(\siso256_1.tranche3.t3[0] ),
    .GATE(\siso256_1.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice0.l1  (.D(\siso256_1.tranche3.t3[1] ),
    .GATE(\siso256_1.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice0.l2  (.D(\siso256_1.tranche3.t3[2] ),
    .GATE(\siso256_1.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice0.l3  (.D(\siso256_1.tranche3.t3[3] ),
    .GATE(\siso256_1.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche3.slice1.Amp  (.A(\siso256_1.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_1.tranche3.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice1.l0  (.D(\siso256_1.tranche3.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice1.l1  (.D(\siso256_1.tranche3.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice1.l2  (.D(\siso256_1.tranche3.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice1.l3  (.D(\siso256_1.tranche3.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche3.slice2.Amp  (.A(\siso256_1.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_1.tranche3.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice2.l0  (.D(\siso256_1.tranche3.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice2.l1  (.D(\siso256_1.tranche3.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice2.l2  (.D(\siso256_1.tranche3.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice2.l3  (.D(\siso256_1.tranche3.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_1.tranche3.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_1.tranche3.tranche3.slice3.Amp  (.A(\siso256_1.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_1.tranche3.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice3.l0  (.D(\siso256_1.tranche3.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_1.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice3.l1  (.D(\siso256_1.tranche3.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_1.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice3.l2  (.D(\siso256_1.tranche3.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_1.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_1.tranche3.tranche3.slice3.l3  (.D(\siso256_1.tranche3.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_1.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.Amp0.Amp0  (.A(\Decoded8[1] ),
    .Y(\siso256_2.Amp0.Y[0] ));
 sg13cmos5l_inv_4 \siso256_2.Amp0.Amp1  (.A(\Decoded8[3] ),
    .Y(\siso256_2.Amp0.Y[1] ));
 sg13cmos5l_inv_4 \siso256_2.Amp0.Amp2  (.A(\Decoded8[5] ),
    .Y(\siso256_2.Amp0.Y[2] ));
 sg13cmos5l_inv_4 \siso256_2.Amp0.Amp3  (.A(\Decoded8[7] ),
    .Y(\siso256_2.Amp0.Y[3] ));
 sg13cmos5l_inv_4 \siso256_2.Amp1.Amp0  (.A(\siso256_2.Amp0.Y[0] ),
    .Y(\siso256_2.Amp1.Y[0] ));
 sg13cmos5l_inv_4 \siso256_2.Amp1.Amp1  (.A(\siso256_2.Amp0.Y[1] ),
    .Y(\siso256_2.Amp1.Y[1] ));
 sg13cmos5l_inv_4 \siso256_2.Amp1.Amp2  (.A(\siso256_2.Amp0.Y[2] ),
    .Y(\siso256_2.Amp1.Y[2] ));
 sg13cmos5l_inv_4 \siso256_2.Amp1.Amp3  (.A(\siso256_2.Amp0.Y[3] ),
    .Y(\siso256_2.Amp1.Y[3] ));
 sg13cmos5l_inv_4 \siso256_2.Amp2.Amp0  (.A(\siso256_2.Amp0.Y[0] ),
    .Y(\siso256_2.Amp2.Y[0] ));
 sg13cmos5l_inv_4 \siso256_2.Amp2.Amp1  (.A(\siso256_2.Amp0.Y[1] ),
    .Y(\siso256_2.Amp2.Y[1] ));
 sg13cmos5l_inv_4 \siso256_2.Amp2.Amp2  (.A(\siso256_2.Amp0.Y[2] ),
    .Y(\siso256_2.Amp2.Y[2] ));
 sg13cmos5l_inv_4 \siso256_2.Amp2.Amp3  (.A(\siso256_2.Amp0.Y[3] ),
    .Y(\siso256_2.Amp2.Y[3] ));
 sg13cmos5l_inv_4 \siso256_2.Amp3.Amp0  (.A(\siso256_2.Amp0.Y[0] ),
    .Y(\siso256_2.Amp3.Y[0] ));
 sg13cmos5l_inv_4 \siso256_2.Amp3.Amp1  (.A(\siso256_2.Amp0.Y[1] ),
    .Y(\siso256_2.Amp3.Y[1] ));
 sg13cmos5l_inv_4 \siso256_2.Amp3.Amp2  (.A(\siso256_2.Amp0.Y[2] ),
    .Y(\siso256_2.Amp3.Y[2] ));
 sg13cmos5l_inv_4 \siso256_2.Amp3.Amp3  (.A(\siso256_2.Amp0.Y[3] ),
    .Y(\siso256_2.Amp3.Y[3] ));
 sg13cmos5l_inv_4 \siso256_2.Amp4.Amp0  (.A(\siso256_2.Amp0.Y[0] ),
    .Y(\siso256_2.Amp4.Y[0] ));
 sg13cmos5l_inv_4 \siso256_2.Amp4.Amp1  (.A(\siso256_2.Amp0.Y[1] ),
    .Y(\siso256_2.Amp4.Y[1] ));
 sg13cmos5l_inv_4 \siso256_2.Amp4.Amp2  (.A(\siso256_2.Amp0.Y[2] ),
    .Y(\siso256_2.Amp4.Y[2] ));
 sg13cmos5l_inv_4 \siso256_2.Amp4.Amp3  (.A(\siso256_2.Amp0.Y[3] ),
    .Y(\siso256_2.Amp4.Y[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.Amp.Amp0  (.A(\siso256_2.Amp1.Y[0] ),
    .Y(\siso256_2.tranche0.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.Amp.Amp1  (.A(\siso256_2.Amp1.Y[1] ),
    .Y(\siso256_2.tranche0.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.Amp.Amp2  (.A(\siso256_2.Amp1.Y[2] ),
    .Y(\siso256_2.tranche0.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.Amp.Amp3  (.A(\siso256_2.Amp1.Y[3] ),
    .Y(\siso256_2.tranche0.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche0.slice0.Amp  (.A(\siso256_2.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche0.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice0.l0  (.D(\demux_mux.siso_first_odd[0] ),
    .GATE(\siso256_2.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice0.l1  (.D(\demux_mux.siso_first_odd[1] ),
    .GATE(\siso256_2.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice0.l2  (.D(\demux_mux.siso_first_odd[2] ),
    .GATE(\siso256_2.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice0.l3  (.D(\demux_mux.siso_first_odd[3] ),
    .GATE(\siso256_2.tranche0.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche0.slice1.Amp  (.A(\siso256_2.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche0.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice1.l0  (.D(\siso256_2.tranche0.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice1.l1  (.D(\siso256_2.tranche0.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice1.l2  (.D(\siso256_2.tranche0.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice1.l3  (.D(\siso256_2.tranche0.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche0.slice2.Amp  (.A(\siso256_2.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche0.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice2.l0  (.D(\siso256_2.tranche0.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice2.l1  (.D(\siso256_2.tranche0.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice2.l2  (.D(\siso256_2.tranche0.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice2.l3  (.D(\siso256_2.tranche0.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche0.slice3.Amp  (.A(\siso256_2.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche0.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice3.l0  (.D(\siso256_2.tranche0.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice3.l1  (.D(\siso256_2.tranche0.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice3.l2  (.D(\siso256_2.tranche0.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche0.slice3.l3  (.D(\siso256_2.tranche0.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t1[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche1.slice0.Amp  (.A(\siso256_2.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche0.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice0.l0  (.D(\siso256_2.tranche0.t1[0] ),
    .GATE(\siso256_2.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice0.l1  (.D(\siso256_2.tranche0.t1[1] ),
    .GATE(\siso256_2.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice0.l2  (.D(\siso256_2.tranche0.t1[2] ),
    .GATE(\siso256_2.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice0.l3  (.D(\siso256_2.tranche0.t1[3] ),
    .GATE(\siso256_2.tranche0.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche1.slice1.Amp  (.A(\siso256_2.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche0.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice1.l0  (.D(\siso256_2.tranche0.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice1.l1  (.D(\siso256_2.tranche0.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice1.l2  (.D(\siso256_2.tranche0.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice1.l3  (.D(\siso256_2.tranche0.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche1.slice2.Amp  (.A(\siso256_2.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche0.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice2.l0  (.D(\siso256_2.tranche0.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice2.l1  (.D(\siso256_2.tranche0.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice2.l2  (.D(\siso256_2.tranche0.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice2.l3  (.D(\siso256_2.tranche0.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche1.slice3.Amp  (.A(\siso256_2.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche0.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice3.l0  (.D(\siso256_2.tranche0.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice3.l1  (.D(\siso256_2.tranche0.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice3.l2  (.D(\siso256_2.tranche0.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche1.slice3.l3  (.D(\siso256_2.tranche0.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t2[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche2.slice0.Amp  (.A(\siso256_2.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche0.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice0.l0  (.D(\siso256_2.tranche0.t2[0] ),
    .GATE(\siso256_2.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice0.l1  (.D(\siso256_2.tranche0.t2[1] ),
    .GATE(\siso256_2.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice0.l2  (.D(\siso256_2.tranche0.t2[2] ),
    .GATE(\siso256_2.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice0.l3  (.D(\siso256_2.tranche0.t2[3] ),
    .GATE(\siso256_2.tranche0.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche2.slice1.Amp  (.A(\siso256_2.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche0.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice1.l0  (.D(\siso256_2.tranche0.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice1.l1  (.D(\siso256_2.tranche0.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice1.l2  (.D(\siso256_2.tranche0.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice1.l3  (.D(\siso256_2.tranche0.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche2.slice2.Amp  (.A(\siso256_2.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche0.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice2.l0  (.D(\siso256_2.tranche0.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice2.l1  (.D(\siso256_2.tranche0.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice2.l2  (.D(\siso256_2.tranche0.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice2.l3  (.D(\siso256_2.tranche0.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche2.slice3.Amp  (.A(\siso256_2.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche0.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice3.l0  (.D(\siso256_2.tranche0.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice3.l1  (.D(\siso256_2.tranche0.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice3.l2  (.D(\siso256_2.tranche0.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche2.slice3.l3  (.D(\siso256_2.tranche0.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche0.t3[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche3.slice0.Amp  (.A(\siso256_2.tranche0.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche0.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice0.l0  (.D(\siso256_2.tranche0.t3[0] ),
    .GATE(\siso256_2.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice0.l1  (.D(\siso256_2.tranche0.t3[1] ),
    .GATE(\siso256_2.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice0.l2  (.D(\siso256_2.tranche0.t3[2] ),
    .GATE(\siso256_2.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice0.l3  (.D(\siso256_2.tranche0.t3[3] ),
    .GATE(\siso256_2.tranche0.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche3.slice1.Amp  (.A(\siso256_2.tranche0.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche0.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice1.l0  (.D(\siso256_2.tranche0.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice1.l1  (.D(\siso256_2.tranche0.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice1.l2  (.D(\siso256_2.tranche0.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice1.l3  (.D(\siso256_2.tranche0.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche3.slice2.Amp  (.A(\siso256_2.tranche0.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche0.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice2.l0  (.D(\siso256_2.tranche0.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice2.l1  (.D(\siso256_2.tranche0.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice2.l2  (.D(\siso256_2.tranche0.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice2.l3  (.D(\siso256_2.tranche0.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche0.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche0.tranche3.slice3.Amp  (.A(\siso256_2.tranche0.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche0.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice3.l0  (.D(\siso256_2.tranche0.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice3.l1  (.D(\siso256_2.tranche0.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice3.l2  (.D(\siso256_2.tranche0.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche0.tranche3.slice3.l3  (.D(\siso256_2.tranche0.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche0.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t1[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.Amp.Amp0  (.A(\siso256_2.Amp2.Y[0] ),
    .Y(\siso256_2.tranche1.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.Amp.Amp1  (.A(\siso256_2.Amp2.Y[1] ),
    .Y(\siso256_2.tranche1.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.Amp.Amp2  (.A(\siso256_2.Amp2.Y[2] ),
    .Y(\siso256_2.tranche1.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.Amp.Amp3  (.A(\siso256_2.Amp2.Y[3] ),
    .Y(\siso256_2.tranche1.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche0.slice0.Amp  (.A(\siso256_2.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche1.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice0.l0  (.D(\siso256_2.t1[0] ),
    .GATE(\siso256_2.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice0.l1  (.D(\siso256_2.t1[1] ),
    .GATE(\siso256_2.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice0.l2  (.D(\siso256_2.t1[2] ),
    .GATE(\siso256_2.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice0.l3  (.D(\siso256_2.t1[3] ),
    .GATE(\siso256_2.tranche1.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche0.slice1.Amp  (.A(\siso256_2.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche1.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice1.l0  (.D(\siso256_2.tranche1.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice1.l1  (.D(\siso256_2.tranche1.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice1.l2  (.D(\siso256_2.tranche1.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice1.l3  (.D(\siso256_2.tranche1.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche0.slice2.Amp  (.A(\siso256_2.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche1.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice2.l0  (.D(\siso256_2.tranche1.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice2.l1  (.D(\siso256_2.tranche1.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice2.l2  (.D(\siso256_2.tranche1.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice2.l3  (.D(\siso256_2.tranche1.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche0.slice3.Amp  (.A(\siso256_2.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche1.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice3.l0  (.D(\siso256_2.tranche1.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice3.l1  (.D(\siso256_2.tranche1.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice3.l2  (.D(\siso256_2.tranche1.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche0.slice3.l3  (.D(\siso256_2.tranche1.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t1[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche1.slice0.Amp  (.A(\siso256_2.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche1.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice0.l0  (.D(\siso256_2.tranche1.t1[0] ),
    .GATE(\siso256_2.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice0.l1  (.D(\siso256_2.tranche1.t1[1] ),
    .GATE(\siso256_2.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice0.l2  (.D(\siso256_2.tranche1.t1[2] ),
    .GATE(\siso256_2.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice0.l3  (.D(\siso256_2.tranche1.t1[3] ),
    .GATE(\siso256_2.tranche1.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche1.slice1.Amp  (.A(\siso256_2.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche1.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice1.l0  (.D(\siso256_2.tranche1.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice1.l1  (.D(\siso256_2.tranche1.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice1.l2  (.D(\siso256_2.tranche1.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice1.l3  (.D(\siso256_2.tranche1.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche1.slice2.Amp  (.A(\siso256_2.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche1.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice2.l0  (.D(\siso256_2.tranche1.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice2.l1  (.D(\siso256_2.tranche1.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice2.l2  (.D(\siso256_2.tranche1.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice2.l3  (.D(\siso256_2.tranche1.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche1.slice3.Amp  (.A(\siso256_2.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche1.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice3.l0  (.D(\siso256_2.tranche1.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice3.l1  (.D(\siso256_2.tranche1.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice3.l2  (.D(\siso256_2.tranche1.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche1.slice3.l3  (.D(\siso256_2.tranche1.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t2[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche2.slice0.Amp  (.A(\siso256_2.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche1.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice0.l0  (.D(\siso256_2.tranche1.t2[0] ),
    .GATE(\siso256_2.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice0.l1  (.D(\siso256_2.tranche1.t2[1] ),
    .GATE(\siso256_2.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice0.l2  (.D(\siso256_2.tranche1.t2[2] ),
    .GATE(\siso256_2.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice0.l3  (.D(\siso256_2.tranche1.t2[3] ),
    .GATE(\siso256_2.tranche1.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche2.slice1.Amp  (.A(\siso256_2.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche1.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice1.l0  (.D(\siso256_2.tranche1.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice1.l1  (.D(\siso256_2.tranche1.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice1.l2  (.D(\siso256_2.tranche1.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice1.l3  (.D(\siso256_2.tranche1.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche2.slice2.Amp  (.A(\siso256_2.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche1.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice2.l0  (.D(\siso256_2.tranche1.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice2.l1  (.D(\siso256_2.tranche1.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice2.l2  (.D(\siso256_2.tranche1.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice2.l3  (.D(\siso256_2.tranche1.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche2.slice3.Amp  (.A(\siso256_2.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche1.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice3.l0  (.D(\siso256_2.tranche1.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice3.l1  (.D(\siso256_2.tranche1.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice3.l2  (.D(\siso256_2.tranche1.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche2.slice3.l3  (.D(\siso256_2.tranche1.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche1.t3[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche3.slice0.Amp  (.A(\siso256_2.tranche1.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche1.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice0.l0  (.D(\siso256_2.tranche1.t3[0] ),
    .GATE(\siso256_2.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice0.l1  (.D(\siso256_2.tranche1.t3[1] ),
    .GATE(\siso256_2.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice0.l2  (.D(\siso256_2.tranche1.t3[2] ),
    .GATE(\siso256_2.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice0.l3  (.D(\siso256_2.tranche1.t3[3] ),
    .GATE(\siso256_2.tranche1.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche3.slice1.Amp  (.A(\siso256_2.tranche1.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche1.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice1.l0  (.D(\siso256_2.tranche1.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice1.l1  (.D(\siso256_2.tranche1.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice1.l2  (.D(\siso256_2.tranche1.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice1.l3  (.D(\siso256_2.tranche1.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche3.slice2.Amp  (.A(\siso256_2.tranche1.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche1.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice2.l0  (.D(\siso256_2.tranche1.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice2.l1  (.D(\siso256_2.tranche1.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice2.l2  (.D(\siso256_2.tranche1.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice2.l3  (.D(\siso256_2.tranche1.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche1.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche1.tranche3.slice3.Amp  (.A(\siso256_2.tranche1.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche1.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice3.l0  (.D(\siso256_2.tranche1.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice3.l1  (.D(\siso256_2.tranche1.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice3.l2  (.D(\siso256_2.tranche1.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche1.tranche3.slice3.l3  (.D(\siso256_2.tranche1.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche1.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t2[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.Amp.Amp0  (.A(\siso256_2.Amp3.Y[0] ),
    .Y(\siso256_2.tranche2.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.Amp.Amp1  (.A(\siso256_2.Amp3.Y[1] ),
    .Y(\siso256_2.tranche2.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.Amp.Amp2  (.A(\siso256_2.Amp3.Y[2] ),
    .Y(\siso256_2.tranche2.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.Amp.Amp3  (.A(\siso256_2.Amp3.Y[3] ),
    .Y(\siso256_2.tranche2.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche0.slice0.Amp  (.A(\siso256_2.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche2.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice0.l0  (.D(\siso256_2.t2[0] ),
    .GATE(\siso256_2.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice0.l1  (.D(\siso256_2.t2[1] ),
    .GATE(\siso256_2.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice0.l2  (.D(\siso256_2.t2[2] ),
    .GATE(\siso256_2.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice0.l3  (.D(\siso256_2.t2[3] ),
    .GATE(\siso256_2.tranche2.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche0.slice1.Amp  (.A(\siso256_2.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche2.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice1.l0  (.D(\siso256_2.tranche2.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice1.l1  (.D(\siso256_2.tranche2.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice1.l2  (.D(\siso256_2.tranche2.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice1.l3  (.D(\siso256_2.tranche2.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche0.slice2.Amp  (.A(\siso256_2.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche2.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice2.l0  (.D(\siso256_2.tranche2.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice2.l1  (.D(\siso256_2.tranche2.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice2.l2  (.D(\siso256_2.tranche2.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice2.l3  (.D(\siso256_2.tranche2.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche0.slice3.Amp  (.A(\siso256_2.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche2.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice3.l0  (.D(\siso256_2.tranche2.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice3.l1  (.D(\siso256_2.tranche2.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice3.l2  (.D(\siso256_2.tranche2.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche0.slice3.l3  (.D(\siso256_2.tranche2.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t1[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche1.slice0.Amp  (.A(\siso256_2.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche2.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice0.l0  (.D(\siso256_2.tranche2.t1[0] ),
    .GATE(\siso256_2.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice0.l1  (.D(\siso256_2.tranche2.t1[1] ),
    .GATE(\siso256_2.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice0.l2  (.D(\siso256_2.tranche2.t1[2] ),
    .GATE(\siso256_2.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice0.l3  (.D(\siso256_2.tranche2.t1[3] ),
    .GATE(\siso256_2.tranche2.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche1.slice1.Amp  (.A(\siso256_2.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche2.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice1.l0  (.D(\siso256_2.tranche2.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice1.l1  (.D(\siso256_2.tranche2.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice1.l2  (.D(\siso256_2.tranche2.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice1.l3  (.D(\siso256_2.tranche2.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche1.slice2.Amp  (.A(\siso256_2.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche2.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice2.l0  (.D(\siso256_2.tranche2.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice2.l1  (.D(\siso256_2.tranche2.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice2.l2  (.D(\siso256_2.tranche2.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice2.l3  (.D(\siso256_2.tranche2.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche1.slice3.Amp  (.A(\siso256_2.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche2.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice3.l0  (.D(\siso256_2.tranche2.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice3.l1  (.D(\siso256_2.tranche2.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice3.l2  (.D(\siso256_2.tranche2.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche1.slice3.l3  (.D(\siso256_2.tranche2.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t2[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche2.slice0.Amp  (.A(\siso256_2.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche2.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice0.l0  (.D(\siso256_2.tranche2.t2[0] ),
    .GATE(\siso256_2.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice0.l1  (.D(\siso256_2.tranche2.t2[1] ),
    .GATE(\siso256_2.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice0.l2  (.D(\siso256_2.tranche2.t2[2] ),
    .GATE(\siso256_2.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice0.l3  (.D(\siso256_2.tranche2.t2[3] ),
    .GATE(\siso256_2.tranche2.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche2.slice1.Amp  (.A(\siso256_2.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche2.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice1.l0  (.D(\siso256_2.tranche2.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice1.l1  (.D(\siso256_2.tranche2.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice1.l2  (.D(\siso256_2.tranche2.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice1.l3  (.D(\siso256_2.tranche2.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche2.slice2.Amp  (.A(\siso256_2.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche2.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice2.l0  (.D(\siso256_2.tranche2.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice2.l1  (.D(\siso256_2.tranche2.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice2.l2  (.D(\siso256_2.tranche2.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice2.l3  (.D(\siso256_2.tranche2.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche2.slice3.Amp  (.A(\siso256_2.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche2.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice3.l0  (.D(\siso256_2.tranche2.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice3.l1  (.D(\siso256_2.tranche2.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice3.l2  (.D(\siso256_2.tranche2.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche2.slice3.l3  (.D(\siso256_2.tranche2.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche2.t3[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche3.slice0.Amp  (.A(\siso256_2.tranche2.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche2.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice0.l0  (.D(\siso256_2.tranche2.t3[0] ),
    .GATE(\siso256_2.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice0.l1  (.D(\siso256_2.tranche2.t3[1] ),
    .GATE(\siso256_2.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice0.l2  (.D(\siso256_2.tranche2.t3[2] ),
    .GATE(\siso256_2.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice0.l3  (.D(\siso256_2.tranche2.t3[3] ),
    .GATE(\siso256_2.tranche2.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche3.slice1.Amp  (.A(\siso256_2.tranche2.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche2.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice1.l0  (.D(\siso256_2.tranche2.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice1.l1  (.D(\siso256_2.tranche2.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice1.l2  (.D(\siso256_2.tranche2.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice1.l3  (.D(\siso256_2.tranche2.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche3.slice2.Amp  (.A(\siso256_2.tranche2.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche2.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice2.l0  (.D(\siso256_2.tranche2.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice2.l1  (.D(\siso256_2.tranche2.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice2.l2  (.D(\siso256_2.tranche2.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice2.l3  (.D(\siso256_2.tranche2.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche2.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche2.tranche3.slice3.Amp  (.A(\siso256_2.tranche2.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche2.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice3.l0  (.D(\siso256_2.tranche2.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice3.l1  (.D(\siso256_2.tranche2.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice3.l2  (.D(\siso256_2.tranche2.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche2.tranche3.slice3.l3  (.D(\siso256_2.tranche2.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche2.tranche3.slice3.latch_n ),
    .Q(\siso256_2.t3[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.Amp.Amp0  (.A(\siso256_2.Amp4.Y[0] ),
    .Y(\siso256_2.tranche3.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.Amp.Amp1  (.A(\siso256_2.Amp4.Y[1] ),
    .Y(\siso256_2.tranche3.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.Amp.Amp2  (.A(\siso256_2.Amp4.Y[2] ),
    .Y(\siso256_2.tranche3.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.Amp.Amp3  (.A(\siso256_2.Amp4.Y[3] ),
    .Y(\siso256_2.tranche3.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche0.slice0.Amp  (.A(\siso256_2.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche3.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice0.l0  (.D(\siso256_2.t3[0] ),
    .GATE(\siso256_2.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice0.l1  (.D(\siso256_2.t3[1] ),
    .GATE(\siso256_2.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice0.l2  (.D(\siso256_2.t3[2] ),
    .GATE(\siso256_2.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice0.l3  (.D(\siso256_2.t3[3] ),
    .GATE(\siso256_2.tranche3.tranche0.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche0.slice1.Amp  (.A(\siso256_2.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche3.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice1.l0  (.D(\siso256_2.tranche3.tranche0.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice1.l1  (.D(\siso256_2.tranche3.tranche0.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice1.l2  (.D(\siso256_2.tranche3.tranche0.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice1.l3  (.D(\siso256_2.tranche3.tranche0.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche0.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche0.slice2.Amp  (.A(\siso256_2.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche3.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice2.l0  (.D(\siso256_2.tranche3.tranche0.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice2.l1  (.D(\siso256_2.tranche3.tranche0.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice2.l2  (.D(\siso256_2.tranche3.tranche0.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice2.l3  (.D(\siso256_2.tranche3.tranche0.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche0.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche0.slice3.Amp  (.A(\siso256_2.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche3.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice3.l0  (.D(\siso256_2.tranche3.tranche0.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t1[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice3.l1  (.D(\siso256_2.tranche3.tranche0.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t1[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice3.l2  (.D(\siso256_2.tranche3.tranche0.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t1[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche0.slice3.l3  (.D(\siso256_2.tranche3.tranche0.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche0.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t1[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche1.slice0.Amp  (.A(\siso256_2.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche3.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice0.l0  (.D(\siso256_2.tranche3.t1[0] ),
    .GATE(\siso256_2.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice0.l1  (.D(\siso256_2.tranche3.t1[1] ),
    .GATE(\siso256_2.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice0.l2  (.D(\siso256_2.tranche3.t1[2] ),
    .GATE(\siso256_2.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice0.l3  (.D(\siso256_2.tranche3.t1[3] ),
    .GATE(\siso256_2.tranche3.tranche1.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche1.slice1.Amp  (.A(\siso256_2.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche3.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice1.l0  (.D(\siso256_2.tranche3.tranche1.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice1.l1  (.D(\siso256_2.tranche3.tranche1.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice1.l2  (.D(\siso256_2.tranche3.tranche1.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice1.l3  (.D(\siso256_2.tranche3.tranche1.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche1.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche1.slice2.Amp  (.A(\siso256_2.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche3.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice2.l0  (.D(\siso256_2.tranche3.tranche1.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice2.l1  (.D(\siso256_2.tranche3.tranche1.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice2.l2  (.D(\siso256_2.tranche3.tranche1.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice2.l3  (.D(\siso256_2.tranche3.tranche1.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche1.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche1.slice3.Amp  (.A(\siso256_2.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche3.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice3.l0  (.D(\siso256_2.tranche3.tranche1.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t2[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice3.l1  (.D(\siso256_2.tranche3.tranche1.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t2[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice3.l2  (.D(\siso256_2.tranche3.tranche1.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t2[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche1.slice3.l3  (.D(\siso256_2.tranche3.tranche1.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche1.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t2[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche2.slice0.Amp  (.A(\siso256_2.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche3.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice0.l0  (.D(\siso256_2.tranche3.t2[0] ),
    .GATE(\siso256_2.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice0.l1  (.D(\siso256_2.tranche3.t2[1] ),
    .GATE(\siso256_2.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice0.l2  (.D(\siso256_2.tranche3.t2[2] ),
    .GATE(\siso256_2.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice0.l3  (.D(\siso256_2.tranche3.t2[3] ),
    .GATE(\siso256_2.tranche3.tranche2.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche2.slice1.Amp  (.A(\siso256_2.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche3.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice1.l0  (.D(\siso256_2.tranche3.tranche2.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice1.l1  (.D(\siso256_2.tranche3.tranche2.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice1.l2  (.D(\siso256_2.tranche3.tranche2.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice1.l3  (.D(\siso256_2.tranche3.tranche2.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche2.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche2.slice2.Amp  (.A(\siso256_2.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche3.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice2.l0  (.D(\siso256_2.tranche3.tranche2.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice2.l1  (.D(\siso256_2.tranche3.tranche2.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice2.l2  (.D(\siso256_2.tranche3.tranche2.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice2.l3  (.D(\siso256_2.tranche3.tranche2.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche2.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche2.slice3.Amp  (.A(\siso256_2.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche3.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice3.l0  (.D(\siso256_2.tranche3.tranche2.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t3[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice3.l1  (.D(\siso256_2.tranche3.tranche2.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t3[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice3.l2  (.D(\siso256_2.tranche3.tranche2.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t3[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche2.slice3.l3  (.D(\siso256_2.tranche3.tranche2.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche2.slice3.latch_n ),
    .Q(\siso256_2.tranche3.t3[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche3.slice0.Amp  (.A(\siso256_2.tranche3.tranche0.slice0.latch ),
    .Y(\siso256_2.tranche3.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice0.l0  (.D(\siso256_2.tranche3.t3[0] ),
    .GATE(\siso256_2.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice0.l1  (.D(\siso256_2.tranche3.t3[1] ),
    .GATE(\siso256_2.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice0.l2  (.D(\siso256_2.tranche3.t3[2] ),
    .GATE(\siso256_2.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice0.l3  (.D(\siso256_2.tranche3.t3[3] ),
    .GATE(\siso256_2.tranche3.tranche3.slice0.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche3.slice1.Amp  (.A(\siso256_2.tranche3.tranche0.slice1.latch ),
    .Y(\siso256_2.tranche3.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice1.l0  (.D(\siso256_2.tranche3.tranche3.slice0.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice1.l1  (.D(\siso256_2.tranche3.tranche3.slice0.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice1.l2  (.D(\siso256_2.tranche3.tranche3.slice0.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice1.l3  (.D(\siso256_2.tranche3.tranche3.slice0.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche3.slice1.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche3.slice2.Amp  (.A(\siso256_2.tranche3.tranche0.slice2.latch ),
    .Y(\siso256_2.tranche3.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice2.l0  (.D(\siso256_2.tranche3.tranche3.slice1.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice2.l1  (.D(\siso256_2.tranche3.tranche3.slice1.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice2.l2  (.D(\siso256_2.tranche3.tranche3.slice1.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice2.l3  (.D(\siso256_2.tranche3.tranche3.slice1.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche3.slice2.latch_n ),
    .Q(\siso256_2.tranche3.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso256_2.tranche3.tranche3.slice3.Amp  (.A(\siso256_2.tranche3.tranche0.slice3.latch ),
    .Y(\siso256_2.tranche3.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice3.l0  (.D(\siso256_2.tranche3.tranche3.slice2.siso_out[0] ),
    .GATE(\siso256_2.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice3.l1  (.D(\siso256_2.tranche3.tranche3.slice2.siso_out[1] ),
    .GATE(\siso256_2.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice3.l2  (.D(\siso256_2.tranche3.tranche3.slice2.siso_out[2] ),
    .GATE(\siso256_2.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso256_2.tranche3.tranche3.slice3.l3  (.D(\siso256_2.tranche3.tranche3.slice2.siso_out[3] ),
    .GATE(\siso256_2.tranche3.tranche3.slice3.latch_n ),
    .Q(\siso256_2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.Amp.Amp0  (.A(\Decoded8[0] ),
    .Y(\siso64_1.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso64_1.Amp.Amp1  (.A(\Decoded8[2] ),
    .Y(\siso64_1.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso64_1.Amp.Amp2  (.A(\Decoded8[4] ),
    .Y(\siso64_1.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso64_1.Amp.Amp3  (.A(\Decoded8[6] ),
    .Y(\siso64_1.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso64_1.tranche0.slice0.Amp  (.A(\siso64_1.tranche0.slice0.latch ),
    .Y(\siso64_1.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice0.l0  (.D(\siso256_1.siso_out[0] ),
    .GATE(\siso64_1.tranche0.slice0.latch_n ),
    .Q(\siso64_1.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice0.l1  (.D(\siso256_1.siso_out[1] ),
    .GATE(\siso64_1.tranche0.slice0.latch_n ),
    .Q(\siso64_1.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice0.l2  (.D(\siso256_1.siso_out[2] ),
    .GATE(\siso64_1.tranche0.slice0.latch_n ),
    .Q(\siso64_1.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice0.l3  (.D(\siso256_1.siso_out[3] ),
    .GATE(\siso64_1.tranche0.slice0.latch_n ),
    .Q(\siso64_1.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche0.slice1.Amp  (.A(\siso64_1.tranche0.slice1.latch ),
    .Y(\siso64_1.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice1.l0  (.D(\siso64_1.tranche0.slice0.siso_out[0] ),
    .GATE(\siso64_1.tranche0.slice1.latch_n ),
    .Q(\siso64_1.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice1.l1  (.D(\siso64_1.tranche0.slice0.siso_out[1] ),
    .GATE(\siso64_1.tranche0.slice1.latch_n ),
    .Q(\siso64_1.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice1.l2  (.D(\siso64_1.tranche0.slice0.siso_out[2] ),
    .GATE(\siso64_1.tranche0.slice1.latch_n ),
    .Q(\siso64_1.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice1.l3  (.D(\siso64_1.tranche0.slice0.siso_out[3] ),
    .GATE(\siso64_1.tranche0.slice1.latch_n ),
    .Q(\siso64_1.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche0.slice2.Amp  (.A(\siso64_1.tranche0.slice2.latch ),
    .Y(\siso64_1.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice2.l0  (.D(\siso64_1.tranche0.slice1.siso_out[0] ),
    .GATE(\siso64_1.tranche0.slice2.latch_n ),
    .Q(\siso64_1.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice2.l1  (.D(\siso64_1.tranche0.slice1.siso_out[1] ),
    .GATE(\siso64_1.tranche0.slice2.latch_n ),
    .Q(\siso64_1.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice2.l2  (.D(\siso64_1.tranche0.slice1.siso_out[2] ),
    .GATE(\siso64_1.tranche0.slice2.latch_n ),
    .Q(\siso64_1.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice2.l3  (.D(\siso64_1.tranche0.slice1.siso_out[3] ),
    .GATE(\siso64_1.tranche0.slice2.latch_n ),
    .Q(\siso64_1.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche0.slice3.Amp  (.A(\siso64_1.tranche0.slice3.latch ),
    .Y(\siso64_1.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice3.l0  (.D(\siso64_1.tranche0.slice2.siso_out[0] ),
    .GATE(\siso64_1.tranche0.slice3.latch_n ),
    .Q(\siso64_1.t1[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice3.l1  (.D(\siso64_1.tranche0.slice2.siso_out[1] ),
    .GATE(\siso64_1.tranche0.slice3.latch_n ),
    .Q(\siso64_1.t1[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice3.l2  (.D(\siso64_1.tranche0.slice2.siso_out[2] ),
    .GATE(\siso64_1.tranche0.slice3.latch_n ),
    .Q(\siso64_1.t1[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche0.slice3.l3  (.D(\siso64_1.tranche0.slice2.siso_out[3] ),
    .GATE(\siso64_1.tranche0.slice3.latch_n ),
    .Q(\siso64_1.t1[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche1.slice0.Amp  (.A(\siso64_1.tranche0.slice0.latch ),
    .Y(\siso64_1.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice0.l0  (.D(\siso64_1.t1[0] ),
    .GATE(\siso64_1.tranche1.slice0.latch_n ),
    .Q(\siso64_1.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice0.l1  (.D(\siso64_1.t1[1] ),
    .GATE(\siso64_1.tranche1.slice0.latch_n ),
    .Q(\siso64_1.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice0.l2  (.D(\siso64_1.t1[2] ),
    .GATE(\siso64_1.tranche1.slice0.latch_n ),
    .Q(\siso64_1.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice0.l3  (.D(\siso64_1.t1[3] ),
    .GATE(\siso64_1.tranche1.slice0.latch_n ),
    .Q(\siso64_1.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche1.slice1.Amp  (.A(\siso64_1.tranche0.slice1.latch ),
    .Y(\siso64_1.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice1.l0  (.D(\siso64_1.tranche1.slice0.siso_out[0] ),
    .GATE(\siso64_1.tranche1.slice1.latch_n ),
    .Q(\siso64_1.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice1.l1  (.D(\siso64_1.tranche1.slice0.siso_out[1] ),
    .GATE(\siso64_1.tranche1.slice1.latch_n ),
    .Q(\siso64_1.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice1.l2  (.D(\siso64_1.tranche1.slice0.siso_out[2] ),
    .GATE(\siso64_1.tranche1.slice1.latch_n ),
    .Q(\siso64_1.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice1.l3  (.D(\siso64_1.tranche1.slice0.siso_out[3] ),
    .GATE(\siso64_1.tranche1.slice1.latch_n ),
    .Q(\siso64_1.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche1.slice2.Amp  (.A(\siso64_1.tranche0.slice2.latch ),
    .Y(\siso64_1.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice2.l0  (.D(\siso64_1.tranche1.slice1.siso_out[0] ),
    .GATE(\siso64_1.tranche1.slice2.latch_n ),
    .Q(\siso64_1.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice2.l1  (.D(\siso64_1.tranche1.slice1.siso_out[1] ),
    .GATE(\siso64_1.tranche1.slice2.latch_n ),
    .Q(\siso64_1.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice2.l2  (.D(\siso64_1.tranche1.slice1.siso_out[2] ),
    .GATE(\siso64_1.tranche1.slice2.latch_n ),
    .Q(\siso64_1.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice2.l3  (.D(\siso64_1.tranche1.slice1.siso_out[3] ),
    .GATE(\siso64_1.tranche1.slice2.latch_n ),
    .Q(\siso64_1.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche1.slice3.Amp  (.A(\siso64_1.tranche0.slice3.latch ),
    .Y(\siso64_1.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice3.l0  (.D(\siso64_1.tranche1.slice2.siso_out[0] ),
    .GATE(\siso64_1.tranche1.slice3.latch_n ),
    .Q(\siso64_1.t2[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice3.l1  (.D(\siso64_1.tranche1.slice2.siso_out[1] ),
    .GATE(\siso64_1.tranche1.slice3.latch_n ),
    .Q(\siso64_1.t2[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice3.l2  (.D(\siso64_1.tranche1.slice2.siso_out[2] ),
    .GATE(\siso64_1.tranche1.slice3.latch_n ),
    .Q(\siso64_1.t2[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche1.slice3.l3  (.D(\siso64_1.tranche1.slice2.siso_out[3] ),
    .GATE(\siso64_1.tranche1.slice3.latch_n ),
    .Q(\siso64_1.t2[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche2.slice0.Amp  (.A(\siso64_1.tranche0.slice0.latch ),
    .Y(\siso64_1.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice0.l0  (.D(\siso64_1.t2[0] ),
    .GATE(\siso64_1.tranche2.slice0.latch_n ),
    .Q(\siso64_1.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice0.l1  (.D(\siso64_1.t2[1] ),
    .GATE(\siso64_1.tranche2.slice0.latch_n ),
    .Q(\siso64_1.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice0.l2  (.D(\siso64_1.t2[2] ),
    .GATE(\siso64_1.tranche2.slice0.latch_n ),
    .Q(\siso64_1.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice0.l3  (.D(\siso64_1.t2[3] ),
    .GATE(\siso64_1.tranche2.slice0.latch_n ),
    .Q(\siso64_1.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche2.slice1.Amp  (.A(\siso64_1.tranche0.slice1.latch ),
    .Y(\siso64_1.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice1.l0  (.D(\siso64_1.tranche2.slice0.siso_out[0] ),
    .GATE(\siso64_1.tranche2.slice1.latch_n ),
    .Q(\siso64_1.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice1.l1  (.D(\siso64_1.tranche2.slice0.siso_out[1] ),
    .GATE(\siso64_1.tranche2.slice1.latch_n ),
    .Q(\siso64_1.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice1.l2  (.D(\siso64_1.tranche2.slice0.siso_out[2] ),
    .GATE(\siso64_1.tranche2.slice1.latch_n ),
    .Q(\siso64_1.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice1.l3  (.D(\siso64_1.tranche2.slice0.siso_out[3] ),
    .GATE(\siso64_1.tranche2.slice1.latch_n ),
    .Q(\siso64_1.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche2.slice2.Amp  (.A(\siso64_1.tranche0.slice2.latch ),
    .Y(\siso64_1.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice2.l0  (.D(\siso64_1.tranche2.slice1.siso_out[0] ),
    .GATE(\siso64_1.tranche2.slice2.latch_n ),
    .Q(\siso64_1.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice2.l1  (.D(\siso64_1.tranche2.slice1.siso_out[1] ),
    .GATE(\siso64_1.tranche2.slice2.latch_n ),
    .Q(\siso64_1.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice2.l2  (.D(\siso64_1.tranche2.slice1.siso_out[2] ),
    .GATE(\siso64_1.tranche2.slice2.latch_n ),
    .Q(\siso64_1.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice2.l3  (.D(\siso64_1.tranche2.slice1.siso_out[3] ),
    .GATE(\siso64_1.tranche2.slice2.latch_n ),
    .Q(\siso64_1.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche2.slice3.Amp  (.A(\siso64_1.tranche0.slice3.latch ),
    .Y(\siso64_1.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice3.l0  (.D(\siso64_1.tranche2.slice2.siso_out[0] ),
    .GATE(\siso64_1.tranche2.slice3.latch_n ),
    .Q(\siso64_1.t3[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice3.l1  (.D(\siso64_1.tranche2.slice2.siso_out[1] ),
    .GATE(\siso64_1.tranche2.slice3.latch_n ),
    .Q(\siso64_1.t3[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice3.l2  (.D(\siso64_1.tranche2.slice2.siso_out[2] ),
    .GATE(\siso64_1.tranche2.slice3.latch_n ),
    .Q(\siso64_1.t3[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche2.slice3.l3  (.D(\siso64_1.tranche2.slice2.siso_out[3] ),
    .GATE(\siso64_1.tranche2.slice3.latch_n ),
    .Q(\siso64_1.t3[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche3.slice0.Amp  (.A(\siso64_1.tranche0.slice0.latch ),
    .Y(\siso64_1.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice0.l0  (.D(\siso64_1.t3[0] ),
    .GATE(\siso64_1.tranche3.slice0.latch_n ),
    .Q(\siso64_1.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice0.l1  (.D(\siso64_1.t3[1] ),
    .GATE(\siso64_1.tranche3.slice0.latch_n ),
    .Q(\siso64_1.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice0.l2  (.D(\siso64_1.t3[2] ),
    .GATE(\siso64_1.tranche3.slice0.latch_n ),
    .Q(\siso64_1.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice0.l3  (.D(\siso64_1.t3[3] ),
    .GATE(\siso64_1.tranche3.slice0.latch_n ),
    .Q(\siso64_1.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche3.slice1.Amp  (.A(\siso64_1.tranche0.slice1.latch ),
    .Y(\siso64_1.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice1.l0  (.D(\siso64_1.tranche3.slice0.siso_out[0] ),
    .GATE(\siso64_1.tranche3.slice1.latch_n ),
    .Q(\siso64_1.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice1.l1  (.D(\siso64_1.tranche3.slice0.siso_out[1] ),
    .GATE(\siso64_1.tranche3.slice1.latch_n ),
    .Q(\siso64_1.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice1.l2  (.D(\siso64_1.tranche3.slice0.siso_out[2] ),
    .GATE(\siso64_1.tranche3.slice1.latch_n ),
    .Q(\siso64_1.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice1.l3  (.D(\siso64_1.tranche3.slice0.siso_out[3] ),
    .GATE(\siso64_1.tranche3.slice1.latch_n ),
    .Q(\siso64_1.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche3.slice2.Amp  (.A(\siso64_1.tranche0.slice2.latch ),
    .Y(\siso64_1.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice2.l0  (.D(\siso64_1.tranche3.slice1.siso_out[0] ),
    .GATE(\siso64_1.tranche3.slice2.latch_n ),
    .Q(\siso64_1.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice2.l1  (.D(\siso64_1.tranche3.slice1.siso_out[1] ),
    .GATE(\siso64_1.tranche3.slice2.latch_n ),
    .Q(\siso64_1.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice2.l2  (.D(\siso64_1.tranche3.slice1.siso_out[2] ),
    .GATE(\siso64_1.tranche3.slice2.latch_n ),
    .Q(\siso64_1.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice2.l3  (.D(\siso64_1.tranche3.slice1.siso_out[3] ),
    .GATE(\siso64_1.tranche3.slice2.latch_n ),
    .Q(\siso64_1.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_1.tranche3.slice3.Amp  (.A(\siso64_1.tranche0.slice3.latch ),
    .Y(\siso64_1.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice3.l0  (.D(\siso64_1.tranche3.slice2.siso_out[0] ),
    .GATE(\siso64_1.tranche3.slice3.latch_n ),
    .Q(\demux_mux.exit_even[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice3.l1  (.D(\siso64_1.tranche3.slice2.siso_out[1] ),
    .GATE(\siso64_1.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_even[1] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice3.l2  (.D(\siso64_1.tranche3.slice2.siso_out[2] ),
    .GATE(\siso64_1.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_even[2] ));
 sg13cmos5l_dlhq_1 \siso64_1.tranche3.slice3.l3  (.D(\siso64_1.tranche3.slice2.siso_out[3] ),
    .GATE(\siso64_1.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_even[3] ));
 sg13cmos5l_inv_4 \siso64_2.Amp.Amp0  (.A(\Decoded8[1] ),
    .Y(\siso64_2.tranche0.slice3.latch ));
 sg13cmos5l_inv_4 \siso64_2.Amp.Amp1  (.A(\Decoded8[3] ),
    .Y(\siso64_2.tranche0.slice2.latch ));
 sg13cmos5l_inv_4 \siso64_2.Amp.Amp2  (.A(\Decoded8[5] ),
    .Y(\siso64_2.tranche0.slice1.latch ));
 sg13cmos5l_inv_4 \siso64_2.Amp.Amp3  (.A(\Decoded8[7] ),
    .Y(\siso64_2.tranche0.slice0.latch ));
 sg13cmos5l_inv_4 \siso64_2.tranche0.slice0.Amp  (.A(\siso64_2.tranche0.slice0.latch ),
    .Y(\siso64_2.tranche0.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice0.l0  (.D(\siso256_2.siso_out[0] ),
    .GATE(\siso64_2.tranche0.slice0.latch_n ),
    .Q(\siso64_2.tranche0.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice0.l1  (.D(\siso256_2.siso_out[1] ),
    .GATE(\siso64_2.tranche0.slice0.latch_n ),
    .Q(\siso64_2.tranche0.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice0.l2  (.D(\siso256_2.siso_out[2] ),
    .GATE(\siso64_2.tranche0.slice0.latch_n ),
    .Q(\siso64_2.tranche0.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice0.l3  (.D(\siso256_2.siso_out[3] ),
    .GATE(\siso64_2.tranche0.slice0.latch_n ),
    .Q(\siso64_2.tranche0.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche0.slice1.Amp  (.A(\siso64_2.tranche0.slice1.latch ),
    .Y(\siso64_2.tranche0.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice1.l0  (.D(\siso64_2.tranche0.slice0.siso_out[0] ),
    .GATE(\siso64_2.tranche0.slice1.latch_n ),
    .Q(\siso64_2.tranche0.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice1.l1  (.D(\siso64_2.tranche0.slice0.siso_out[1] ),
    .GATE(\siso64_2.tranche0.slice1.latch_n ),
    .Q(\siso64_2.tranche0.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice1.l2  (.D(\siso64_2.tranche0.slice0.siso_out[2] ),
    .GATE(\siso64_2.tranche0.slice1.latch_n ),
    .Q(\siso64_2.tranche0.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice1.l3  (.D(\siso64_2.tranche0.slice0.siso_out[3] ),
    .GATE(\siso64_2.tranche0.slice1.latch_n ),
    .Q(\siso64_2.tranche0.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche0.slice2.Amp  (.A(\siso64_2.tranche0.slice2.latch ),
    .Y(\siso64_2.tranche0.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice2.l0  (.D(\siso64_2.tranche0.slice1.siso_out[0] ),
    .GATE(\siso64_2.tranche0.slice2.latch_n ),
    .Q(\siso64_2.tranche0.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice2.l1  (.D(\siso64_2.tranche0.slice1.siso_out[1] ),
    .GATE(\siso64_2.tranche0.slice2.latch_n ),
    .Q(\siso64_2.tranche0.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice2.l2  (.D(\siso64_2.tranche0.slice1.siso_out[2] ),
    .GATE(\siso64_2.tranche0.slice2.latch_n ),
    .Q(\siso64_2.tranche0.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice2.l3  (.D(\siso64_2.tranche0.slice1.siso_out[3] ),
    .GATE(\siso64_2.tranche0.slice2.latch_n ),
    .Q(\siso64_2.tranche0.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche0.slice3.Amp  (.A(\siso64_2.tranche0.slice3.latch ),
    .Y(\siso64_2.tranche0.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice3.l0  (.D(\siso64_2.tranche0.slice2.siso_out[0] ),
    .GATE(\siso64_2.tranche0.slice3.latch_n ),
    .Q(\siso64_2.t1[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice3.l1  (.D(\siso64_2.tranche0.slice2.siso_out[1] ),
    .GATE(\siso64_2.tranche0.slice3.latch_n ),
    .Q(\siso64_2.t1[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice3.l2  (.D(\siso64_2.tranche0.slice2.siso_out[2] ),
    .GATE(\siso64_2.tranche0.slice3.latch_n ),
    .Q(\siso64_2.t1[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche0.slice3.l3  (.D(\siso64_2.tranche0.slice2.siso_out[3] ),
    .GATE(\siso64_2.tranche0.slice3.latch_n ),
    .Q(\siso64_2.t1[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche1.slice0.Amp  (.A(\siso64_2.tranche0.slice0.latch ),
    .Y(\siso64_2.tranche1.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice0.l0  (.D(\siso64_2.t1[0] ),
    .GATE(\siso64_2.tranche1.slice0.latch_n ),
    .Q(\siso64_2.tranche1.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice0.l1  (.D(\siso64_2.t1[1] ),
    .GATE(\siso64_2.tranche1.slice0.latch_n ),
    .Q(\siso64_2.tranche1.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice0.l2  (.D(\siso64_2.t1[2] ),
    .GATE(\siso64_2.tranche1.slice0.latch_n ),
    .Q(\siso64_2.tranche1.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice0.l3  (.D(\siso64_2.t1[3] ),
    .GATE(\siso64_2.tranche1.slice0.latch_n ),
    .Q(\siso64_2.tranche1.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche1.slice1.Amp  (.A(\siso64_2.tranche0.slice1.latch ),
    .Y(\siso64_2.tranche1.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice1.l0  (.D(\siso64_2.tranche1.slice0.siso_out[0] ),
    .GATE(\siso64_2.tranche1.slice1.latch_n ),
    .Q(\siso64_2.tranche1.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice1.l1  (.D(\siso64_2.tranche1.slice0.siso_out[1] ),
    .GATE(\siso64_2.tranche1.slice1.latch_n ),
    .Q(\siso64_2.tranche1.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice1.l2  (.D(\siso64_2.tranche1.slice0.siso_out[2] ),
    .GATE(\siso64_2.tranche1.slice1.latch_n ),
    .Q(\siso64_2.tranche1.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice1.l3  (.D(\siso64_2.tranche1.slice0.siso_out[3] ),
    .GATE(\siso64_2.tranche1.slice1.latch_n ),
    .Q(\siso64_2.tranche1.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche1.slice2.Amp  (.A(\siso64_2.tranche0.slice2.latch ),
    .Y(\siso64_2.tranche1.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice2.l0  (.D(\siso64_2.tranche1.slice1.siso_out[0] ),
    .GATE(\siso64_2.tranche1.slice2.latch_n ),
    .Q(\siso64_2.tranche1.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice2.l1  (.D(\siso64_2.tranche1.slice1.siso_out[1] ),
    .GATE(\siso64_2.tranche1.slice2.latch_n ),
    .Q(\siso64_2.tranche1.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice2.l2  (.D(\siso64_2.tranche1.slice1.siso_out[2] ),
    .GATE(\siso64_2.tranche1.slice2.latch_n ),
    .Q(\siso64_2.tranche1.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice2.l3  (.D(\siso64_2.tranche1.slice1.siso_out[3] ),
    .GATE(\siso64_2.tranche1.slice2.latch_n ),
    .Q(\siso64_2.tranche1.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche1.slice3.Amp  (.A(\siso64_2.tranche0.slice3.latch ),
    .Y(\siso64_2.tranche1.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice3.l0  (.D(\siso64_2.tranche1.slice2.siso_out[0] ),
    .GATE(\siso64_2.tranche1.slice3.latch_n ),
    .Q(\siso64_2.t2[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice3.l1  (.D(\siso64_2.tranche1.slice2.siso_out[1] ),
    .GATE(\siso64_2.tranche1.slice3.latch_n ),
    .Q(\siso64_2.t2[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice3.l2  (.D(\siso64_2.tranche1.slice2.siso_out[2] ),
    .GATE(\siso64_2.tranche1.slice3.latch_n ),
    .Q(\siso64_2.t2[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche1.slice3.l3  (.D(\siso64_2.tranche1.slice2.siso_out[3] ),
    .GATE(\siso64_2.tranche1.slice3.latch_n ),
    .Q(\siso64_2.t2[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche2.slice0.Amp  (.A(\siso64_2.tranche0.slice0.latch ),
    .Y(\siso64_2.tranche2.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice0.l0  (.D(\siso64_2.t2[0] ),
    .GATE(\siso64_2.tranche2.slice0.latch_n ),
    .Q(\siso64_2.tranche2.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice0.l1  (.D(\siso64_2.t2[1] ),
    .GATE(\siso64_2.tranche2.slice0.latch_n ),
    .Q(\siso64_2.tranche2.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice0.l2  (.D(\siso64_2.t2[2] ),
    .GATE(\siso64_2.tranche2.slice0.latch_n ),
    .Q(\siso64_2.tranche2.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice0.l3  (.D(\siso64_2.t2[3] ),
    .GATE(\siso64_2.tranche2.slice0.latch_n ),
    .Q(\siso64_2.tranche2.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche2.slice1.Amp  (.A(\siso64_2.tranche0.slice1.latch ),
    .Y(\siso64_2.tranche2.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice1.l0  (.D(\siso64_2.tranche2.slice0.siso_out[0] ),
    .GATE(\siso64_2.tranche2.slice1.latch_n ),
    .Q(\siso64_2.tranche2.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice1.l1  (.D(\siso64_2.tranche2.slice0.siso_out[1] ),
    .GATE(\siso64_2.tranche2.slice1.latch_n ),
    .Q(\siso64_2.tranche2.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice1.l2  (.D(\siso64_2.tranche2.slice0.siso_out[2] ),
    .GATE(\siso64_2.tranche2.slice1.latch_n ),
    .Q(\siso64_2.tranche2.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice1.l3  (.D(\siso64_2.tranche2.slice0.siso_out[3] ),
    .GATE(\siso64_2.tranche2.slice1.latch_n ),
    .Q(\siso64_2.tranche2.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche2.slice2.Amp  (.A(\siso64_2.tranche0.slice2.latch ),
    .Y(\siso64_2.tranche2.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice2.l0  (.D(\siso64_2.tranche2.slice1.siso_out[0] ),
    .GATE(\siso64_2.tranche2.slice2.latch_n ),
    .Q(\siso64_2.tranche2.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice2.l1  (.D(\siso64_2.tranche2.slice1.siso_out[1] ),
    .GATE(\siso64_2.tranche2.slice2.latch_n ),
    .Q(\siso64_2.tranche2.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice2.l2  (.D(\siso64_2.tranche2.slice1.siso_out[2] ),
    .GATE(\siso64_2.tranche2.slice2.latch_n ),
    .Q(\siso64_2.tranche2.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice2.l3  (.D(\siso64_2.tranche2.slice1.siso_out[3] ),
    .GATE(\siso64_2.tranche2.slice2.latch_n ),
    .Q(\siso64_2.tranche2.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche2.slice3.Amp  (.A(\siso64_2.tranche0.slice3.latch ),
    .Y(\siso64_2.tranche2.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice3.l0  (.D(\siso64_2.tranche2.slice2.siso_out[0] ),
    .GATE(\siso64_2.tranche2.slice3.latch_n ),
    .Q(\siso64_2.t3[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice3.l1  (.D(\siso64_2.tranche2.slice2.siso_out[1] ),
    .GATE(\siso64_2.tranche2.slice3.latch_n ),
    .Q(\siso64_2.t3[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice3.l2  (.D(\siso64_2.tranche2.slice2.siso_out[2] ),
    .GATE(\siso64_2.tranche2.slice3.latch_n ),
    .Q(\siso64_2.t3[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche2.slice3.l3  (.D(\siso64_2.tranche2.slice2.siso_out[3] ),
    .GATE(\siso64_2.tranche2.slice3.latch_n ),
    .Q(\siso64_2.t3[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche3.slice0.Amp  (.A(\siso64_2.tranche0.slice0.latch ),
    .Y(\siso64_2.tranche3.slice0.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice0.l0  (.D(\siso64_2.t3[0] ),
    .GATE(\siso64_2.tranche3.slice0.latch_n ),
    .Q(\siso64_2.tranche3.slice0.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice0.l1  (.D(\siso64_2.t3[1] ),
    .GATE(\siso64_2.tranche3.slice0.latch_n ),
    .Q(\siso64_2.tranche3.slice0.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice0.l2  (.D(\siso64_2.t3[2] ),
    .GATE(\siso64_2.tranche3.slice0.latch_n ),
    .Q(\siso64_2.tranche3.slice0.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice0.l3  (.D(\siso64_2.t3[3] ),
    .GATE(\siso64_2.tranche3.slice0.latch_n ),
    .Q(\siso64_2.tranche3.slice0.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche3.slice1.Amp  (.A(\siso64_2.tranche0.slice1.latch ),
    .Y(\siso64_2.tranche3.slice1.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice1.l0  (.D(\siso64_2.tranche3.slice0.siso_out[0] ),
    .GATE(\siso64_2.tranche3.slice1.latch_n ),
    .Q(\siso64_2.tranche3.slice1.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice1.l1  (.D(\siso64_2.tranche3.slice0.siso_out[1] ),
    .GATE(\siso64_2.tranche3.slice1.latch_n ),
    .Q(\siso64_2.tranche3.slice1.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice1.l2  (.D(\siso64_2.tranche3.slice0.siso_out[2] ),
    .GATE(\siso64_2.tranche3.slice1.latch_n ),
    .Q(\siso64_2.tranche3.slice1.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice1.l3  (.D(\siso64_2.tranche3.slice0.siso_out[3] ),
    .GATE(\siso64_2.tranche3.slice1.latch_n ),
    .Q(\siso64_2.tranche3.slice1.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche3.slice2.Amp  (.A(\siso64_2.tranche0.slice2.latch ),
    .Y(\siso64_2.tranche3.slice2.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice2.l0  (.D(\siso64_2.tranche3.slice1.siso_out[0] ),
    .GATE(\siso64_2.tranche3.slice2.latch_n ),
    .Q(\siso64_2.tranche3.slice2.siso_out[0] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice2.l1  (.D(\siso64_2.tranche3.slice1.siso_out[1] ),
    .GATE(\siso64_2.tranche3.slice2.latch_n ),
    .Q(\siso64_2.tranche3.slice2.siso_out[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice2.l2  (.D(\siso64_2.tranche3.slice1.siso_out[2] ),
    .GATE(\siso64_2.tranche3.slice2.latch_n ),
    .Q(\siso64_2.tranche3.slice2.siso_out[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice2.l3  (.D(\siso64_2.tranche3.slice1.siso_out[3] ),
    .GATE(\siso64_2.tranche3.slice2.latch_n ),
    .Q(\siso64_2.tranche3.slice2.siso_out[3] ));
 sg13cmos5l_inv_4 \siso64_2.tranche3.slice3.Amp  (.A(\siso64_2.tranche0.slice3.latch ),
    .Y(\siso64_2.tranche3.slice3.latch_n ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice3.l0  (.D(\siso64_2.tranche3.slice2.siso_out[0] ),
    .GATE(\siso64_2.tranche3.slice3.latch_n ),
    .Q(\demux_mux.exit_odd[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice3.l1  (.D(\siso64_2.tranche3.slice2.siso_out[1] ),
    .GATE(\siso64_2.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_odd[1] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice3.l2  (.D(\siso64_2.tranche3.slice2.siso_out[2] ),
    .GATE(\siso64_2.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_odd[2] ));
 sg13cmos5l_dlhq_1 \siso64_2.tranche3.slice3.l3  (.D(\siso64_2.tranche3.slice2.siso_out[3] ),
    .GATE(\siso64_2.tranche3.slice3.latch_n ),
    .Q(\demux_mux.siso_last_odd[3] ));
 sg13cmos5l_sdfrbpq_1 sync_Din (.Q(SISO_in),
    .CLK(clknet_2_3__leaf_CLK_OUT),
    .RESET_B(net33),
    .SCD(net36),
    .D(net5),
    .SCE(net8));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq (.L_HI(net));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_11 (.L_HI(net11));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_12 (.L_HI(net12));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_13 (.L_HI(net13));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_14 (.L_HI(net14));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_15 (.L_HI(net15));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_16 (.L_HI(net16));
 sg13cmos5l_tiehi tt_um_ygdes_hdsiso8_dlhq_17 (.L_HI(net17));
 assign uio_oe[0] = net;
 assign uio_oe[1] = net11;
 assign uio_oe[2] = net12;
 assign uio_oe[3] = net13;
 assign uio_oe[4] = net14;
 assign uio_oe[5] = net15;
 assign uio_oe[6] = net16;
 assign uio_oe[7] = net17;
endmodule
