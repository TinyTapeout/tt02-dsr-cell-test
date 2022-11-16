/* Automatically generated from https://wokwi.com/projects/348378194290672212 */

`default_nettype none

module user_module_348378194290672212(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5;
  wire net6;
  wire net7 = 1'b0;
  wire net8 = 1'b0;
  wire net9 = 1'b1;
  wire net10 = 1'b1;

  assign io_out[0] = net5;
  assign io_out[1] = net6;
  assign io_out[2] = net7;
  assign io_out[3] = net7;
  assign io_out[4] = net7;
  assign io_out[5] = net7;
  assign io_out[6] = net7;
  assign io_out[7] = net7;

  dffsr_cell flipflop2 (
    .d (net2),
    .clk (net1),
    .s (net3),
    .r (net4),
    .q (net5),
    .notq (net6)
  );
endmodule
