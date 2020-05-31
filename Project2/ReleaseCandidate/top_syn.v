`timescale 1ns/1ps 
// Generated by Cadence Encounter(R) RTL Compiler RC14.25 - v14.20-s046_1

// Verification Directory fv/top 

module top(clock, reset, request1, request2, request3, request4,
     grant_o, bist_start, bist_end, signature_out, pass_fail);
  input clock, reset, request1, request2, request3, request4,
       bist_start;
  output [3:0] grant_o;
  output bist_end, pass_fail;
  output [7:0] signature_out;
  wire clock, reset, request1, request2, request3, request4, bist_start;
  wire [3:0] grant_o;
  wire bist_end, pass_fail;
  wire [7:0] signature_out;
  wire [3:0] lsfr_in_bus_w;
  wire [2:0] main_coda0;
  wire [2:0] main_coda1;
  wire [2:0] main_coda2;
  wire [2:0] main_coda3;
  wire [3:0] input_mux_out_w;
  wire [1:0] main_stato;
  wire [10:0] bist_controller_ncounter;
  wire [2:0] bist_controller_state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire UNCONNECTED15, UNCONNECTED16, bist_controller_n_115,
       bist_controller_n_1253, bist_controller_reset_latch,
       bist_controller_toggle_r, main_fu1, main_fu2;
  wire main_fu3, main_fu4, main_n_0, main_n_4, main_n_6, main_n_8,
       main_n_10, main_n_12;
  wire main_n_14, main_n_16, main_n_18, main_n_20, main_n_22,
       main_n_24, main_n_26, main_n_28;
  wire main_n_30, main_n_32, main_n_34, main_n_36, main_n_38,
       main_n_40, main_n_42, main_n_44;
  wire main_n_46, main_n_48, main_n_50, main_n_59, main_n_60,
       main_n_61, main_n_63, main_n_73;
  wire main_n_84, main_n_87, main_n_89, main_n_98, main_n_102,
       main_n_103, main_n_104, main_n_105;
  wire main_n_106, main_n_107, main_n_108, main_n_110, main_n_111,
       main_ru1, main_ru2, main_ru3;
  wire main_ru4, n_0, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, n_9, n_10, n_11, n_12, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25, n_26, n_27, n_28, n_29, n_30;
  wire n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38;
  wire n_39, n_40, n_41, n_42, n_43, n_44, n_45, n_46;
  wire n_47, n_48, n_49, n_50, n_51, n_52, n_53, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_64, n_65, n_66, n_67, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_74, n_75, n_76, n_77, n_78;
  wire n_79, n_80, n_81, n_82, n_83, n_84, n_85, n_86;
  wire n_87, n_88, n_89, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110, n_111, n_112;
  wire n_113, n_114, n_115, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_124, n_125, n_126, n_127, n_128;
  wire n_129, n_130, n_131, n_132, n_133, n_134, n_135, n_136;
  wire n_137, n_138, n_139, n_140, n_141, n_143, n_144, n_145;
  wire n_146, n_147, n_148, n_149, n_150, n_151, n_152, n_153;
  wire n_154, n_155, n_156, n_158, n_159, n_160, n_161, n_162;
  wire n_163, n_166, n_167, n_168, n_169, n_171, n_176, n_177;
  wire scan_toggle_w, uut_scan_w;
  DFSC1 \main_coda0_reg[0] (.RN (n_48), .C (clock), .D (main_n_84), .SD
       (lsfr_in_bus_w[3]), .SE (scan_toggle_w), .Q (main_coda0[0]), .QN
       (main_n_32));
  DFSC1 \main_coda0_reg[1] (.RN (n_48), .C (clock), .D (main_n_87), .SD
       (main_n_32), .SE (scan_toggle_w), .Q (main_coda0[1]), .QN
       (main_n_28));
  DFSC1 \main_coda0_reg[2] (.RN (n_48), .C (clock), .D (main_n_89), .SD
       (main_n_28), .SE (scan_toggle_w), .Q (main_coda0[2]), .QN
       (main_n_30));
  DFSC1 \main_coda1_reg[0] (.RN (n_48), .C (clock), .D (main_n_105),
       .SD (main_n_30), .SE (scan_toggle_w), .Q (main_coda1[0]), .QN
       (main_n_50));
  DFSC1 \main_coda1_reg[1] (.RN (n_48), .C (clock), .D (main_n_107),
       .SD (main_n_50), .SE (scan_toggle_w), .Q (main_coda1[1]), .QN
       (main_n_48));
  DFSC1 \main_coda1_reg[2] (.RN (n_48), .C (clock), .D (main_n_106),
       .SD (main_n_48), .SE (scan_toggle_w), .Q (main_coda1[2]), .QN
       (main_n_46));
  DFSC1 \main_coda2_reg[0] (.RN (n_48), .C (clock), .D (main_n_110),
       .SD (main_n_46), .SE (scan_toggle_w), .Q (main_coda2[0]), .QN
       (main_n_44));
  DFSC1 \main_coda2_reg[1] (.RN (n_48), .C (clock), .D (main_n_111),
       .SD (main_n_44), .SE (scan_toggle_w), .Q (main_coda2[1]), .QN
       (main_n_42));
  DFSC1 \main_coda2_reg[2] (.RN (n_48), .C (clock), .D (main_n_108),
       .SD (main_n_42), .SE (scan_toggle_w), .Q (main_coda2[2]), .QN
       (main_n_40));
  DFSC1 \main_coda3_reg[0] (.RN (n_48), .C (clock), .D (main_n_103),
       .SD (main_n_40), .SE (scan_toggle_w), .Q (main_coda3[0]), .QN
       (main_n_36));
  DFSC1 \main_coda3_reg[1] (.RN (n_48), .C (clock), .D (main_n_102),
       .SD (main_n_36), .SE (scan_toggle_w), .Q (main_coda3[1]), .QN
       (main_n_34));
  DFSC1 \main_coda3_reg[2] (.RN (n_48), .C (clock), .D (main_n_104),
       .SD (main_n_34), .SE (scan_toggle_w), .Q (main_coda3[2]), .QN
       (main_n_38));
  DFSEC1 main_fu1_reg(.RN (n_48), .C (clock), .D (main_ru1), .E
       (main_n_73), .SD (main_n_38), .SE (scan_toggle_w), .Q
       (main_fu1), .QN (main_n_14));
  DFSEC1 main_fu2_reg(.RN (n_48), .C (clock), .D (main_ru2), .E
       (main_n_73), .SD (main_n_14), .SE (scan_toggle_w), .Q
       (main_fu2), .QN (main_n_18));
  DFSEC1 main_fu3_reg(.RN (n_48), .C (clock), .D (main_ru3), .E
       (main_n_73), .SD (main_n_18), .SE (scan_toggle_w), .Q
       (main_fu3), .QN (main_n_12));
  DFSEC1 main_fu4_reg(.RN (n_48), .C (clock), .D (main_ru4), .E
       (main_n_73), .SD (main_n_12), .SE (scan_toggle_w), .Q
       (main_fu4), .QN (main_n_16));
  DFSEC1 \main_grant_reg[0] (.RN (n_48), .C (clock), .D (main_n_63), .E
       (main_n_98), .SD (main_n_16), .SE (scan_toggle_w), .Q
       (grant_o[0]), .QN (main_n_26));
  DFSEC1 \main_grant_reg[1] (.RN (n_48), .C (clock), .D (main_n_59), .E
       (main_n_98), .SD (main_n_26), .SE (scan_toggle_w), .Q
       (grant_o[1]), .QN (main_n_24));
  DFSEC1 \main_grant_reg[2] (.RN (n_48), .C (clock), .D (main_n_60), .E
       (main_n_98), .SD (main_n_24), .SE (scan_toggle_w), .Q
       (grant_o[2]), .QN (main_n_22));
  DFSEC1 \main_grant_reg[3] (.RN (n_48), .C (clock), .D (main_n_61), .E
       (main_n_98), .SD (main_n_22), .SE (scan_toggle_w), .Q
       (grant_o[3]), .QN (main_n_20));
  DFSEC1 main_ru1_reg(.RN (n_48), .C (clock), .D (input_mux_out_w[0]),
       .E (main_stato[0]), .SD (main_n_20), .SE (scan_toggle_w), .Q
       (main_ru1), .QN (main_n_8));
  DFSEC1 main_ru2_reg(.RN (n_48), .C (clock), .D (input_mux_out_w[1]),
       .E (main_stato[0]), .SD (main_n_8), .SE (scan_toggle_w), .Q
       (main_ru2), .QN (main_n_10));
  DFSEC1 main_ru3_reg(.RN (n_48), .C (clock), .D (input_mux_out_w[2]),
       .E (main_stato[0]), .SD (main_n_10), .SE (scan_toggle_w), .Q
       (main_ru3), .QN (main_n_6));
  DFSEC1 main_ru4_reg(.RN (n_48), .C (clock), .D (input_mux_out_w[3]),
       .E (main_stato[0]), .SD (main_n_6), .SE (scan_toggle_w), .Q
       (main_ru4), .QN (main_n_4));
  TFSC1 \main_stato_reg[0] (.RN (n_48), .C (clock), .SD (main_n_4), .SE
       (scan_toggle_w), .Q (main_n_0), .QN (main_stato[0]));
  DFSC1 \main_stato_reg[1] (.RN (n_48), .C (clock), .D (main_n_73), .SD
       (main_n_0), .SE (scan_toggle_w), .Q (main_stato[1]), .QN
       (uut_scan_w));
  INV2 g1501(.A (n_171), .Q (n_163));
  MUX22 g1853(.A (lsfr_in_bus_w[3]), .B (request4), .S (n_161), .Q
       (input_mux_out_w[3]));
  DF3 \bist_lfsr_dff_reg[3] (.C (clock), .D (n_162), .Q
       (lsfr_in_bus_w[3]), .QN (UNCONNECTED));
  MUX22 g1855(.A (lsfr_in_bus_w[2]), .B (request3), .S (n_161), .Q
       (input_mux_out_w[2]));
  MUX22 g1856(.A (lsfr_in_bus_w[1]), .B (request2), .S (n_161), .Q
       (input_mux_out_w[1]));
  MUX22 g1857(.A (lsfr_in_bus_w[0]), .B (request1), .S (n_161), .Q
       (input_mux_out_w[0]));
  NAND22 g1858(.A (n_140), .B (n_48), .Q (n_162));
  DF3 \bist_lfsr_dff_reg[2] (.C (clock), .D (n_160), .Q
       (lsfr_in_bus_w[2]), .QN (n_140));
  NOR30 g1861(.A (n_151), .B (n_150), .C (n_139), .Q (pass_fail));
  NAND31 g1862(.A (bist_controller_n_115), .B (n_159), .C (n_171), .Q
       (n_161));
  DF3 bist_controller_bist_end_reg(.C (clock), .D (n_137), .Q
       (bist_end), .QN (n_139));
  NAND22 g1865(.A (n_138), .B (n_48), .Q (n_160));
  DF3 \bist_lfsr_dff_reg[1] (.C (clock), .D (n_158), .Q
       (lsfr_in_bus_w[1]), .QN (n_138));
  OAI212 g1868(.A (n_155), .B (n_154), .C
       (bist_controller_ncounter[9]), .Q (n_159));
  NAND22 g1870(.A (n_145), .B (n_48), .Q (n_158));
  NOR21 g1872(.A (reset), .B (n_166), .Q (n_48));
  INV3 g1873(.A (n_156), .Q (scan_toggle_w));
  NAND22 g1874(.A (bist_controller_n_115), .B
       (bist_controller_toggle_r), .Q (n_156));
  NAND22 g1876(.A (n_152), .B (n_169), .Q (n_155));
  AOI211 g1877(.A (n_168), .B (n_147), .C (n_45), .Q (n_154));
  INV3 g1878(.A (n_153), .Q (bist_controller_n_1253));
  AOI211 g1879(.A (n_146), .B (bist_controller_state[2]), .C (reset),
       .Q (n_153));
  NOR21 g1880(.A (bist_controller_ncounter[10]), .B (n_167), .Q
       (n_171));
  OAI212 g1881(.A (bist_controller_ncounter[4]), .B
       (bist_controller_ncounter[5]), .C (bist_controller_ncounter[7]),
       .Q (n_152));
  NOR31 g1882(.A (n_143), .B (bist_controller_state[0]), .C
       (bist_controller_state[2]), .Q (n_166));
  NOR21 g1883(.A (bist_controller_state[2]), .B (n_148), .Q
       (bist_controller_n_115));
  NAND40 g1884(.A (signature_out[4]), .B (signature_out[5]), .C
       (signature_out[6]), .D (signature_out[7]), .Q (n_151));
  NAND40 g1885(.A (n_141), .B (n_144), .C (signature_out[0]), .D
       (signature_out[3]), .Q (n_150));
  CLKIN3 g1886(.A (n_149), .Q (n_167));
  NAND22 g1887(.A (bist_controller_ncounter[9]), .B
       (bist_controller_ncounter[8]), .Q (n_149));
  NAND22 g1888(.A (bist_controller_state[1]), .B
       (bist_controller_state[0]), .Q (n_148));
  NAND22 g1889(.A (bist_controller_ncounter[3]), .B
       (bist_controller_ncounter[2]), .Q (n_168));
  NAND22 g1890(.A (bist_controller_ncounter[3]), .B
       (bist_controller_ncounter[1]), .Q (n_147));
  NAND22 g1891(.A (bist_controller_ncounter[7]), .B
       (bist_controller_ncounter[6]), .Q (n_169));
  NOR21 g1892(.A (bist_controller_state[0]), .B
       (bist_controller_state[1]), .Q (n_146));
  NOR31 g2(.A (n_153), .B (bist_start), .C (reset), .Q (n_137));
  DF3 \bist_controller_ncounter_reg[9] (.C (clock), .D (n_136), .Q
       (bist_controller_ncounter[9]), .QN (n_43));
  DF3 \bist_controller_ncounter_reg[7] (.C (clock), .D (n_135), .Q
       (bist_controller_ncounter[7]), .QN (n_45));
  NOR21 g2140(.A (bist_controller_n_1253), .B (n_134), .Q (n_136));
  DF3 \bist_controller_ncounter_reg[8] (.C (clock), .D (n_132), .Q
       (bist_controller_ncounter[8]), .QN (UNCONNECTED0));
  DF3 \bist_controller_ncounter_reg[10] (.C (clock), .D (n_133), .Q
       (bist_controller_ncounter[10]), .QN (UNCONNECTED1));
  NOR21 g2143(.A (bist_controller_n_1253), .B (n_131), .Q (n_135));
  IMUX20 g2144(.A (bist_controller_ncounter[9]), .B (n_127), .S
       (bist_controller_n_115), .Q (n_134));
  DF3 \bist_controller_ncounter_reg[6] (.C (clock), .D (n_130), .Q
       (bist_controller_ncounter[6]), .QN (UNCONNECTED2));
  NOR21 g2146(.A (bist_controller_n_1253), .B (n_129), .Q (n_133));
  NOR21 g2147(.A (bist_controller_n_1253), .B (n_128), .Q (n_132));
  IMUX20 g2148(.A (bist_controller_ncounter[7]), .B (n_125), .S
       (bist_controller_n_115), .Q (n_131));
  NOR21 g2149(.A (bist_controller_n_1253), .B (n_126), .Q (n_130));
  IMUX20 g2150(.A (bist_controller_ncounter[10]), .B (n_124), .S
       (bist_controller_n_115), .Q (n_129));
  IMUX20 g2151(.A (bist_controller_ncounter[8]), .B (n_123), .S
       (bist_controller_n_115), .Q (n_128));
  IMUX20 g2152(.A (n_43), .B (bist_controller_ncounter[9]), .S (n_122),
       .Q (n_127));
  IMUX20 g2153(.A (bist_controller_ncounter[6]), .B (n_121), .S
       (bist_controller_n_115), .Q (n_126));
  IMUX20 g2154(.A (n_45), .B (bist_controller_ncounter[7]), .S (n_120),
       .Q (n_125));
  DF3 \bist_controller_ncounter_reg[5] (.C (clock), .D (n_119), .Q
       (bist_controller_ncounter[5]), .QN (UNCONNECTED3));
  XNR21 g2156(.A (bist_controller_ncounter[10]), .B (n_118), .Q
       (n_124));
  ADD22 g2157(.A (n_115), .B (bist_controller_ncounter[8]), .CO
       (n_122), .S (n_123));
  ADD22 g2158(.A (n_111), .B (bist_controller_ncounter[6]), .CO
       (n_120), .S (n_121));
  DF3 bist_controller_toggle_r_reg(.C (clock), .D (n_117), .Q
       (bist_controller_toggle_r), .QN (UNCONNECTED4));
  NOR21 g2160(.A (bist_controller_n_1253), .B (n_116), .Q (n_119));
  DF3 \bist_controller_ncounter_reg[3] (.C (clock), .D (n_114), .Q
       (bist_controller_ncounter[3]), .QN (n_44));
  NAND22 g2162(.A (n_115), .B (n_167), .Q (n_118));
  NOR21 g2163(.A (bist_controller_n_1253), .B (n_113), .Q (n_117));
  IMUX20 g2164(.A (bist_controller_ncounter[5]), .B (n_110), .S
       (bist_controller_n_115), .Q (n_116));
  DF3 \bist_controller_ncounter_reg[4] (.C (clock), .D (n_109), .Q
       (bist_controller_ncounter[4]), .QN (UNCONNECTED5));
  NOR21 g2166(.A (n_169), .B (n_112), .Q (n_115));
  NOR21 g2167(.A (bist_controller_n_1253), .B (n_108), .Q (n_114));
  IMUX20 g2168(.A (bist_controller_toggle_r), .B (n_106), .S
       (bist_controller_n_115), .Q (n_113));
  CLKIN2 g2169(.A (n_111), .Q (n_112));
  ADD22 g2170(.A (n_94), .B (bist_controller_ncounter[5]), .CO (n_111),
       .S (n_110));
  DF3 \bist_controller_ncounter_reg[2] (.C (clock), .D (n_107), .Q
       (bist_controller_ncounter[2]), .QN (UNCONNECTED6));
  NOR21 g2172(.A (bist_controller_n_1253), .B (n_105), .Q (n_109));
  IMUX20 g2173(.A (bist_controller_ncounter[3]), .B (n_101), .S
       (bist_controller_n_115), .Q (n_108));
  DF3 \bist_controller_state_reg[0] (.C (clock), .D (n_103), .Q
       (bist_controller_state[0]), .QN (UNCONNECTED7));
  DF3 \bist_controller_state_reg[1] (.C (clock), .D (n_104), .Q
       (bist_controller_state[1]), .QN (n_143));
  NOR21 g2176(.A (bist_controller_n_1253), .B (n_102), .Q (n_107));
  AOI2111 g2177(.A (n_177), .B (bist_controller_ncounter[9]), .C
       (n_163), .D (bist_controller_toggle_r), .Q (n_106));
  IMUX20 g2178(.A (bist_controller_ncounter[4]), .B (n_95), .S
       (bist_controller_n_115), .Q (n_105));
  DF3 \bist_misr_dff_reg[2] (.C (clock), .D (n_98), .Q
       (signature_out[2]), .QN (n_144));
  DF3 \bist_misr_dff_reg[3] (.C (clock), .D (n_97), .Q
       (signature_out[3]), .QN (UNCONNECTED8));
  DF3 \bist_misr_dff_reg[4] (.C (clock), .D (n_96), .Q
       (signature_out[4]), .QN (UNCONNECTED9));
  OAI311 g2182(.A (n_51), .B (bist_controller_state[1]), .C
       (bist_controller_state[2]), .D (n_100), .Q (n_104));
  OAI212 g2183(.A (reset), .B (n_79), .C (n_100), .Q (n_103));
  IMUX20 g2184(.A (bist_controller_ncounter[2]), .B (n_93), .S
       (bist_controller_n_115), .Q (n_102));
  IMUX20 g2185(.A (n_44), .B (bist_controller_ncounter[3]), .S (n_92),
       .Q (n_101));
  DF3 \bist_controller_ncounter_reg[1] (.C (clock), .D (n_91), .Q
       (bist_controller_ncounter[1]), .QN (UNCONNECTED10));
  DF3 \bist_controller_state_reg[2] (.C (clock), .D (n_89), .Q
       (bist_controller_state[2]), .QN (UNCONNECTED11));
  OAI212 g2188(.A (n_166), .B (n_82), .C (n_79), .Q (n_100));
  NAND22 g2190(.A (n_88), .B (n_48), .Q (n_98));
  NAND22 g2191(.A (n_87), .B (n_48), .Q (n_97));
  NAND22 g2192(.A (n_86), .B (n_48), .Q (n_96));
  ADD22 g2193(.A (n_78), .B (bist_controller_ncounter[4]), .CO (n_94),
       .S (n_95));
  ADD22 g2194(.A (n_63), .B (bist_controller_ncounter[2]), .CO (n_92),
       .S (n_93));
  DF3 \bist_lfsr_dff_reg[0] (.C (clock), .D (n_84), .Q
       (lsfr_in_bus_w[0]), .QN (n_145));
  DF3 \bist_misr_dff_reg[1] (.C (clock), .D (n_81), .Q
       (signature_out[1]), .QN (n_141));
  DF3 \bist_misr_dff_reg[0] (.C (clock), .D (n_83), .Q
       (signature_out[0]), .QN (UNCONNECTED12));
  NOR21 g2198(.A (bist_controller_n_1253), .B (n_80), .Q (n_91));
  NOR31 g2200(.A (n_47), .B (n_77), .C (reset), .Q (n_89));
  IMUX21 g2201(.A (n_72), .B (signature_out[2]), .S (bist_end), .Q
       (n_88));
  IMUX21 g2202(.A (n_71), .B (signature_out[3]), .S (bist_end), .Q
       (n_87));
  IMUX21 g2203(.A (n_73), .B (signature_out[4]), .S (bist_end), .Q
       (n_86));
  OAI212 g2204(.A (n_44), .B (n_49), .C (n_168), .Q (n_85));
  NAND22 g2205(.A (n_74), .B (n_48), .Q (n_84));
  NAND22 g2206(.A (n_75), .B (n_48), .Q (n_83));
  NOR21 g2207(.A (n_76), .B (n_47), .Q (n_82));
  OAI2111 g2208(.A (bist_end), .B (n_55), .C (n_54), .D (n_48), .Q
       (n_81));
  IMUX20 g2209(.A (bist_controller_ncounter[1]), .B (n_62), .S
       (bist_controller_n_115), .Q (n_80));
  DF3 \bist_misr_dff_reg[7] (.C (clock), .D (n_68), .Q
       (signature_out[7]), .QN (n_42));
  DF3 \bist_controller_ncounter_reg[0] (.C (clock), .D (n_67), .Q
       (bist_controller_ncounter[0]), .QN (UNCONNECTED13));
  DF3 \bist_misr_dff_reg[5] (.C (clock), .D (n_69), .Q
       (signature_out[5]), .QN (UNCONNECTED14));
  DF3 \bist_misr_dff_reg[6] (.C (clock), .D (n_70), .Q
       (signature_out[6]), .QN (UNCONNECTED15));
  NOR21 g2214(.A (n_64), .B (n_168), .Q (n_78));
  NOR21 g2215(.A (reset), .B (n_65), .Q (n_79));
  INV2 g2216(.A (n_76), .Q (n_77));
  NOR40 g2217(.A (bist_controller_ncounter[8]), .B (n_45), .C (n_50),
       .D (n_66), .Q (n_76));
  IMUX30 g2218(.A (signature_out[7]), .B (n_42), .C (signature_out[0]),
       .S0 (grant_o[3]), .S1 (bist_end), .Q (n_75));
  XNR31 g2219(.A (lsfr_in_bus_w[3]), .B (lsfr_in_bus_w[2]), .C
       (signature_out[7]), .Q (n_74));
  XOR31 g2220(.A (uut_scan_w), .B (signature_out[3]), .C
       (signature_out[7]), .Q (n_73));
  XOR31 g2221(.A (grant_o[1]), .B (signature_out[1]), .C
       (signature_out[7]), .Q (n_72));
  XOR31 g2222(.A (grant_o[0]), .B (signature_out[2]), .C
       (signature_out[7]), .Q (n_71));
  NAND22 g2223(.A (n_57), .B (n_48), .Q (n_70));
  NAND22 g2224(.A (n_58), .B (n_48), .Q (n_69));
  NAND22 g2225(.A (n_59), .B (n_48), .Q (n_68));
  NOR21 g2226(.A (bist_controller_n_1253), .B (n_56), .Q (n_67));
  NAND22 g2227(.A (n_60), .B (n_61), .Q (n_66));
  NOR40 g2228(.A (n_52), .B (bist_controller_state[0]), .C
       (bist_controller_state[1]), .D (bist_controller_state[2]), .Q
       (n_65));
  CLKIN2 g2229(.A (n_63), .Q (n_64));
  ADD22 g2230(.A (bist_controller_ncounter[1]), .B
       (bist_controller_ncounter[0]), .CO (n_63), .S (n_62));
  DF3 bist_controller_reset_latch_reg(.C (clock), .D (n_53), .Q
       (bist_controller_reset_latch), .QN (UNCONNECTED16));
  NOR31 g2232(.A (bist_controller_ncounter[0]), .B
       (bist_controller_ncounter[10]), .C
       (bist_controller_ncounter[2]), .Q (n_61));
  NOR40 g2233(.A (bist_controller_ncounter[4]), .B
       (bist_controller_ncounter[5]), .C (bist_controller_ncounter[6]),
       .D (n_44), .Q (n_60));
  IMUX21 g2234(.A (signature_out[6]), .B (signature_out[7]), .S
       (bist_end), .Q (n_59));
  IMUX21 g2235(.A (signature_out[4]), .B (signature_out[5]), .S
       (bist_end), .Q (n_58));
  IMUX21 g2236(.A (signature_out[5]), .B (signature_out[6]), .S
       (bist_end), .Q (n_57));
  IMUX21 g2237(.A (bist_controller_n_115), .B (n_47), .S
       (bist_controller_ncounter[0]), .Q (n_56));
  XNR21 g2238(.A (grant_o[2]), .B (signature_out[0]), .Q (n_55));
  NAND22 g2239(.A (signature_out[1]), .B (bist_end), .Q (n_54));
  NAND20 g2240(.A (reset), .B (bist_start), .Q (n_53));
  NAND22 g2241(.A (bist_controller_reset_latch), .B (bist_start), .Q
       (n_52));
  NAND22 g2242(.A (bist_controller_state[0]), .B (n_46), .Q (n_51));
  NAND22 g2243(.A (bist_controller_ncounter[9]), .B
       (bist_controller_ncounter[1]), .Q (n_50));
  NOR21 g2244(.A (bist_controller_ncounter[0]), .B
       (bist_controller_ncounter[1]), .Q (n_49));
  INV2 g2262(.A (bist_controller_n_115), .Q (n_47));
  INV2 g2273(.A (reset), .Q (n_46));
  IMUX20 g2368(.A (n_35), .B (n_9), .S (n_27), .Q (main_n_110));
  IMUX20 g2369(.A (n_34), .B (n_1), .S (n_27), .Q (main_n_111));
  IMUX20 g2370(.A (n_33), .B (n_7), .S (n_27), .Q (main_n_108));
  IMUX20 g2371(.A (n_37), .B (n_4), .S (n_27), .Q (main_n_107));
  IMUX20 g2372(.A (n_39), .B (n_2), .S (n_27), .Q (main_n_105));
  IMUX20 g2373(.A (n_36), .B (n_3), .S (n_27), .Q (main_n_106));
  INV3 g2374(.A (n_41), .Q (main_n_103));
  INV3 g2375(.A (n_40), .Q (main_n_102));
  INV3 g2376(.A (n_38), .Q (main_n_104));
  OAI211 g2377(.A (n_4), .B (n_30), .C (n_29), .Q (main_n_87));
  OAI211 g2378(.A (n_3), .B (n_30), .C (n_28), .Q (main_n_89));
  AOI221 g2379(.A (n_31), .B (main_coda3[0]), .C (n_27), .D
       (main_coda2[0]), .Q (n_41));
  AOI221 g2380(.A (n_31), .B (main_coda3[1]), .C (n_27), .D
       (main_coda2[1]), .Q (n_40));
  OAI222 g2381(.A (n_31), .B (main_coda2[0]), .C (main_n_98), .D
       (main_coda1[0]), .Q (n_39));
  AOI221 g2382(.A (n_31), .B (main_coda3[2]), .C (n_27), .D
       (main_coda2[2]), .Q (n_38));
  OAI222 g2383(.A (n_31), .B (main_coda2[1]), .C (main_n_98), .D
       (main_coda1[1]), .Q (n_37));
  OAI222 g2384(.A (n_31), .B (main_coda2[2]), .C (main_n_98), .D
       (main_coda1[2]), .Q (n_36));
  OAI222 g2385(.A (n_31), .B (main_coda3[0]), .C (main_n_98), .D
       (main_coda2[0]), .Q (n_35));
  OAI222 g2386(.A (n_31), .B (main_coda3[1]), .C (main_n_98), .D
       (main_coda2[1]), .Q (n_34));
  OAI222 g2387(.A (n_31), .B (main_coda3[2]), .C (main_n_98), .D
       (main_coda2[2]), .Q (n_33));
  OAI2111 g2388(.A (n_9), .B (n_24), .C (n_32), .D (n_23), .Q
       (main_n_84));
  NAND22 g2389(.A (n_31), .B (main_coda0[0]), .Q (n_32));
  INV2 g2390(.A (n_31), .Q (n_30));
  OAI2111 g2391(.A (main_n_98), .B (main_n_73), .C (n_26), .D (n_19),
       .Q (n_31));
  AOI2111 g2392(.A (main_n_98), .B (main_coda1[1]), .C (n_22), .D
       (n_21), .Q (n_29));
  AOI2111 g2393(.A (main_n_98), .B (main_coda1[2]), .C (n_14), .D
       (n_21), .Q (n_28));
  NAND22 g2394(.A (n_23), .B (n_25), .Q (n_27));
  AOI221 g2395(.A (n_18), .B (n_20), .C (n_15), .D (main_fu2), .Q
       (n_26));
  NOR21 g2396(.A (n_14), .B (n_22), .Q (n_25));
  INV3 g2397(.A (n_24), .Q (main_n_98));
  NAND31 g2398(.A (main_stato[0]), .B (n_13), .C (main_stato[1]), .Q
       (n_24));
  AOI311 g2399(.A (n_6), .B (main_ru3), .C (n_18), .D (n_21), .Q
       (n_23));
  NOR21 g2400(.A (main_fu2), .B (n_16), .Q (n_22));
  NOR31 g2401(.A (n_17), .B (n_10), .C (main_ru3), .Q (n_21));
  MUX22 g2402(.A (n_10), .B (main_fu3), .S (main_ru3), .Q (n_20));
  NOR31 g2403(.A (n_3), .B (n_2), .C (n_4), .Q (main_n_63));
  NAND31 g2404(.A (main_n_73), .B (main_ru1), .C (main_fu1), .Q (n_19));
  INV2 g2405(.A (n_18), .Q (n_17));
  NOR31 g2406(.A (n_11), .B (main_ru1), .C (main_ru2), .Q (n_18));
  NOR31 g2407(.A (n_3), .B (main_coda0[0]), .C (main_coda0[1]), .Q
       (main_n_61));
  NOR31 g2408(.A (n_4), .B (main_coda0[2]), .C (main_coda0[0]), .Q
       (main_n_60));
  NOR31 g2409(.A (n_2), .B (main_coda0[2]), .C (main_coda0[1]), .Q
       (main_n_59));
  INV2 g2410(.A (n_15), .Q (n_16));
  NOR31 g2411(.A (n_11), .B (n_8), .C (main_ru1), .Q (n_15));
  NOR31 g2412(.A (n_11), .B (n_5), .C (main_fu1), .Q (n_14));
  INV3 g2413(.A (n_12), .Q (n_13));
  NOR40 g2414(.A (main_fu4), .B (main_fu3), .C (main_fu1), .D
       (main_fu2), .Q (n_12));
  INV2 g2415(.A (main_n_73), .Q (n_11));
  NOR21 g2416(.A (main_stato[1]), .B (main_stato[0]), .Q (main_n_73));
  NAND22 g2417(.A (n_0), .B (main_ru4), .Q (n_10));
  INV2 g2418(.A (main_coda1[0]), .Q (n_9));
  INV2 g2419(.A (main_ru2), .Q (n_8));
  INV2 g2420(.A (main_coda1[2]), .Q (n_7));
  CLKIN2 g2421(.A (main_fu3), .Q (n_6));
  INV2 g2422(.A (main_ru1), .Q (n_5));
  CLKIN3 g2423(.A (main_coda0[1]), .Q (n_4));
  CLKIN3 g2424(.A (main_coda0[2]), .Q (n_3));
  INV2 g2425(.A (main_coda0[0]), .Q (n_2));
  INV2 g2426(.A (main_coda1[1]), .Q (n_1));
  INV2 g2427(.A (main_fu4), .Q (n_0));
  CLKIN0 g3(.A (n_176), .Q (n_177));
  AOI211 g2428(.A (n_85), .B (bist_controller_ncounter[7]), .C (n_155),
       .Q (n_176));
endmodule
