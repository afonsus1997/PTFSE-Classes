`timescale 1ns/1ps 
// Generated by Cadence Encounter(R) RTL Compiler RC14.25 - v14.20-s046_1

// Verification Directory fv/circuito06 

module circuito06(clock, reset, request1, request2, request3, request4,
     grant_o, scan_en, scan_in, scan_out);
  input clock, reset, request1, request2, request3, request4, scan_en,
       scan_in;
  output [3:0] grant_o;
  output scan_out;
  wire clock, reset, request1, request2, request3, request4, scan_en,
       scan_in;
  wire [3:0] grant_o;
  wire scan_out;
  wire [2:0] coda1;
  wire [2:0] coda2;
  wire [2:0] coda3;
  wire [2:0] coda0;
  wire [1:0] stato;
  wire fu1, fu2, fu3, fu4, n_0, n_4, n_6, n_8;
  wire n_10, n_12, n_14, n_16, n_18, n_20, n_22, n_24;
  wire n_26, n_28, n_30, n_32, n_34, n_36, n_38, n_40;
  wire n_42, n_44, n_46, n_48, n_50, n_52, n_53, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_64, n_65, n_66, n_67, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_74, n_75, n_76, n_77, n_78;
  wire n_79, n_80, n_81, n_82, n_83, n_84, n_85, n_86;
  wire n_87, n_88, n_89, n_90, n_91, n_92, n_93, n_94;
  wire n_95, n_96, n_97, n_98, n_99, n_100, n_101, n_102;
  wire n_103, n_104, n_105, n_106, n_107, n_108, n_109, n_110;
  wire n_111, n_112, ru1, ru2, ru3, ru4;
  DFSC1 \coda1_reg[0] (.RN (n_112), .C (clock), .D (n_105), .SD (n_30),
       .SE (scan_en), .Q (coda1[0]), .QN (n_50));
  DFSC1 \coda1_reg[1] (.RN (n_112), .C (clock), .D (n_107), .SD (n_50),
       .SE (scan_en), .Q (coda1[1]), .QN (n_48));
  DFSC1 \coda1_reg[2] (.RN (n_112), .C (clock), .D (n_106), .SD (n_48),
       .SE (scan_en), .Q (coda1[2]), .QN (n_46));
  DFSC1 \coda2_reg[0] (.RN (n_112), .C (clock), .D (n_110), .SD (n_46),
       .SE (scan_en), .Q (coda2[0]), .QN (n_44));
  DFSC1 \coda2_reg[1] (.RN (n_112), .C (clock), .D (n_111), .SD (n_44),
       .SE (scan_en), .Q (coda2[1]), .QN (n_42));
  DFSC1 \coda2_reg[2] (.RN (n_112), .C (clock), .D (n_108), .SD (n_42),
       .SE (scan_en), .Q (coda2[2]), .QN (n_40));
  DFSC1 \coda3_reg[2] (.RN (n_112), .C (clock), .D (n_104), .SD (n_34),
       .SE (scan_en), .Q (coda3[2]), .QN (n_38));
  DFSC1 \coda3_reg[0] (.RN (n_112), .C (clock), .D (n_103), .SD (n_40),
       .SE (scan_en), .Q (coda3[0]), .QN (n_36));
  DFSC1 \coda3_reg[1] (.RN (n_112), .C (clock), .D (n_102), .SD (n_36),
       .SE (scan_en), .Q (coda3[1]), .QN (n_34));
  DFSC1 \coda0_reg[0] (.RN (n_112), .C (clock), .D (n_84), .SD
       (scan_in), .SE (scan_en), .Q (coda0[0]), .QN (n_32));
  DFSC1 \coda0_reg[2] (.RN (n_112), .C (clock), .D (n_89), .SD (n_28),
       .SE (scan_en), .Q (coda0[2]), .QN (n_30));
  DFSC1 \coda0_reg[1] (.RN (n_112), .C (clock), .D (n_87), .SD (n_32),
       .SE (scan_en), .Q (coda0[1]), .QN (n_28));
  OAI212 g1978(.A (n_55), .B (n_109), .C (n_101), .Q (n_111));
  OAI212 g1977(.A (n_53), .B (n_109), .C (n_90), .Q (n_110));
  OAI212 g1979(.A (n_54), .B (n_109), .C (n_100), .Q (n_108));
  OAI212 g1975(.A (n_86), .B (n_109), .C (n_92), .Q (n_107));
  OAI212 g1976(.A (n_88), .B (n_109), .C (n_91), .Q (n_106));
  OAI212 g1974(.A (n_83), .B (n_109), .C (n_93), .Q (n_105));
  CLKIN3 g1980(.A (n_94), .Q (n_104));
  CLKIN3 g1987(.A (n_97), .Q (n_103));
  CLKIN3 g1988(.A (n_96), .Q (n_102));
  AOI221 g1991(.A (n_99), .B (coda2[1]), .C (n_98), .D (coda3[1]), .Q
       (n_101));
  AOI221 g1992(.A (n_99), .B (coda2[2]), .C (n_98), .D (coda3[2]), .Q
       (n_100));
  AOI221 g1993(.A (n_99), .B (coda3[0]), .C (n_95), .D (coda2[0]), .Q
       (n_97));
  AOI221 g1994(.A (n_99), .B (coda3[1]), .C (n_95), .D (coda2[1]), .Q
       (n_96));
  AOI221 g1984(.A (n_99), .B (coda3[2]), .C (n_95), .D (coda2[2]), .Q
       (n_94));
  AOI221 g1985(.A (n_99), .B (coda1[0]), .C (n_98), .D (coda2[0]), .Q
       (n_93));
  AOI221 g1986(.A (n_99), .B (coda1[1]), .C (n_98), .D (coda2[1]), .Q
       (n_92));
  AOI221 g1989(.A (n_99), .B (coda1[2]), .C (n_98), .D (coda2[2]), .Q
       (n_91));
  AOI221 g1990(.A (n_99), .B (coda2[0]), .C (n_98), .D (coda3[0]), .Q
       (n_90));
  OAI212 g1981(.A (n_88), .B (n_85), .C (n_77), .Q (n_89));
  OAI212 g1982(.A (n_86), .B (n_85), .C (n_79), .Q (n_87));
  OAI212 g1983(.A (n_83), .B (n_85), .C (n_82), .Q (n_84));
  INV3 g1995(.A (n_85), .Q (n_99));
  CLKIN3 g2001(.A (n_109), .Q (n_95));
  AOI211 g1996(.A (n_70), .B (fu2), .C (n_80), .Q (n_85));
  NOR31 g2002(.A (n_75), .B (n_81), .C (n_78), .Q (n_109));
  AOI211 g2005(.A (n_98), .B (coda1[0]), .C (n_81), .Q (n_82));
  DFSEC1 \grant_reg[0] (.RN (n_112), .C (clock), .D (n_63), .E (n_98),
       .SD (n_16), .SE (scan_en), .Q (grant_o[0]), .QN (n_26));
  DFSEC1 \grant_reg[1] (.RN (n_112), .C (clock), .D (n_59), .E (n_98),
       .SD (n_26), .SE (scan_en), .Q (grant_o[1]), .QN (n_24));
  DFSEC1 \grant_reg[2] (.RN (n_112), .C (clock), .D (n_60), .E (n_98),
       .SD (n_24), .SE (scan_en), .Q (grant_o[2]), .QN (n_22));
  DFSEC1 \grant_reg[3] (.RN (n_112), .C (clock), .D (n_61), .E (n_98),
       .SD (n_22), .SE (scan_en), .Q (grant_o[3]), .QN (n_20));
  OAI2111 g2004(.A (n_74), .B (n_68), .C (n_62), .D (n_71), .Q (n_80));
  AOI2111 g2003(.A (n_98), .B (coda1[1]), .C (n_76), .D (n_78), .Q
       (n_79));
  AOI2111 g2006(.A (n_98), .B (coda1[2]), .C (n_76), .D (n_75), .Q
       (n_77));
  OAI311 g2012(.A (fu3), .B (n_56), .C (n_74), .D (n_72), .Q (n_81));
  DFSEC1 fu2_reg(.RN (n_112), .C (clock), .D (ru2), .E (n_73), .SD
       (n_14), .SE (scan_en), .Q (fu2), .QN (n_18));
  DFSEC1 fu4_reg(.RN (n_112), .C (clock), .D (ru4), .E (n_73), .SD
       (n_12), .SE (scan_en), .Q (fu4), .QN (n_16));
  DFSEC1 fu1_reg(.RN (n_112), .C (clock), .D (ru1), .E (n_73), .SD
       (n_38), .SE (scan_en), .Q (fu1), .QN (n_14));
  DFSEC1 fu3_reg(.RN (n_112), .C (clock), .D (ru3), .E (n_73), .SD
       (n_18), .SE (scan_en), .Q (fu3), .QN (n_12));
  INV2 g2022(.A (n_76), .Q (n_72));
  NOR31 g2011(.A (n_69), .B (ru1), .C (fu2), .Q (n_78));
  IMUX21 g2013(.A (n_65), .B (n_58), .S (n_66), .Q (n_71));
  DFSEC1 ru2_reg(.RN (n_112), .C (clock), .D (request2), .E (stato[0]),
       .SD (n_8), .SE (scan_en), .Q (ru2), .QN (n_10));
  DFSEC1 ru1_reg(.RN (n_112), .C (clock), .D (request1), .E (stato[0]),
       .SD (n_20), .SE (scan_en), .Q (ru1), .QN (n_8));
  DFSEC1 ru3_reg(.RN (n_112), .C (clock), .D (request3), .E (stato[0]),
       .SD (n_10), .SE (scan_en), .Q (ru3), .QN (n_6));
  DFSEC1 ru4_reg(.RN (n_112), .C (clock), .D (request4), .E (stato[0]),
       .SD (n_6), .SE (scan_en), .Q (ru4), .QN (n_4));
  DFSC1 \stato_reg[1] (.RN (n_112), .C (clock), .D (n_73), .SD (n_0),
       .SE (scan_en), .Q (stato[1]), .QN (scan_out));
  NOR21 g2018(.A (fu1), .B (n_64), .Q (n_75));
  NOR21 g2019(.A (ru1), .B (n_69), .Q (n_70));
  NOR31 g2023(.A (n_74), .B (n_67), .C (ru3), .Q (n_76));
  IMUX20 g2024(.A (n_67), .B (fu3), .S (ru3), .Q (n_68));
  NOR21 g2020(.A (n_66), .B (n_65), .Q (n_98));
  NAND22 g2026(.A (n_73), .B (ru2), .Q (n_69));
  NAND22 g2027(.A (n_73), .B (ru1), .Q (n_64));
  NOR31 g2028(.A (n_88), .B (n_86), .C (n_83), .Q (n_63));
  NAND22 g2029(.A (n_73), .B (n_57), .Q (n_74));
  TFSC1 \stato_reg[0] (.RN (n_112), .C (clock), .SD (n_4), .SE
       (scan_en), .Q (n_0), .QN (stato[0]));
  NAND31 g2021(.A (n_73), .B (ru1), .C (fu1), .Q (n_62));
  NOR31 g2030(.A (n_88), .B (coda0[0]), .C (coda0[1]), .Q (n_61));
  NOR31 g2031(.A (n_86), .B (coda0[2]), .C (coda0[0]), .Q (n_60));
  NOR31 g2032(.A (n_83), .B (coda0[2]), .C (coda0[1]), .Q (n_59));
  NOR40 g2033(.A (fu1), .B (fu2), .C (fu3), .D (fu4), .Q (n_65));
  NAND22 g2036(.A (n_52), .B (ru4), .Q (n_67));
  INV2 g2038(.A (n_73), .Q (n_58));
  NOR21 g2035(.A (ru1), .B (ru2), .Q (n_57));
  NAND22 g2037(.A (stato[0]), .B (stato[1]), .Q (n_66));
  NOR21 g2039(.A (stato[1]), .B (stato[0]), .Q (n_73));
  CLKIN3 g2040(.A (coda0[1]), .Q (n_86));
  CLKIN2 g2042(.A (ru3), .Q (n_56));
  CLKIN3 g2046(.A (coda0[0]), .Q (n_83));
  CLKIN3 g2048(.A (coda0[2]), .Q (n_88));
  CLKIN2 g2045(.A (coda1[1]), .Q (n_55));
  CLKIN2 g2041(.A (coda1[2]), .Q (n_54));
  CLKIN2 g2043(.A (coda1[0]), .Q (n_53));
  INV0 g2044(.A (reset), .Q (n_112));
  CLKIN2 g2047(.A (fu4), .Q (n_52));
endmodule
