/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* top =  1  *)
(* src = "synth.v:1" *)
module synth(clk_f, clk_2f, reset, lane_0, valid_0, lane_1, valid_1, data_out_synth, valid_out_synth);
  (* src = "synth.v:13" *)
  wire [7:0] _000_;
  (* src = "synth.v:13" *)
  wire _001_;
  (* src = "synth.v:13" *)
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  (* src = "synth.v:3" *)
  input clk_2f;
  (* src = "synth.v:2" *)
  input clk_f;
  (* src = "synth.v:9" *)
  output [7:0] data_out_synth;
  (* src = "synth.v:5" *)
  input [7:0] lane_0;
  (* src = "synth.v:7" *)
  input [7:0] lane_1;
  (* src = "synth.v:4" *)
  input reset;
  (* src = "synth.v:12" *)
  wire selector;
  (* src = "synth.v:6" *)
  input valid_0;
  (* src = "synth.v:8" *)
  input valid_1;
  (* src = "synth.v:10" *)
  output valid_out_synth;
  NOT _063_ (
    .A(reset),
    .Y(_010_)
  );
  NOT _064_ (
    .A(selector),
    .Y(_011_)
  );
  NAND _065_ (
    .A(_011_),
    .B(valid_0),
    .Y(_012_)
  );
  NAND _066_ (
    .A(selector),
    .B(valid_1),
    .Y(_013_)
  );
  NAND _067_ (
    .A(_013_),
    .B(_012_),
    .Y(_014_)
  );
  NOT _068_ (
    .A(_014_),
    .Y(_015_)
  );
  NOR _069_ (
    .A(_015_),
    .B(_010_),
    .Y(_002_)
  );
  NOR _070_ (
    .A(selector),
    .B(valid_0),
    .Y(_016_)
  );
  NAND _071_ (
    .A(_013_),
    .B(reset),
    .Y(_017_)
  );
  NOR _072_ (
    .A(_017_),
    .B(_016_),
    .Y(_001_)
  );
  NOT _073_ (
    .A(data_out_synth[0]),
    .Y(_018_)
  );
  NOR _074_ (
    .A(_014_),
    .B(_018_),
    .Y(_019_)
  );
  NOT _075_ (
    .A(valid_1),
    .Y(_020_)
  );
  NOR _076_ (
    .A(_011_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _077_ (
    .A(_021_),
    .B(lane_1[0]),
    .Y(_022_)
  );
  NOT _078_ (
    .A(valid_0),
    .Y(_023_)
  );
  NOR _079_ (
    .A(selector),
    .B(_023_),
    .Y(_024_)
  );
  NAND _080_ (
    .A(_024_),
    .B(lane_0[0]),
    .Y(_025_)
  );
  NAND _081_ (
    .A(_025_),
    .B(_022_),
    .Y(_026_)
  );
  NOR _082_ (
    .A(_026_),
    .B(_019_),
    .Y(_027_)
  );
  NOR _083_ (
    .A(_027_),
    .B(_010_),
    .Y(_000_[0])
  );
  NOT _084_ (
    .A(data_out_synth[1]),
    .Y(_028_)
  );
  NOR _085_ (
    .A(_014_),
    .B(_028_),
    .Y(_029_)
  );
  NAND _086_ (
    .A(_021_),
    .B(lane_1[1]),
    .Y(_030_)
  );
  NAND _087_ (
    .A(_024_),
    .B(lane_0[1]),
    .Y(_031_)
  );
  NAND _088_ (
    .A(_031_),
    .B(_030_),
    .Y(_032_)
  );
  NOR _089_ (
    .A(_032_),
    .B(_029_),
    .Y(_033_)
  );
  NOR _090_ (
    .A(_033_),
    .B(_010_),
    .Y(_000_[1])
  );
  NOT _091_ (
    .A(data_out_synth[2]),
    .Y(_034_)
  );
  NOR _092_ (
    .A(_014_),
    .B(_034_),
    .Y(_035_)
  );
  NAND _093_ (
    .A(_021_),
    .B(lane_1[2]),
    .Y(_036_)
  );
  NAND _094_ (
    .A(_024_),
    .B(lane_0[2]),
    .Y(_037_)
  );
  NAND _095_ (
    .A(_037_),
    .B(_036_),
    .Y(_038_)
  );
  NOR _096_ (
    .A(_038_),
    .B(_035_),
    .Y(_039_)
  );
  NOR _097_ (
    .A(_039_),
    .B(_010_),
    .Y(_000_[2])
  );
  NOT _098_ (
    .A(data_out_synth[3]),
    .Y(_040_)
  );
  NOR _099_ (
    .A(_014_),
    .B(_040_),
    .Y(_041_)
  );
  NAND _100_ (
    .A(_021_),
    .B(lane_1[3]),
    .Y(_042_)
  );
  NAND _101_ (
    .A(_024_),
    .B(lane_0[3]),
    .Y(_043_)
  );
  NAND _102_ (
    .A(_043_),
    .B(_042_),
    .Y(_044_)
  );
  NOR _103_ (
    .A(_044_),
    .B(_041_),
    .Y(_045_)
  );
  NOR _104_ (
    .A(_045_),
    .B(_010_),
    .Y(_000_[3])
  );
  NOT _105_ (
    .A(data_out_synth[4]),
    .Y(_046_)
  );
  NOR _106_ (
    .A(_014_),
    .B(_046_),
    .Y(_047_)
  );
  NAND _107_ (
    .A(_021_),
    .B(lane_1[4]),
    .Y(_048_)
  );
  NAND _108_ (
    .A(_024_),
    .B(lane_0[4]),
    .Y(_049_)
  );
  NAND _109_ (
    .A(_049_),
    .B(_048_),
    .Y(_050_)
  );
  NOR _110_ (
    .A(_050_),
    .B(_047_),
    .Y(_051_)
  );
  NOR _111_ (
    .A(_051_),
    .B(_010_),
    .Y(_000_[4])
  );
  NOT _112_ (
    .A(data_out_synth[5]),
    .Y(_052_)
  );
  NOR _113_ (
    .A(_014_),
    .B(_052_),
    .Y(_053_)
  );
  NAND _114_ (
    .A(_021_),
    .B(lane_1[5]),
    .Y(_054_)
  );
  NAND _115_ (
    .A(_024_),
    .B(lane_0[5]),
    .Y(_055_)
  );
  NAND _116_ (
    .A(_055_),
    .B(_054_),
    .Y(_056_)
  );
  NOR _117_ (
    .A(_056_),
    .B(_053_),
    .Y(_057_)
  );
  NOR _118_ (
    .A(_057_),
    .B(_010_),
    .Y(_000_[5])
  );
  NOT _119_ (
    .A(data_out_synth[6]),
    .Y(_058_)
  );
  NOR _120_ (
    .A(_014_),
    .B(_058_),
    .Y(_059_)
  );
  NAND _121_ (
    .A(_021_),
    .B(lane_1[6]),
    .Y(_060_)
  );
  NAND _122_ (
    .A(_024_),
    .B(lane_0[6]),
    .Y(_061_)
  );
  NAND _123_ (
    .A(_061_),
    .B(_060_),
    .Y(_062_)
  );
  NOR _124_ (
    .A(_062_),
    .B(_059_),
    .Y(_003_)
  );
  NOR _125_ (
    .A(_003_),
    .B(_010_),
    .Y(_000_[6])
  );
  NOT _126_ (
    .A(data_out_synth[7]),
    .Y(_004_)
  );
  NOR _127_ (
    .A(_014_),
    .B(_004_),
    .Y(_005_)
  );
  NAND _128_ (
    .A(_021_),
    .B(lane_1[7]),
    .Y(_006_)
  );
  NAND _129_ (
    .A(_024_),
    .B(lane_0[7]),
    .Y(_007_)
  );
  NAND _130_ (
    .A(_007_),
    .B(_006_),
    .Y(_008_)
  );
  NOR _131_ (
    .A(_008_),
    .B(_005_),
    .Y(_009_)
  );
  NOR _132_ (
    .A(_009_),
    .B(_010_),
    .Y(_000_[7])
  );
  DFF _133_ (
    .C(clk_2f),
    .D(_000_[0]),
    .Q(data_out_synth[0])
  );
  DFF _134_ (
    .C(clk_2f),
    .D(_000_[1]),
    .Q(data_out_synth[1])
  );
  DFF _135_ (
    .C(clk_2f),
    .D(_000_[2]),
    .Q(data_out_synth[2])
  );
  DFF _136_ (
    .C(clk_2f),
    .D(_000_[3]),
    .Q(data_out_synth[3])
  );
  DFF _137_ (
    .C(clk_2f),
    .D(_000_[4]),
    .Q(data_out_synth[4])
  );
  DFF _138_ (
    .C(clk_2f),
    .D(_000_[5]),
    .Q(data_out_synth[5])
  );
  DFF _139_ (
    .C(clk_2f),
    .D(_000_[6]),
    .Q(data_out_synth[6])
  );
  DFF _140_ (
    .C(clk_2f),
    .D(_000_[7]),
    .Q(data_out_synth[7])
  );
  DFF _141_ (
    .C(clk_2f),
    .D(_002_),
    .Q(valid_out_synth)
  );
  DFF _142_ (
    .C(clk_2f),
    .D(_001_),
    .Q(selector)
  );
endmodule