/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* top =  1  *)
(* src = "synth.v:1" *)
module synth(f2, reset_L, data_out_synth, data_in0, data_in1, valid_in0, valid_in1, valid_out_synth);
  (* src = "synth.v:13" *)
  wire [7:0] _000_;
  (* src = "synth.v:13" *)
  wire _001_;
  (* src = "synth.v:13" *)
  wire _002_;
  (* src = "synth.v:13" *)
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
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  (* src = "synth.v:5" *)
  input [7:0] data_in0;
  (* src = "synth.v:6" *)
  input [7:0] data_in1;
  (* src = "synth.v:4" *)
  output [7:0] data_out_synth;
  (* src = "synth.v:2" *)
  input f2;
  (* src = "synth.v:3" *)
  input reset_L;
  (* src = "synth.v:11" *)
  wire selector;
  (* src = "synth.v:11" *)
  wire selector2;
  (* src = "synth.v:7" *)
  input valid_in0;
  (* src = "synth.v:8" *)
  input valid_in1;
  (* src = "synth.v:9" *)
  output valid_out_synth;
  NOT _185_ (
    .A(reset_L),
    .Y(_130_)
  );
  NOT _186_ (
    .A(selector2),
    .Y(_131_)
  );
  NOT _187_ (
    .A(valid_in1),
    .Y(_132_)
  );
  NOT _188_ (
    .A(valid_in0),
    .Y(_133_)
  );
  NOR _189_ (
    .A(_133_),
    .B(_132_),
    .Y(_134_)
  );
  NOR _190_ (
    .A(valid_in0),
    .B(valid_in1),
    .Y(_135_)
  );
  NOR _191_ (
    .A(_135_),
    .B(_130_),
    .Y(_136_)
  );
  NOT _192_ (
    .A(valid_out_synth),
    .Y(_137_)
  );
  NAND _193_ (
    .A(_134_),
    .B(_137_),
    .Y(_138_)
  );
  NAND _194_ (
    .A(_138_),
    .B(_136_),
    .Y(_139_)
  );
  NAND _195_ (
    .A(_139_),
    .B(_134_),
    .Y(_140_)
  );
  NOR _196_ (
    .A(_140_),
    .B(_131_),
    .Y(_141_)
  );
  NAND _197_ (
    .A(valid_in0),
    .B(valid_in1),
    .Y(_142_)
  );
  NAND _198_ (
    .A(_133_),
    .B(_132_),
    .Y(_143_)
  );
  NAND _199_ (
    .A(_143_),
    .B(reset_L),
    .Y(_144_)
  );
  NOR _200_ (
    .A(_142_),
    .B(valid_out_synth),
    .Y(_145_)
  );
  NOR _201_ (
    .A(_145_),
    .B(_144_),
    .Y(_146_)
  );
  NOR _202_ (
    .A(_146_),
    .B(_142_),
    .Y(_147_)
  );
  NOT _203_ (
    .A(selector),
    .Y(_148_)
  );
  NAND _204_ (
    .A(_133_),
    .B(valid_in1),
    .Y(_149_)
  );
  NAND _205_ (
    .A(_149_),
    .B(_148_),
    .Y(_150_)
  );
  NOR _206_ (
    .A(_133_),
    .B(valid_in1),
    .Y(_151_)
  );
  NOR _207_ (
    .A(_151_),
    .B(_130_),
    .Y(_152_)
  );
  NAND _208_ (
    .A(_152_),
    .B(_150_),
    .Y(_153_)
  );
  NOR _209_ (
    .A(_153_),
    .B(_147_),
    .Y(_154_)
  );
  NOR _210_ (
    .A(_154_),
    .B(_141_),
    .Y(_155_)
  );
  NOR _211_ (
    .A(_155_),
    .B(_130_),
    .Y(_002_)
  );
  NAND _212_ (
    .A(_140_),
    .B(_131_),
    .Y(_156_)
  );
  NAND _213_ (
    .A(_156_),
    .B(reset_L),
    .Y(_157_)
  );
  NOR _214_ (
    .A(_157_),
    .B(_141_),
    .Y(_001_)
  );
  NOR _215_ (
    .A(_153_),
    .B(data_in1[0]),
    .Y(_158_)
  );
  NOR _216_ (
    .A(_139_),
    .B(_142_),
    .Y(_159_)
  );
  NOT _217_ (
    .A(data_in0[0]),
    .Y(_160_)
  );
  NAND _218_ (
    .A(_153_),
    .B(_160_),
    .Y(_161_)
  );
  NAND _219_ (
    .A(_161_),
    .B(_159_),
    .Y(_162_)
  );
  NOR _220_ (
    .A(_162_),
    .B(_158_),
    .Y(_163_)
  );
  NAND _221_ (
    .A(data_in0[0]),
    .B(_131_),
    .Y(_164_)
  );
  NAND _222_ (
    .A(data_in1[0]),
    .B(selector2),
    .Y(_165_)
  );
  NAND _223_ (
    .A(_165_),
    .B(_164_),
    .Y(_166_)
  );
  NAND _224_ (
    .A(_166_),
    .B(_147_),
    .Y(_167_)
  );
  NOT _225_ (
    .A(data_out_synth[0]),
    .Y(_168_)
  );
  NOR _226_ (
    .A(valid_in0),
    .B(_132_),
    .Y(_169_)
  );
  NOR _227_ (
    .A(_151_),
    .B(_169_),
    .Y(_170_)
  );
  NAND _228_ (
    .A(_170_),
    .B(_168_),
    .Y(_171_)
  );
  NOR _229_ (
    .A(_160_),
    .B(valid_in1),
    .Y(_172_)
  );
  NOR _230_ (
    .A(_172_),
    .B(_133_),
    .Y(_173_)
  );
  NOR _231_ (
    .A(_149_),
    .B(data_in1[0]),
    .Y(_174_)
  );
  NOR _232_ (
    .A(_174_),
    .B(_173_),
    .Y(_175_)
  );
  NAND _233_ (
    .A(_175_),
    .B(_171_),
    .Y(_176_)
  );
  NAND _234_ (
    .A(_176_),
    .B(_167_),
    .Y(_177_)
  );
  NOR _235_ (
    .A(_177_),
    .B(_163_),
    .Y(_178_)
  );
  NOR _236_ (
    .A(_178_),
    .B(_130_),
    .Y(_000_[0])
  );
  NOR _237_ (
    .A(_153_),
    .B(data_in1[1]),
    .Y(_179_)
  );
  NOT _238_ (
    .A(data_in0[1]),
    .Y(_180_)
  );
  NAND _239_ (
    .A(_153_),
    .B(_180_),
    .Y(_181_)
  );
  NAND _240_ (
    .A(_181_),
    .B(_159_),
    .Y(_182_)
  );
  NOR _241_ (
    .A(_182_),
    .B(_179_),
    .Y(_183_)
  );
  NAND _242_ (
    .A(data_in0[1]),
    .B(_131_),
    .Y(_184_)
  );
  NAND _243_ (
    .A(data_in1[1]),
    .B(selector2),
    .Y(_004_)
  );
  NAND _244_ (
    .A(_004_),
    .B(_184_),
    .Y(_005_)
  );
  NAND _245_ (
    .A(_005_),
    .B(_147_),
    .Y(_006_)
  );
  NOT _246_ (
    .A(data_out_synth[1]),
    .Y(_007_)
  );
  NAND _247_ (
    .A(_170_),
    .B(_007_),
    .Y(_008_)
  );
  NOR _248_ (
    .A(_180_),
    .B(valid_in1),
    .Y(_009_)
  );
  NOR _249_ (
    .A(_009_),
    .B(_133_),
    .Y(_010_)
  );
  NOR _250_ (
    .A(_149_),
    .B(data_in1[1]),
    .Y(_011_)
  );
  NOR _251_ (
    .A(_011_),
    .B(_010_),
    .Y(_012_)
  );
  NAND _252_ (
    .A(_012_),
    .B(_008_),
    .Y(_013_)
  );
  NAND _253_ (
    .A(_013_),
    .B(_006_),
    .Y(_014_)
  );
  NOR _254_ (
    .A(_014_),
    .B(_183_),
    .Y(_015_)
  );
  NOR _255_ (
    .A(_015_),
    .B(_130_),
    .Y(_000_[1])
  );
  NOR _256_ (
    .A(_153_),
    .B(data_in1[2]),
    .Y(_016_)
  );
  NOT _257_ (
    .A(data_in0[2]),
    .Y(_017_)
  );
  NAND _258_ (
    .A(_153_),
    .B(_017_),
    .Y(_018_)
  );
  NAND _259_ (
    .A(_018_),
    .B(_159_),
    .Y(_019_)
  );
  NOR _260_ (
    .A(_019_),
    .B(_016_),
    .Y(_020_)
  );
  NAND _261_ (
    .A(data_in0[2]),
    .B(_131_),
    .Y(_021_)
  );
  NAND _262_ (
    .A(data_in1[2]),
    .B(selector2),
    .Y(_022_)
  );
  NAND _263_ (
    .A(_022_),
    .B(_021_),
    .Y(_023_)
  );
  NAND _264_ (
    .A(_023_),
    .B(_147_),
    .Y(_024_)
  );
  NOT _265_ (
    .A(data_out_synth[2]),
    .Y(_025_)
  );
  NAND _266_ (
    .A(_170_),
    .B(_025_),
    .Y(_026_)
  );
  NOR _267_ (
    .A(_017_),
    .B(valid_in1),
    .Y(_027_)
  );
  NOR _268_ (
    .A(_027_),
    .B(_133_),
    .Y(_028_)
  );
  NOR _269_ (
    .A(_149_),
    .B(data_in1[2]),
    .Y(_029_)
  );
  NOR _270_ (
    .A(_029_),
    .B(_028_),
    .Y(_030_)
  );
  NAND _271_ (
    .A(_030_),
    .B(_026_),
    .Y(_031_)
  );
  NAND _272_ (
    .A(_031_),
    .B(_024_),
    .Y(_032_)
  );
  NOR _273_ (
    .A(_032_),
    .B(_020_),
    .Y(_033_)
  );
  NOR _274_ (
    .A(_033_),
    .B(_130_),
    .Y(_000_[2])
  );
  NOR _275_ (
    .A(_153_),
    .B(data_in1[3]),
    .Y(_034_)
  );
  NOT _276_ (
    .A(data_in0[3]),
    .Y(_035_)
  );
  NAND _277_ (
    .A(_153_),
    .B(_035_),
    .Y(_036_)
  );
  NAND _278_ (
    .A(_036_),
    .B(_159_),
    .Y(_037_)
  );
  NOR _279_ (
    .A(_037_),
    .B(_034_),
    .Y(_038_)
  );
  NAND _280_ (
    .A(data_in0[3]),
    .B(_131_),
    .Y(_039_)
  );
  NAND _281_ (
    .A(data_in1[3]),
    .B(selector2),
    .Y(_040_)
  );
  NAND _282_ (
    .A(_040_),
    .B(_039_),
    .Y(_041_)
  );
  NAND _283_ (
    .A(_041_),
    .B(_147_),
    .Y(_042_)
  );
  NOT _284_ (
    .A(data_out_synth[3]),
    .Y(_043_)
  );
  NAND _285_ (
    .A(_170_),
    .B(_043_),
    .Y(_044_)
  );
  NOR _286_ (
    .A(_035_),
    .B(valid_in1),
    .Y(_045_)
  );
  NOR _287_ (
    .A(_045_),
    .B(_133_),
    .Y(_046_)
  );
  NOR _288_ (
    .A(_149_),
    .B(data_in1[3]),
    .Y(_047_)
  );
  NOR _289_ (
    .A(_047_),
    .B(_046_),
    .Y(_048_)
  );
  NAND _290_ (
    .A(_048_),
    .B(_044_),
    .Y(_049_)
  );
  NAND _291_ (
    .A(_049_),
    .B(_042_),
    .Y(_050_)
  );
  NOR _292_ (
    .A(_050_),
    .B(_038_),
    .Y(_051_)
  );
  NOR _293_ (
    .A(_051_),
    .B(_130_),
    .Y(_000_[3])
  );
  NOR _294_ (
    .A(_153_),
    .B(data_in1[4]),
    .Y(_052_)
  );
  NOT _295_ (
    .A(data_in0[4]),
    .Y(_053_)
  );
  NAND _296_ (
    .A(_153_),
    .B(_053_),
    .Y(_054_)
  );
  NAND _297_ (
    .A(_054_),
    .B(_159_),
    .Y(_055_)
  );
  NOR _298_ (
    .A(_055_),
    .B(_052_),
    .Y(_056_)
  );
  NAND _299_ (
    .A(data_in0[4]),
    .B(_131_),
    .Y(_057_)
  );
  NAND _300_ (
    .A(data_in1[4]),
    .B(selector2),
    .Y(_058_)
  );
  NAND _301_ (
    .A(_058_),
    .B(_057_),
    .Y(_059_)
  );
  NAND _302_ (
    .A(_059_),
    .B(_147_),
    .Y(_060_)
  );
  NOT _303_ (
    .A(data_out_synth[4]),
    .Y(_061_)
  );
  NAND _304_ (
    .A(_170_),
    .B(_061_),
    .Y(_062_)
  );
  NOR _305_ (
    .A(_053_),
    .B(valid_in1),
    .Y(_063_)
  );
  NOR _306_ (
    .A(_063_),
    .B(_133_),
    .Y(_064_)
  );
  NOR _307_ (
    .A(_149_),
    .B(data_in1[4]),
    .Y(_065_)
  );
  NOR _308_ (
    .A(_065_),
    .B(_064_),
    .Y(_066_)
  );
  NAND _309_ (
    .A(_066_),
    .B(_062_),
    .Y(_067_)
  );
  NAND _310_ (
    .A(_067_),
    .B(_060_),
    .Y(_068_)
  );
  NOR _311_ (
    .A(_068_),
    .B(_056_),
    .Y(_069_)
  );
  NOR _312_ (
    .A(_069_),
    .B(_130_),
    .Y(_000_[4])
  );
  NOR _313_ (
    .A(_153_),
    .B(data_in1[5]),
    .Y(_070_)
  );
  NOT _314_ (
    .A(data_in0[5]),
    .Y(_071_)
  );
  NAND _315_ (
    .A(_153_),
    .B(_071_),
    .Y(_072_)
  );
  NAND _316_ (
    .A(_072_),
    .B(_159_),
    .Y(_073_)
  );
  NOR _317_ (
    .A(_073_),
    .B(_070_),
    .Y(_074_)
  );
  NAND _318_ (
    .A(data_in0[5]),
    .B(_131_),
    .Y(_075_)
  );
  NAND _319_ (
    .A(data_in1[5]),
    .B(selector2),
    .Y(_076_)
  );
  NAND _320_ (
    .A(_076_),
    .B(_075_),
    .Y(_077_)
  );
  NAND _321_ (
    .A(_077_),
    .B(_147_),
    .Y(_078_)
  );
  NOT _322_ (
    .A(data_out_synth[5]),
    .Y(_079_)
  );
  NAND _323_ (
    .A(_170_),
    .B(_079_),
    .Y(_080_)
  );
  NOR _324_ (
    .A(_071_),
    .B(valid_in1),
    .Y(_081_)
  );
  NOR _325_ (
    .A(_081_),
    .B(_133_),
    .Y(_082_)
  );
  NOR _326_ (
    .A(_149_),
    .B(data_in1[5]),
    .Y(_083_)
  );
  NOR _327_ (
    .A(_083_),
    .B(_082_),
    .Y(_084_)
  );
  NAND _328_ (
    .A(_084_),
    .B(_080_),
    .Y(_085_)
  );
  NAND _329_ (
    .A(_085_),
    .B(_078_),
    .Y(_086_)
  );
  NOR _330_ (
    .A(_086_),
    .B(_074_),
    .Y(_087_)
  );
  NOR _331_ (
    .A(_087_),
    .B(_130_),
    .Y(_000_[5])
  );
  NOR _332_ (
    .A(_153_),
    .B(data_in1[6]),
    .Y(_088_)
  );
  NOT _333_ (
    .A(data_in0[6]),
    .Y(_089_)
  );
  NAND _334_ (
    .A(_153_),
    .B(_089_),
    .Y(_090_)
  );
  NAND _335_ (
    .A(_090_),
    .B(_159_),
    .Y(_091_)
  );
  NOR _336_ (
    .A(_091_),
    .B(_088_),
    .Y(_092_)
  );
  NAND _337_ (
    .A(data_in0[6]),
    .B(_131_),
    .Y(_093_)
  );
  NAND _338_ (
    .A(data_in1[6]),
    .B(selector2),
    .Y(_094_)
  );
  NAND _339_ (
    .A(_094_),
    .B(_093_),
    .Y(_095_)
  );
  NAND _340_ (
    .A(_095_),
    .B(_147_),
    .Y(_096_)
  );
  NOT _341_ (
    .A(data_out_synth[6]),
    .Y(_097_)
  );
  NAND _342_ (
    .A(_170_),
    .B(_097_),
    .Y(_098_)
  );
  NOR _343_ (
    .A(_089_),
    .B(valid_in1),
    .Y(_099_)
  );
  NOR _344_ (
    .A(_099_),
    .B(_133_),
    .Y(_100_)
  );
  NOR _345_ (
    .A(_149_),
    .B(data_in1[6]),
    .Y(_101_)
  );
  NOR _346_ (
    .A(_101_),
    .B(_100_),
    .Y(_102_)
  );
  NAND _347_ (
    .A(_102_),
    .B(_098_),
    .Y(_103_)
  );
  NAND _348_ (
    .A(_103_),
    .B(_096_),
    .Y(_104_)
  );
  NOR _349_ (
    .A(_104_),
    .B(_092_),
    .Y(_105_)
  );
  NOR _350_ (
    .A(_105_),
    .B(_130_),
    .Y(_000_[6])
  );
  NOR _351_ (
    .A(_169_),
    .B(selector),
    .Y(_106_)
  );
  NAND _352_ (
    .A(valid_in0),
    .B(_132_),
    .Y(_107_)
  );
  NAND _353_ (
    .A(_107_),
    .B(reset_L),
    .Y(_108_)
  );
  NOR _354_ (
    .A(_108_),
    .B(_106_),
    .Y(_109_)
  );
  NOR _355_ (
    .A(_109_),
    .B(data_in0[7]),
    .Y(_110_)
  );
  NOT _356_ (
    .A(data_in1[7]),
    .Y(_111_)
  );
  NAND _357_ (
    .A(_109_),
    .B(_111_),
    .Y(_112_)
  );
  NAND _358_ (
    .A(_112_),
    .B(_159_),
    .Y(_113_)
  );
  NOR _359_ (
    .A(_113_),
    .B(_110_),
    .Y(_114_)
  );
  NAND _360_ (
    .A(data_in0[7]),
    .B(_131_),
    .Y(_115_)
  );
  NAND _361_ (
    .A(data_in1[7]),
    .B(selector2),
    .Y(_116_)
  );
  NAND _362_ (
    .A(_116_),
    .B(_115_),
    .Y(_117_)
  );
  NAND _363_ (
    .A(_117_),
    .B(_147_),
    .Y(_118_)
  );
  NOT _364_ (
    .A(data_out_synth[7]),
    .Y(_119_)
  );
  NAND _365_ (
    .A(_170_),
    .B(_119_),
    .Y(_120_)
  );
  NOT _366_ (
    .A(data_in0[7]),
    .Y(_121_)
  );
  NOR _367_ (
    .A(_121_),
    .B(valid_in1),
    .Y(_122_)
  );
  NOR _368_ (
    .A(_122_),
    .B(_133_),
    .Y(_123_)
  );
  NOR _369_ (
    .A(_149_),
    .B(data_in1[7]),
    .Y(_124_)
  );
  NOR _370_ (
    .A(_124_),
    .B(_123_),
    .Y(_125_)
  );
  NAND _371_ (
    .A(_125_),
    .B(_120_),
    .Y(_126_)
  );
  NAND _372_ (
    .A(_126_),
    .B(_118_),
    .Y(_127_)
  );
  NOR _373_ (
    .A(_127_),
    .B(_114_),
    .Y(_128_)
  );
  NOR _374_ (
    .A(_128_),
    .B(_130_),
    .Y(_000_[7])
  );
  NAND _375_ (
    .A(valid_out_synth),
    .B(_130_),
    .Y(_129_)
  );
  NAND _376_ (
    .A(_129_),
    .B(_144_),
    .Y(_003_)
  );
  DFF _377_ (
    .C(f2),
    .D(_000_[0]),
    .Q(data_out_synth[0])
  );
  DFF _378_ (
    .C(f2),
    .D(_000_[1]),
    .Q(data_out_synth[1])
  );
  DFF _379_ (
    .C(f2),
    .D(_000_[2]),
    .Q(data_out_synth[2])
  );
  DFF _380_ (
    .C(f2),
    .D(_000_[3]),
    .Q(data_out_synth[3])
  );
  DFF _381_ (
    .C(f2),
    .D(_000_[4]),
    .Q(data_out_synth[4])
  );
  DFF _382_ (
    .C(f2),
    .D(_000_[5]),
    .Q(data_out_synth[5])
  );
  DFF _383_ (
    .C(f2),
    .D(_000_[6]),
    .Q(data_out_synth[6])
  );
  DFF _384_ (
    .C(f2),
    .D(_000_[7]),
    .Q(data_out_synth[7])
  );
  DFF _385_ (
    .C(f2),
    .D(_003_),
    .Q(valid_out_synth)
  );
  DFF _386_ (
    .C(f2),
    .D(_002_),
    .Q(selector)
  );
  DFF _387_ (
    .C(f2),
    .D(_001_),
    .Q(selector2)
  );
endmodule