/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* top =  1  *)
(* src = "SerieParalelo_Est.v:2" *)
module SerieParalelo_Est(clk_f, clk_8f, data_in, reset, data2send_est, BC_counter_est, valid_out_est, active_est);
  (* src = "SerieParalelo_Est.v:25" *)
  wire [3:0] _000_;
  (* src = "SerieParalelo_Est.v:18" *)
  wire [2:0] _001_;
  (* src = "SerieParalelo_Est.v:38" *)
  wire _002_;
  (* src = "SerieParalelo_Est.v:38" *)
  wire [7:0] _003_;
  (* src = "SerieParalelo_Est.v:38" *)
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
  (* src = "SerieParalelo_Est.v:34" *)
  wire [31:0] _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire [2:0] _155_;
  wire [1:0] _156_;
  wire [2:0] _157_;
  wire [1:0] _158_;
  wire [2:0] _159_;
  wire [1:0] _160_;
  wire [3:0] _161_;
  wire [1:0] _162_;
  wire [1:0] _163_;
  wire [1:0] _164_;
  wire [2:0] _165_;
  wire [1:0] _166_;
  wire [2:0] _167_;
  wire [1:0] _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire [2:0] _173_;
  wire [1:0] _174_;
  wire _175_;
  wire [7:0] _176_;
  wire [3:0] _177_;
  wire [2:0] _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _188_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _198_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _199_;
  wire [3:0] _200_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _201_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _202_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _203_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _204_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _205_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _206_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _207_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _208_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _209_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _210_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:432" *)
  wire [1:0] _211_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:428" *)
  wire _212_;
  (* src = "<techmap.v>:260|<techmap.v>:203" *)
  wire [31:0] _213_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _214_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _215_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _216_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _217_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _218_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _219_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _220_;
  (* src = "SerieParalelo_Est.v:42|<techmap.v>:445" *)
  wire _221_;
  (* src = "<techmap.v>:260|<techmap.v>:203" *)
  wire [31:0] _222_;
  wire [31:0] _223_;
  (* src = "<techmap.v>:260|<techmap.v>:221" *)
  wire _224_;
  (* src = "SerieParalelo_Est.v:9" *)
  output [3:0] BC_counter_est;
  (* src = "SerieParalelo_Est.v:11" *)
  output active_est;
  (* src = "SerieParalelo_Est.v:16" *)
  wire active_estF;
  (* src = "SerieParalelo_Est.v:4" *)
  input clk_8f;
  (* src = "SerieParalelo_Est.v:3" *)
  input clk_f;
  (* src = "SerieParalelo_Est.v:13" *)
  wire [2:0] contador;
  (* src = "SerieParalelo_Est.v:13" *)
  wire [2:0] contadorF;
  (* src = "SerieParalelo_Est.v:8" *)
  output [7:0] data2send_est;
  (* src = "SerieParalelo_Est.v:5" *)
  input data_in;
  (* src = "SerieParalelo_Est.v:14" *)
  wire [7:0] pasoInSend;
  (* src = "SerieParalelo_Est.v:14" *)
  wire [7:0] pasoInSendF;
  (* src = "SerieParalelo_Est.v:6" *)
  input reset;
  (* src = "SerieParalelo_Est.v:10" *)
  output valid_out_est;
  (* src = "SerieParalelo_Est.v:16" *)
  wire valid_out_estF;
  NOT _225_ (
    .A(_019_),
    .Y(_090_)
  );
  NOT _226_ (
    .A(_069_),
    .Y(_091_)
  );
  NOT _227_ (
    .A(_113_),
    .Y(_092_)
  );
  NOR _228_ (
    .A(_119_),
    .B(_116_),
    .Y(_093_)
  );
  NAND _229_ (
    .A(_093_),
    .B(_092_),
    .Y(_094_)
  );
  NOR _230_ (
    .A(_094_),
    .B(_091_),
    .Y(_095_)
  );
  NOT _231_ (
    .A(_082_),
    .Y(_096_)
  );
  NOT _232_ (
    .A(_116_),
    .Y(_097_)
  );
  NOT _233_ (
    .A(_119_),
    .Y(_098_)
  );
  NAND _234_ (
    .A(_098_),
    .B(_097_),
    .Y(_099_)
  );
  NOR _235_ (
    .A(_099_),
    .B(_113_),
    .Y(_100_)
  );
  NOR _236_ (
    .A(_100_),
    .B(_096_),
    .Y(_101_)
  );
  NOR _237_ (
    .A(_101_),
    .B(_095_),
    .Y(_102_)
  );
  NOR _238_ (
    .A(_102_),
    .B(_090_),
    .Y(_057_)
  );
  NAND _239_ (
    .A(_098_),
    .B(_116_),
    .Y(_103_)
  );
  NOR _240_ (
    .A(_103_),
    .B(_113_),
    .Y(_104_)
  );
  NOR _241_ (
    .A(_104_),
    .B(_075_),
    .Y(_105_)
  );
  NAND _242_ (
    .A(_104_),
    .B(_091_),
    .Y(_106_)
  );
  NAND _243_ (
    .A(_106_),
    .B(_019_),
    .Y(_107_)
  );
  NOR _244_ (
    .A(_107_),
    .B(_105_),
    .Y(_068_)
  );
  NAND _245_ (
    .A(_119_),
    .B(_097_),
    .Y(_108_)
  );
  NOR _246_ (
    .A(_108_),
    .B(_092_),
    .Y(_109_)
  );
  NOR _247_ (
    .A(_109_),
    .B(_071_),
    .Y(_110_)
  );
  NAND _248_ (
    .A(_109_),
    .B(_091_),
    .Y(_111_)
  );
  NAND _249_ (
    .A(_111_),
    .B(_019_),
    .Y(_112_)
  );
  NOR _250_ (
    .A(_112_),
    .B(_110_),
    .Y(_086_)
  );
  NOR _251_ (
    .A(_088_),
    .B(_087_),
    .Y(_114_)
  );
  NOT _252_ (
    .A(_048_),
    .Y(_115_)
  );
  NOR _253_ (
    .A(_115_),
    .B(_089_),
    .Y(_117_)
  );
  NAND _254_ (
    .A(_117_),
    .B(_114_),
    .Y(_118_)
  );
  NOT _255_ (
    .A(_118_),
    .Y(_120_)
  );
  NOR _256_ (
    .A(_120_),
    .B(_016_),
    .Y(_121_)
  );
  NOR _257_ (
    .A(_121_),
    .B(_090_),
    .Y(_021_)
  );
  NAND _258_ (
    .A(_019_),
    .B(_011_),
    .Y(_122_)
  );
  NOR _259_ (
    .A(_122_),
    .B(_118_),
    .Y(_023_)
  );
  NOR _260_ (
    .A(_108_),
    .B(_113_),
    .Y(_123_)
  );
  NOR _261_ (
    .A(_123_),
    .B(_078_),
    .Y(_124_)
  );
  NAND _262_ (
    .A(_123_),
    .B(_091_),
    .Y(_125_)
  );
  NAND _263_ (
    .A(_125_),
    .B(_019_),
    .Y(_126_)
  );
  NOR _264_ (
    .A(_126_),
    .B(_124_),
    .Y(_028_)
  );
  NAND _265_ (
    .A(_119_),
    .B(_116_),
    .Y(_127_)
  );
  NOR _266_ (
    .A(_127_),
    .B(_113_),
    .Y(_128_)
  );
  NOR _267_ (
    .A(_128_),
    .B(_074_),
    .Y(_129_)
  );
  NAND _268_ (
    .A(_128_),
    .B(_091_),
    .Y(_130_)
  );
  NAND _269_ (
    .A(_130_),
    .B(_019_),
    .Y(_131_)
  );
  NOR _270_ (
    .A(_131_),
    .B(_129_),
    .Y(_031_)
  );
  NAND _271_ (
    .A(_093_),
    .B(_113_),
    .Y(_132_)
  );
  NOR _272_ (
    .A(_132_),
    .B(_069_),
    .Y(_133_)
  );
  NOT _273_ (
    .A(_080_),
    .Y(_134_)
  );
  NAND _274_ (
    .A(_132_),
    .B(_134_),
    .Y(_135_)
  );
  NAND _275_ (
    .A(_135_),
    .B(_019_),
    .Y(_136_)
  );
  NOR _276_ (
    .A(_136_),
    .B(_133_),
    .Y(_034_)
  );
  NOR _277_ (
    .A(_103_),
    .B(_092_),
    .Y(_137_)
  );
  NOR _278_ (
    .A(_137_),
    .B(_073_),
    .Y(_138_)
  );
  NAND _279_ (
    .A(_137_),
    .B(_091_),
    .Y(_139_)
  );
  NAND _280_ (
    .A(_139_),
    .B(_019_),
    .Y(_140_)
  );
  NOR _281_ (
    .A(_140_),
    .B(_138_),
    .Y(_037_)
  );
  NOR _282_ (
    .A(_127_),
    .B(_092_),
    .Y(_141_)
  );
  NOR _283_ (
    .A(_141_),
    .B(_077_),
    .Y(_142_)
  );
  NAND _284_ (
    .A(_141_),
    .B(_091_),
    .Y(_143_)
  );
  NAND _285_ (
    .A(_143_),
    .B(_019_),
    .Y(_144_)
  );
  NOR _286_ (
    .A(_144_),
    .B(_142_),
    .Y(_041_)
  );
  NOR _287_ (
    .A(_129_),
    .B(_090_),
    .Y(_145_)
  );
  NAND _288_ (
    .A(_145_),
    .B(_130_),
    .Y(_005_)
  );
  NOR _289_ (
    .A(_133_),
    .B(_090_),
    .Y(_006_)
  );
  NAND _290_ (
    .A(_006_),
    .B(_135_),
    .Y(_007_)
  );
  NOR _291_ (
    .A(_007_),
    .B(_005_),
    .Y(_008_)
  );
  NOR _292_ (
    .A(_138_),
    .B(_090_),
    .Y(_009_)
  );
  NAND _293_ (
    .A(_009_),
    .B(_139_),
    .Y(_010_)
  );
  NOR _294_ (
    .A(_142_),
    .B(_090_),
    .Y(_012_)
  );
  NAND _295_ (
    .A(_012_),
    .B(_143_),
    .Y(_013_)
  );
  NOR _296_ (
    .A(_013_),
    .B(_010_),
    .Y(_014_)
  );
  NAND _297_ (
    .A(_014_),
    .B(_008_),
    .Y(_015_)
  );
  NOR _298_ (
    .A(_068_),
    .B(_057_),
    .Y(_017_)
  );
  NOR _299_ (
    .A(_124_),
    .B(_090_),
    .Y(_018_)
  );
  NAND _300_ (
    .A(_018_),
    .B(_125_),
    .Y(_020_)
  );
  NOR _301_ (
    .A(_020_),
    .B(_086_),
    .Y(_022_)
  );
  NAND _302_ (
    .A(_022_),
    .B(_017_),
    .Y(_024_)
  );
  NOR _303_ (
    .A(_024_),
    .B(_015_),
    .Y(_025_)
  );
  NOT _304_ (
    .A(_087_),
    .Y(_026_)
  );
  NOR _305_ (
    .A(_090_),
    .B(_026_),
    .Y(_027_)
  );
  NOR _306_ (
    .A(_027_),
    .B(_025_),
    .Y(_029_)
  );
  NAND _307_ (
    .A(_034_),
    .B(_031_),
    .Y(_030_)
  );
  NAND _308_ (
    .A(_041_),
    .B(_037_),
    .Y(_032_)
  );
  NOR _309_ (
    .A(_032_),
    .B(_030_),
    .Y(_033_)
  );
  NAND _310_ (
    .A(_094_),
    .B(_096_),
    .Y(_035_)
  );
  NOR _311_ (
    .A(_094_),
    .B(_069_),
    .Y(_036_)
  );
  NOR _312_ (
    .A(_036_),
    .B(_090_),
    .Y(_038_)
  );
  NAND _313_ (
    .A(_038_),
    .B(_035_),
    .Y(_039_)
  );
  NOR _314_ (
    .A(_105_),
    .B(_090_),
    .Y(_040_)
  );
  NAND _315_ (
    .A(_040_),
    .B(_106_),
    .Y(_042_)
  );
  NAND _316_ (
    .A(_042_),
    .B(_039_),
    .Y(_043_)
  );
  NOR _317_ (
    .A(_110_),
    .B(_090_),
    .Y(_044_)
  );
  NAND _318_ (
    .A(_044_),
    .B(_111_),
    .Y(_045_)
  );
  NAND _319_ (
    .A(_028_),
    .B(_045_),
    .Y(_046_)
  );
  NOR _320_ (
    .A(_046_),
    .B(_043_),
    .Y(_047_)
  );
  NAND _321_ (
    .A(_047_),
    .B(_033_),
    .Y(_049_)
  );
  NOR _322_ (
    .A(_049_),
    .B(_026_),
    .Y(_050_)
  );
  NOR _323_ (
    .A(_050_),
    .B(_029_),
    .Y(_052_)
  );
  NOT _324_ (
    .A(_088_),
    .Y(_051_)
  );
  NOR _325_ (
    .A(_090_),
    .B(_051_),
    .Y(_053_)
  );
  NOR _326_ (
    .A(_053_),
    .B(_050_),
    .Y(_054_)
  );
  NAND _327_ (
    .A(_025_),
    .B(_087_),
    .Y(_056_)
  );
  NOR _328_ (
    .A(_056_),
    .B(_051_),
    .Y(_058_)
  );
  NOR _329_ (
    .A(_058_),
    .B(_054_),
    .Y(_055_)
  );
  NAND _330_ (
    .A(_050_),
    .B(_088_),
    .Y(_060_)
  );
  NOR _331_ (
    .A(_060_),
    .B(_115_),
    .Y(_062_)
  );
  NOR _332_ (
    .A(_115_),
    .B(_090_),
    .Y(_063_)
  );
  NOR _333_ (
    .A(_063_),
    .B(_058_),
    .Y(_064_)
  );
  NOR _334_ (
    .A(_064_),
    .B(_062_),
    .Y(_059_)
  );
  NOT _335_ (
    .A(_089_),
    .Y(_065_)
  );
  NOR _336_ (
    .A(_090_),
    .B(_065_),
    .Y(_066_)
  );
  NOR _337_ (
    .A(_066_),
    .B(_062_),
    .Y(_067_)
  );
  NAND _338_ (
    .A(_058_),
    .B(_048_),
    .Y(_070_)
  );
  NOR _339_ (
    .A(_070_),
    .B(_065_),
    .Y(_072_)
  );
  NOR _340_ (
    .A(_072_),
    .B(_067_),
    .Y(_061_)
  );
  NAND _341_ (
    .A(_019_),
    .B(_116_),
    .Y(_083_)
  );
  NOR _342_ (
    .A(_093_),
    .B(_090_),
    .Y(_076_)
  );
  NAND _343_ (
    .A(_076_),
    .B(_127_),
    .Y(_084_)
  );
  NOR _344_ (
    .A(_093_),
    .B(_092_),
    .Y(_079_)
  );
  NOR _345_ (
    .A(_079_),
    .B(_090_),
    .Y(_081_)
  );
  NAND _346_ (
    .A(_081_),
    .B(_094_),
    .Y(_085_)
  );
  DFF _347_ (
    .C(clk_f),
    .D(pasoInSend[0]),
    .Q(data2send_est[0])
  );
  DFF _348_ (
    .C(clk_f),
    .D(pasoInSend[1]),
    .Q(data2send_est[1])
  );
  DFF _349_ (
    .C(clk_f),
    .D(pasoInSend[2]),
    .Q(data2send_est[2])
  );
  DFF _350_ (
    .C(clk_f),
    .D(pasoInSend[3]),
    .Q(data2send_est[3])
  );
  DFF _351_ (
    .C(clk_f),
    .D(pasoInSend[4]),
    .Q(data2send_est[4])
  );
  DFF _352_ (
    .C(clk_f),
    .D(pasoInSend[5]),
    .Q(data2send_est[5])
  );
  DFF _353_ (
    .C(clk_f),
    .D(pasoInSend[6]),
    .Q(data2send_est[6])
  );
  DFF _354_ (
    .C(clk_f),
    .D(pasoInSend[7]),
    .Q(data2send_est[7])
  );
  DFF _355_ (
    .C(clk_f),
    .D(_000_[0]),
    .Q(BC_counter_est[0])
  );
  DFF _356_ (
    .C(clk_f),
    .D(_000_[1]),
    .Q(BC_counter_est[1])
  );
  DFF _357_ (
    .C(clk_f),
    .D(_000_[2]),
    .Q(BC_counter_est[2])
  );
  DFF _358_ (
    .C(clk_f),
    .D(_000_[3]),
    .Q(BC_counter_est[3])
  );
  DFF _359_ (
    .C(clk_f),
    .D(active_est),
    .Q(valid_out_estF)
  );
  DFF _360_ (
    .C(clk_8f),
    .D(_001_[0]),
    .Q(contadorF[0])
  );
  DFF _361_ (
    .C(clk_8f),
    .D(_001_[1]),
    .Q(contadorF[1])
  );
  DFF _362_ (
    .C(clk_8f),
    .D(_001_[2]),
    .Q(contadorF[2])
  );
  DFF _363_ (
    .C(clk_8f),
    .D(pasoInSend[0]),
    .Q(pasoInSendF[0])
  );
  DFF _364_ (
    .C(clk_8f),
    .D(pasoInSend[1]),
    .Q(pasoInSendF[1])
  );
  DFF _365_ (
    .C(clk_8f),
    .D(pasoInSend[2]),
    .Q(pasoInSendF[2])
  );
  DFF _366_ (
    .C(clk_8f),
    .D(pasoInSend[3]),
    .Q(pasoInSendF[3])
  );
  DFF _367_ (
    .C(clk_8f),
    .D(pasoInSend[4]),
    .Q(pasoInSendF[4])
  );
  DFF _368_ (
    .C(clk_8f),
    .D(pasoInSend[5]),
    .Q(pasoInSendF[5])
  );
  DFF _369_ (
    .C(clk_8f),
    .D(pasoInSend[6]),
    .Q(pasoInSendF[6])
  );
  DFF _370_ (
    .C(clk_8f),
    .D(pasoInSend[7]),
    .Q(pasoInSendF[7])
  );
  DFF _371_ (
    .C(clk_8f),
    .D(active_est),
    .Q(active_estF)
  );
  assign pasoInSend[0] = _057_;
  assign pasoInSend[1] = _068_;
  assign pasoInSend[6] = _086_;
  assign _087_ = BC_counter_est[0];
  assign _088_ = BC_counter_est[1];
  assign _089_ = BC_counter_est[3];
  assign _113_ = contadorF[2];
  assign _116_ = contadorF[0];
  assign _119_ = contadorF[1];
  assign _011_ = valid_out_estF;
  assign _016_ = active_estF;
  assign _019_ = reset;
  assign active_est = _021_;
  assign valid_out_est = _023_;
  assign pasoInSend[2] = _028_;
  assign pasoInSend[3] = _031_;
  assign pasoInSend[4] = _034_;
  assign pasoInSend[5] = _037_;
  assign pasoInSend[7] = _041_;
  assign _048_ = BC_counter_est[2];
  assign _000_[0] = _052_;
  assign _000_[1] = _055_;
  assign _000_[2] = _059_;
  assign _000_[3] = _061_;
  assign _069_ = data_in;
  assign _071_ = pasoInSendF[6];
  assign _073_ = pasoInSendF[5];
  assign _074_ = pasoInSendF[3];
  assign _075_ = pasoInSendF[1];
  assign _077_ = pasoInSendF[7];
  assign _078_ = pasoInSendF[2];
  assign _080_ = pasoInSendF[4];
  assign _082_ = pasoInSendF[0];
  assign _001_[0] = _083_;
  assign _001_[1] = _084_;
  assign _001_[2] = _085_;
endmodule
