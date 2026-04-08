/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Wed Apr  8 15:44:55 2026
/////////////////////////////////////////////////////////////


module RANGE_TABLE_BF16_RID4 ( aclk, areset_n, .weight_i({\weight_i[15][15] , 
        \weight_i[15][14] , \weight_i[15][13] , \weight_i[15][12] , 
        \weight_i[15][11] , \weight_i[15][10] , \weight_i[15][9] , 
        \weight_i[15][8] , \weight_i[15][7] , \weight_i[15][6] , 
        \weight_i[15][5] , \weight_i[15][4] , \weight_i[15][3] , 
        \weight_i[15][2] , \weight_i[15][1] , \weight_i[15][0] , 
        \weight_i[14][15] , \weight_i[14][14] , \weight_i[14][13] , 
        \weight_i[14][12] , \weight_i[14][11] , \weight_i[14][10] , 
        \weight_i[14][9] , \weight_i[14][8] , \weight_i[14][7] , 
        \weight_i[14][6] , \weight_i[14][5] , \weight_i[14][4] , 
        \weight_i[14][3] , \weight_i[14][2] , \weight_i[14][1] , 
        \weight_i[14][0] , \weight_i[13][15] , \weight_i[13][14] , 
        \weight_i[13][13] , \weight_i[13][12] , \weight_i[13][11] , 
        \weight_i[13][10] , \weight_i[13][9] , \weight_i[13][8] , 
        \weight_i[13][7] , \weight_i[13][6] , \weight_i[13][5] , 
        \weight_i[13][4] , \weight_i[13][3] , \weight_i[13][2] , 
        \weight_i[13][1] , \weight_i[13][0] , \weight_i[12][15] , 
        \weight_i[12][14] , \weight_i[12][13] , \weight_i[12][12] , 
        \weight_i[12][11] , \weight_i[12][10] , \weight_i[12][9] , 
        \weight_i[12][8] , \weight_i[12][7] , \weight_i[12][6] , 
        \weight_i[12][5] , \weight_i[12][4] , \weight_i[12][3] , 
        \weight_i[12][2] , \weight_i[12][1] , \weight_i[12][0] , 
        \weight_i[11][15] , \weight_i[11][14] , \weight_i[11][13] , 
        \weight_i[11][12] , \weight_i[11][11] , \weight_i[11][10] , 
        \weight_i[11][9] , \weight_i[11][8] , \weight_i[11][7] , 
        \weight_i[11][6] , \weight_i[11][5] , \weight_i[11][4] , 
        \weight_i[11][3] , \weight_i[11][2] , \weight_i[11][1] , 
        \weight_i[11][0] , \weight_i[10][15] , \weight_i[10][14] , 
        \weight_i[10][13] , \weight_i[10][12] , \weight_i[10][11] , 
        \weight_i[10][10] , \weight_i[10][9] , \weight_i[10][8] , 
        \weight_i[10][7] , \weight_i[10][6] , \weight_i[10][5] , 
        \weight_i[10][4] , \weight_i[10][3] , \weight_i[10][2] , 
        \weight_i[10][1] , \weight_i[10][0] , \weight_i[9][15] , 
        \weight_i[9][14] , \weight_i[9][13] , \weight_i[9][12] , 
        \weight_i[9][11] , \weight_i[9][10] , \weight_i[9][9] , 
        \weight_i[9][8] , \weight_i[9][7] , \weight_i[9][6] , \weight_i[9][5] , 
        \weight_i[9][4] , \weight_i[9][3] , \weight_i[9][2] , \weight_i[9][1] , 
        \weight_i[9][0] , \weight_i[8][15] , \weight_i[8][14] , 
        \weight_i[8][13] , \weight_i[8][12] , \weight_i[8][11] , 
        \weight_i[8][10] , \weight_i[8][9] , \weight_i[8][8] , 
        \weight_i[8][7] , \weight_i[8][6] , \weight_i[8][5] , \weight_i[8][4] , 
        \weight_i[8][3] , \weight_i[8][2] , \weight_i[8][1] , \weight_i[8][0] , 
        \weight_i[7][15] , \weight_i[7][14] , \weight_i[7][13] , 
        \weight_i[7][12] , \weight_i[7][11] , \weight_i[7][10] , 
        \weight_i[7][9] , \weight_i[7][8] , \weight_i[7][7] , \weight_i[7][6] , 
        \weight_i[7][5] , \weight_i[7][4] , \weight_i[7][3] , \weight_i[7][2] , 
        \weight_i[7][1] , \weight_i[7][0] , \weight_i[6][15] , 
        \weight_i[6][14] , \weight_i[6][13] , \weight_i[6][12] , 
        \weight_i[6][11] , \weight_i[6][10] , \weight_i[6][9] , 
        \weight_i[6][8] , \weight_i[6][7] , \weight_i[6][6] , \weight_i[6][5] , 
        \weight_i[6][4] , \weight_i[6][3] , \weight_i[6][2] , \weight_i[6][1] , 
        \weight_i[6][0] , \weight_i[5][15] , \weight_i[5][14] , 
        \weight_i[5][13] , \weight_i[5][12] , \weight_i[5][11] , 
        \weight_i[5][10] , \weight_i[5][9] , \weight_i[5][8] , 
        \weight_i[5][7] , \weight_i[5][6] , \weight_i[5][5] , \weight_i[5][4] , 
        \weight_i[5][3] , \weight_i[5][2] , \weight_i[5][1] , \weight_i[5][0] , 
        \weight_i[4][15] , \weight_i[4][14] , \weight_i[4][13] , 
        \weight_i[4][12] , \weight_i[4][11] , \weight_i[4][10] , 
        \weight_i[4][9] , \weight_i[4][8] , \weight_i[4][7] , \weight_i[4][6] , 
        \weight_i[4][5] , \weight_i[4][4] , \weight_i[4][3] , \weight_i[4][2] , 
        \weight_i[4][1] , \weight_i[4][0] , \weight_i[3][15] , 
        \weight_i[3][14] , \weight_i[3][13] , \weight_i[3][12] , 
        \weight_i[3][11] , \weight_i[3][10] , \weight_i[3][9] , 
        \weight_i[3][8] , \weight_i[3][7] , \weight_i[3][6] , \weight_i[3][5] , 
        \weight_i[3][4] , \weight_i[3][3] , \weight_i[3][2] , \weight_i[3][1] , 
        \weight_i[3][0] , \weight_i[2][15] , \weight_i[2][14] , 
        \weight_i[2][13] , \weight_i[2][12] , \weight_i[2][11] , 
        \weight_i[2][10] , \weight_i[2][9] , \weight_i[2][8] , 
        \weight_i[2][7] , \weight_i[2][6] , \weight_i[2][5] , \weight_i[2][4] , 
        \weight_i[2][3] , \weight_i[2][2] , \weight_i[2][1] , \weight_i[2][0] , 
        \weight_i[1][15] , \weight_i[1][14] , \weight_i[1][13] , 
        \weight_i[1][12] , \weight_i[1][11] , \weight_i[1][10] , 
        \weight_i[1][9] , \weight_i[1][8] , \weight_i[1][7] , \weight_i[1][6] , 
        \weight_i[1][5] , \weight_i[1][4] , \weight_i[1][3] , \weight_i[1][2] , 
        \weight_i[1][1] , \weight_i[1][0] , \weight_i[0][15] , 
        \weight_i[0][14] , \weight_i[0][13] , \weight_i[0][12] , 
        \weight_i[0][11] , \weight_i[0][10] , \weight_i[0][9] , 
        \weight_i[0][8] , \weight_i[0][7] , \weight_i[0][6] , \weight_i[0][5] , 
        \weight_i[0][4] , \weight_i[0][3] , \weight_i[0][2] , \weight_i[0][1] , 
        \weight_i[0][0] }), .symbol_o({\symbol_o[7][3] , \symbol_o[7][2] , 
        \symbol_o[7][1] , \symbol_o[7][0] , \symbol_o[6][3] , \symbol_o[6][2] , 
        \symbol_o[6][1] , \symbol_o[6][0] , \symbol_o[5][3] , \symbol_o[5][2] , 
        \symbol_o[5][1] , \symbol_o[5][0] , \symbol_o[4][3] , \symbol_o[4][2] , 
        \symbol_o[4][1] , \symbol_o[4][0] , \symbol_o[3][3] , \symbol_o[3][2] , 
        \symbol_o[3][1] , \symbol_o[3][0] , \symbol_o[2][3] , \symbol_o[2][2] , 
        \symbol_o[2][1] , \symbol_o[2][0] , \symbol_o[1][3] , \symbol_o[1][2] , 
        \symbol_o[1][1] , \symbol_o[1][0] , \symbol_o[0][3] , \symbol_o[0][2] , 
        \symbol_o[0][1] , \symbol_o[0][0] }), data_i, write_enable_i, addr_i
 );
  input [7:0] data_i;
  input [31:0] addr_i;
  input aclk, areset_n, \weight_i[15][15] , \weight_i[15][14] ,
         \weight_i[15][13] , \weight_i[15][12] , \weight_i[15][11] ,
         \weight_i[15][10] , \weight_i[15][9] , \weight_i[15][8] ,
         \weight_i[15][7] , \weight_i[15][6] , \weight_i[15][5] ,
         \weight_i[15][4] , \weight_i[15][3] , \weight_i[15][2] ,
         \weight_i[15][1] , \weight_i[15][0] , \weight_i[14][15] ,
         \weight_i[14][14] , \weight_i[14][13] , \weight_i[14][12] ,
         \weight_i[14][11] , \weight_i[14][10] , \weight_i[14][9] ,
         \weight_i[14][8] , \weight_i[14][7] , \weight_i[14][6] ,
         \weight_i[14][5] , \weight_i[14][4] , \weight_i[14][3] ,
         \weight_i[14][2] , \weight_i[14][1] , \weight_i[14][0] ,
         \weight_i[13][15] , \weight_i[13][14] , \weight_i[13][13] ,
         \weight_i[13][12] , \weight_i[13][11] , \weight_i[13][10] ,
         \weight_i[13][9] , \weight_i[13][8] , \weight_i[13][7] ,
         \weight_i[13][6] , \weight_i[13][5] , \weight_i[13][4] ,
         \weight_i[13][3] , \weight_i[13][2] , \weight_i[13][1] ,
         \weight_i[13][0] , \weight_i[12][15] , \weight_i[12][14] ,
         \weight_i[12][13] , \weight_i[12][12] , \weight_i[12][11] ,
         \weight_i[12][10] , \weight_i[12][9] , \weight_i[12][8] ,
         \weight_i[12][7] , \weight_i[12][6] , \weight_i[12][5] ,
         \weight_i[12][4] , \weight_i[12][3] , \weight_i[12][2] ,
         \weight_i[12][1] , \weight_i[12][0] , \weight_i[11][15] ,
         \weight_i[11][14] , \weight_i[11][13] , \weight_i[11][12] ,
         \weight_i[11][11] , \weight_i[11][10] , \weight_i[11][9] ,
         \weight_i[11][8] , \weight_i[11][7] , \weight_i[11][6] ,
         \weight_i[11][5] , \weight_i[11][4] , \weight_i[11][3] ,
         \weight_i[11][2] , \weight_i[11][1] , \weight_i[11][0] ,
         \weight_i[10][15] , \weight_i[10][14] , \weight_i[10][13] ,
         \weight_i[10][12] , \weight_i[10][11] , \weight_i[10][10] ,
         \weight_i[10][9] , \weight_i[10][8] , \weight_i[10][7] ,
         \weight_i[10][6] , \weight_i[10][5] , \weight_i[10][4] ,
         \weight_i[10][3] , \weight_i[10][2] , \weight_i[10][1] ,
         \weight_i[10][0] , \weight_i[9][15] , \weight_i[9][14] ,
         \weight_i[9][13] , \weight_i[9][12] , \weight_i[9][11] ,
         \weight_i[9][10] , \weight_i[9][9] , \weight_i[9][8] ,
         \weight_i[9][7] , \weight_i[9][6] , \weight_i[9][5] ,
         \weight_i[9][4] , \weight_i[9][3] , \weight_i[9][2] ,
         \weight_i[9][1] , \weight_i[9][0] , \weight_i[8][15] ,
         \weight_i[8][14] , \weight_i[8][13] , \weight_i[8][12] ,
         \weight_i[8][11] , \weight_i[8][10] , \weight_i[8][9] ,
         \weight_i[8][8] , \weight_i[8][7] , \weight_i[8][6] ,
         \weight_i[8][5] , \weight_i[8][4] , \weight_i[8][3] ,
         \weight_i[8][2] , \weight_i[8][1] , \weight_i[8][0] ,
         \weight_i[7][15] , \weight_i[7][14] , \weight_i[7][13] ,
         \weight_i[7][12] , \weight_i[7][11] , \weight_i[7][10] ,
         \weight_i[7][9] , \weight_i[7][8] , \weight_i[7][7] ,
         \weight_i[7][6] , \weight_i[7][5] , \weight_i[7][4] ,
         \weight_i[7][3] , \weight_i[7][2] , \weight_i[7][1] ,
         \weight_i[7][0] , \weight_i[6][15] , \weight_i[6][14] ,
         \weight_i[6][13] , \weight_i[6][12] , \weight_i[6][11] ,
         \weight_i[6][10] , \weight_i[6][9] , \weight_i[6][8] ,
         \weight_i[6][7] , \weight_i[6][6] , \weight_i[6][5] ,
         \weight_i[6][4] , \weight_i[6][3] , \weight_i[6][2] ,
         \weight_i[6][1] , \weight_i[6][0] , \weight_i[5][15] ,
         \weight_i[5][14] , \weight_i[5][13] , \weight_i[5][12] ,
         \weight_i[5][11] , \weight_i[5][10] , \weight_i[5][9] ,
         \weight_i[5][8] , \weight_i[5][7] , \weight_i[5][6] ,
         \weight_i[5][5] , \weight_i[5][4] , \weight_i[5][3] ,
         \weight_i[5][2] , \weight_i[5][1] , \weight_i[5][0] ,
         \weight_i[4][15] , \weight_i[4][14] , \weight_i[4][13] ,
         \weight_i[4][12] , \weight_i[4][11] , \weight_i[4][10] ,
         \weight_i[4][9] , \weight_i[4][8] , \weight_i[4][7] ,
         \weight_i[4][6] , \weight_i[4][5] , \weight_i[4][4] ,
         \weight_i[4][3] , \weight_i[4][2] , \weight_i[4][1] ,
         \weight_i[4][0] , \weight_i[3][15] , \weight_i[3][14] ,
         \weight_i[3][13] , \weight_i[3][12] , \weight_i[3][11] ,
         \weight_i[3][10] , \weight_i[3][9] , \weight_i[3][8] ,
         \weight_i[3][7] , \weight_i[3][6] , \weight_i[3][5] ,
         \weight_i[3][4] , \weight_i[3][3] , \weight_i[3][2] ,
         \weight_i[3][1] , \weight_i[3][0] , \weight_i[2][15] ,
         \weight_i[2][14] , \weight_i[2][13] , \weight_i[2][12] ,
         \weight_i[2][11] , \weight_i[2][10] , \weight_i[2][9] ,
         \weight_i[2][8] , \weight_i[2][7] , \weight_i[2][6] ,
         \weight_i[2][5] , \weight_i[2][4] , \weight_i[2][3] ,
         \weight_i[2][2] , \weight_i[2][1] , \weight_i[2][0] ,
         \weight_i[1][15] , \weight_i[1][14] , \weight_i[1][13] ,
         \weight_i[1][12] , \weight_i[1][11] , \weight_i[1][10] ,
         \weight_i[1][9] , \weight_i[1][8] , \weight_i[1][7] ,
         \weight_i[1][6] , \weight_i[1][5] , \weight_i[1][4] ,
         \weight_i[1][3] , \weight_i[1][2] , \weight_i[1][1] ,
         \weight_i[1][0] , \weight_i[0][15] , \weight_i[0][14] ,
         \weight_i[0][13] , \weight_i[0][12] , \weight_i[0][11] ,
         \weight_i[0][10] , \weight_i[0][9] , \weight_i[0][8] ,
         \weight_i[0][7] , \weight_i[0][6] , \weight_i[0][5] ,
         \weight_i[0][4] , \weight_i[0][3] , \weight_i[0][2] ,
         \weight_i[0][1] , \weight_i[0][0] , write_enable_i;
  output \symbol_o[7][3] , \symbol_o[7][2] , \symbol_o[7][1] ,
         \symbol_o[7][0] , \symbol_o[6][3] , \symbol_o[6][2] ,
         \symbol_o[6][1] , \symbol_o[6][0] , \symbol_o[5][3] ,
         \symbol_o[5][2] , \symbol_o[5][1] , \symbol_o[5][0] ,
         \symbol_o[4][3] , \symbol_o[4][2] , \symbol_o[4][1] ,
         \symbol_o[4][0] , \symbol_o[3][3] , \symbol_o[3][2] ,
         \symbol_o[3][1] , \symbol_o[3][0] , \symbol_o[2][3] ,
         \symbol_o[2][2] , \symbol_o[2][1] , \symbol_o[2][0] ,
         \symbol_o[1][3] , \symbol_o[1][2] , \symbol_o[1][1] ,
         \symbol_o[1][0] , \symbol_o[0][3] , \symbol_o[0][2] ,
         \symbol_o[0][1] , \symbol_o[0][0] ;
  wire   \th[2][7] , \th[2][6] , \th[2][5] , \th[2][4] , \th[2][3] ,
         \th[2][2] , \th[2][1] , \th[2][0] , \th[1][7] , \th[1][6] ,
         \th[1][5] , \th[1][4] , \th[1][3] , \th[1][2] , \th[1][1] ,
         \th[1][0] , \th[0][7] , \th[0][6] , \th[0][5] , \th[0][4] ,
         \th[0][3] , \th[0][2] , \th[0][1] , \th[0][0] , n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738;

  STP_FDPSBQ_2 \th_reg[0][2]  ( .D(n535), .CK(aclk), .SD(areset_n), .Q(
        \th[0][2] ) );
  STP_FDPRBQ_1 \th_reg[2][3]  ( .D(n552), .CK(aclk), .RD(areset_n), .Q(
        \th[2][3] ) );
  STP_FDPRBQ_1 \th_reg[1][2]  ( .D(n543), .CK(aclk), .RD(areset_n), .Q(
        \th[1][2] ) );
  STP_FDPRBQ_1 \th_reg[2][6]  ( .D(n555), .CK(aclk), .RD(areset_n), .Q(
        \th[2][6] ) );
  STP_FDPSBQ_1 \th_reg[0][0]  ( .D(n533), .CK(aclk), .SD(areset_n), .Q(
        \th[0][0] ) );
  STP_FDPSBQ_1 \th_reg[0][4]  ( .D(n537), .CK(aclk), .SD(areset_n), .Q(
        \th[0][4] ) );
  STP_FDPSBQ_1 \th_reg[0][5]  ( .D(n538), .CK(aclk), .SD(areset_n), .Q(
        \th[0][5] ) );
  STP_FDPSBQ_1 \th_reg[0][6]  ( .D(n539), .CK(aclk), .SD(areset_n), .Q(
        \th[0][6] ) );
  STP_FDPRBQ_1 \th_reg[1][5]  ( .D(n546), .CK(aclk), .RD(areset_n), .Q(
        \th[1][5] ) );
  STP_FDPRBQ_1 \th_reg[2][5]  ( .D(n554), .CK(aclk), .RD(areset_n), .Q(
        \th[2][5] ) );
  STP_FDPSBQ_1 \th_reg[0][3]  ( .D(n536), .CK(aclk), .SD(areset_n), .Q(
        \th[0][3] ) );
  STP_FDPSBQ_2 \th_reg[0][1]  ( .D(n534), .CK(aclk), .SD(areset_n), .Q(
        \th[0][1] ) );
  STP_FDPRBQ_2 \th_reg[1][4]  ( .D(n545), .CK(aclk), .RD(areset_n), .Q(
        \th[1][4] ) );
  STP_FDPRBQ_2 \th_reg[1][1]  ( .D(n542), .CK(aclk), .RD(areset_n), .Q(
        \th[1][1] ) );
  STP_FDPRBQ_2 \th_reg[2][1]  ( .D(n550), .CK(aclk), .RD(areset_n), .Q(
        \th[2][1] ) );
  STP_FDPRBQ_2 \th_reg[2][2]  ( .D(n551), .CK(aclk), .RD(areset_n), .Q(
        \th[2][2] ) );
  STP_FDPSBQ_1 \th_reg[1][7]  ( .D(n548), .CK(aclk), .SD(areset_n), .Q(
        \th[1][7] ) );
  STP_FDPSBQ_1 \th_reg[2][7]  ( .D(n556), .CK(aclk), .SD(areset_n), .Q(
        \th[2][7] ) );
  STP_FDPRBQ_1 \th_reg[1][0]  ( .D(n541), .CK(aclk), .RD(areset_n), .Q(
        \th[1][0] ) );
  STP_FDPRBQ_1 \th_reg[1][6]  ( .D(n547), .CK(aclk), .RD(areset_n), .Q(
        \th[1][6] ) );
  STP_FDPRBQ_4 \th_reg[1][3]  ( .D(n544), .CK(aclk), .RD(areset_n), .Q(
        \th[1][3] ) );
  STP_FDPSBQ_2 \th_reg[2][0]  ( .D(n549), .CK(aclk), .SD(areset_n), .Q(
        \th[2][0] ) );
  STP_FDPRBQ_V2_1 \th_reg[2][4]  ( .D(n553), .CK(aclk), .RD(areset_n), .Q(
        \th[2][4] ) );
  STP_FDPRBQ_V2_1 \th_reg[0][7]  ( .D(n540), .CK(aclk), .RD(areset_n), .Q(
        \th[0][7] ) );
  STP_NR3_G_0P65 U3 ( .A1(n560), .A2(n559), .A3(n558), .X(n568) );
  STP_OAOI211_1 U4 ( .A1(n530), .A2(\weight_i[3][7] ), .B(\weight_i[3][8] ), 
        .C(n529), .X(n560) );
  STP_INV_S_1 U5 ( .A(\th[0][7] ), .X(n589) );
  STP_INV_S_1 U6 ( .A(\th[0][6] ), .X(n586) );
  STP_INV_S_1 U7 ( .A(\th[0][4] ), .X(n400) );
  STP_INV_2 U8 ( .A(\th[1][2] ), .X(n557) );
  STP_INV_3 U9 ( .A(\th[2][1] ), .X(n690) );
  STP_INV_2 U10 ( .A(\th[2][2] ), .X(n717) );
  STP_NR2_2 U11 ( .A1(n48), .A2(n380), .X(n382) );
  STP_INV_2P5 U12 ( .A(\th[1][1] ), .X(n380) );
  STP_AOI22_0P5 U13 ( .A1(n621), .A2(n620), .B1(\weight_i[2][13] ), .B2(n705), 
        .X(n622) );
  STP_ND2_G_2 U14 ( .A1(n574), .A2(n393), .X(n580) );
  STP_OAO211_DG_1 U15 ( .A1(n277), .A2(n276), .B(n275), .C(n274), .X(n280) );
  STP_NR2_G_0P5 U16 ( .A1(n665), .A2(n664), .X(\symbol_o[2][2] ) );
  STP_NR2_G_0P5 U17 ( .A1(n451), .A2(n452), .X(\symbol_o[6][1] ) );
  STP_OR2_1 U18 ( .A1(\th[2][2] ), .A2(\th[2][1] ), .X(n1) );
  STP_NR2_1 U19 ( .A1(n39), .A2(n189), .X(\symbol_o[5][2] ) );
  STP_NR2_1 U20 ( .A1(n469), .A2(n468), .X(\symbol_o[5][0] ) );
  STP_NR2_1 U21 ( .A1(n206), .A2(n205), .X(\symbol_o[3][2] ) );
  STP_NR2_1 U22 ( .A1(n379), .A2(n496), .X(\symbol_o[6][2] ) );
  STP_NR2_1 U23 ( .A1(n307), .A2(n609), .X(\symbol_o[0][0] ) );
  STP_NR2_1 U24 ( .A1(n117), .A2(n435), .X(\symbol_o[0][2] ) );
  STP_NR2_1 U25 ( .A1(n453), .A2(n452), .X(\symbol_o[6][0] ) );
  STP_NR2_1 U26 ( .A1(n436), .A2(n435), .X(\symbol_o[0][3] ) );
  STP_NR2_1 U27 ( .A1(n204), .A2(n205), .X(\symbol_o[3][3] ) );
  STP_NR2_1 U28 ( .A1(n663), .A2(n664), .X(\symbol_o[2][3] ) );
  STP_NR2_1 U29 ( .A1(n467), .A2(n468), .X(\symbol_o[5][1] ) );
  STP_AOI211_0P75 U30 ( .A1(\weight_i[0][14] ), .A2(n730), .B1(n610), .B2(n294), .X(n307) );
  STP_AOI211_0P75 U31 ( .A1(\weight_i[12][14] ), .A2(n730), .B1(n451), .B2(
        n450), .X(n453) );
  STP_NR2_1 U32 ( .A1(n610), .A2(n609), .X(\symbol_o[0][1] ) );
  STP_AOI211_0P75 U33 ( .A1(\weight_i[7][14] ), .A2(n730), .B1(n204), .B2(n203), .X(n206) );
  STP_AOI211_0P75 U34 ( .A1(\weight_i[1][14] ), .A2(n730), .B1(n436), .B2(n103), .X(n117) );
  STP_NR2_1 U35 ( .A1(n497), .A2(n496), .X(\symbol_o[6][3] ) );
  STP_AOI211_0P75 U36 ( .A1(\weight_i[5][14] ), .A2(n730), .B1(n663), .B2(n662), .X(n665) );
  STP_NR2_1 U37 ( .A1(n222), .A2(n223), .X(\symbol_o[2][1] ) );
  STP_OA22_1 U38 ( .A1(n261), .A2(n260), .B1(\th[1][7] ), .B2(n259), .X(n467)
         );
  STP_AOI21_1 U39 ( .A1(\weight_i[0][14] ), .A2(n512), .B(n281), .X(n610) );
  STP_AOI211_0P75 U40 ( .A1(n570), .A2(n569), .B1(n568), .B2(n567), .X(n573)
         );
  STP_AO2BB2_1 U41 ( .A1(\weight_i[3][14] ), .A2(n589), .B1(n588), .B2(n587), 
        .X(n646) );
  STP_NR2_1 U42 ( .A1(n44), .A2(n43), .X(n590) );
  STP_NR2_1 U43 ( .A1(n44), .A2(addr_i[1]), .X(n55) );
  STP_INV_2 U44 ( .A(n1), .X(n3) );
  STP_ND2_G_1 U45 ( .A1(n45), .A2(n42), .X(n44) );
  STP_OAI22_0P75 U46 ( .A1(\weight_i[6][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[6][11] ), .X(n321) );
  STP_OAI22_0P5 U47 ( .A1(n394), .A2(\weight_i[11][7] ), .B1(n393), .B2(
        \weight_i[11][8] ), .X(n28) );
  STP_ND2_S_0P8 U48 ( .A1(n532), .A2(n503), .X(n505) );
  STP_OAI22_0P5 U49 ( .A1(n515), .A2(n514), .B1(\weight_i[9][9] ), .B2(n574), 
        .X(n517) );
  STP_OAI22_0P5 U50 ( .A1(n2), .A2(\weight_i[11][13] ), .B1(n512), .B2(
        \weight_i[11][14] ), .X(n10) );
  STP_OAI22_0P5 U51 ( .A1(\weight_i[13][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[13][13] ), .X(n373) );
  STP_OAI22_0P75 U52 ( .A1(\weight_i[13][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[13][11] ), .X(n358) );
  STP_OAI22_0P5 U53 ( .A1(\weight_i[13][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[13][11] ), .X(n375) );
  STP_OAI22_0P5 U54 ( .A1(n2), .A2(\weight_i[6][13] ), .B1(n512), .B2(
        \weight_i[6][14] ), .X(n314) );
  STP_OAI22_0P5 U55 ( .A1(n2), .A2(\weight_i[13][13] ), .B1(n512), .B2(
        \weight_i[13][14] ), .X(n350) );
  STP_OAI22_0P75 U56 ( .A1(\weight_i[0][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[0][11] ), .X(n285) );
  STP_AOI21_0P75 U57 ( .A1(n2), .A2(\weight_i[3][13] ), .B(n564), .X(n565) );
  STP_ND2_S_0P8 U58 ( .A1(n577), .A2(\weight_i[1][10] ), .X(n108) );
  STP_AO22_1 U59 ( .A1(n589), .A2(\weight_i[8][14] ), .B1(\weight_i[8][13] ), 
        .B2(n586), .X(n187) );
  STP_OAI22_0P5 U60 ( .A1(\weight_i[8][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[8][13] ), .X(n183) );
  STP_OAI22_0P5 U61 ( .A1(n2), .A2(\weight_i[2][13] ), .B1(n512), .B2(
        \weight_i[2][14] ), .X(n389) );
  STP_ND2_S_0P8 U62 ( .A1(n577), .A2(\weight_i[4][10] ), .X(n131) );
  STP_OAI22_0P5 U63 ( .A1(n394), .A2(\weight_i[8][7] ), .B1(n393), .B2(
        \weight_i[8][8] ), .X(n178) );
  STP_OAI22_0P5 U64 ( .A1(n130), .A2(n129), .B1(\weight_i[4][9] ), .B2(n574), 
        .X(n132) );
  STP_ND2_S_0P8 U65 ( .A1(n577), .A2(\weight_i[12][10] ), .X(n240) );
  STP_OAI22_0P5 U66 ( .A1(n239), .A2(n238), .B1(\weight_i[12][9] ), .B2(n574), 
        .X(n241) );
  STP_NR3_G_0P8 U67 ( .A1(n412), .A2(\th[1][3] ), .A3(n411), .X(n418) );
  STP_ND2_S_0P8 U68 ( .A1(n532), .A2(n414), .X(n416) );
  STP_OAI22_0P5 U69 ( .A1(\th[1][6] ), .A2(n422), .B1(n532), .B2(n414), .X(
        n415) );
  STP_OAI22_0P5 U70 ( .A1(n425), .A2(n424), .B1(\weight_i[15][9] ), .B2(n574), 
        .X(n427) );
  STP_ND2_S_1 U71 ( .A1(n577), .A2(\weight_i[15][10] ), .X(n426) );
  STP_OAI22_0P5 U72 ( .A1(n487), .A2(n486), .B1(\weight_i[5][9] ), .B2(n574), 
        .X(n489) );
  STP_OAI22_0P5 U73 ( .A1(\weight_i[14][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[14][10] ), .X(n142) );
  STP_ND2_S_0P8 U74 ( .A1(n577), .A2(\weight_i[5][10] ), .X(n488) );
  STP_ND2_S_1 U75 ( .A1(n577), .A2(\weight_i[9][10] ), .X(n516) );
  STP_OAI22_0P5 U76 ( .A1(\weight_i[14][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[14][13] ), .X(n159) );
  STP_AO22_1 U77 ( .A1(n589), .A2(\weight_i[11][14] ), .B1(\weight_i[11][13] ), 
        .B2(n586), .X(n37) );
  STP_OAI22_0P5 U78 ( .A1(\weight_i[0][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[0][10] ), .X(n276) );
  STP_OAI22_0P75 U79 ( .A1(\weight_i[0][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[0][13] ), .X(n301) );
  STP_ND2_S_1 U80 ( .A1(n577), .A2(\weight_i[10][10] ), .X(n264) );
  STP_OAI22_0P5 U81 ( .A1(n458), .A2(n457), .B1(\weight_i[10][9] ), .B2(n717), 
        .X(n462) );
  STP_AOAI211_0P5 U82 ( .A1(n561), .A2(\weight_i[3][10] ), .B(
        \weight_i[3][11] ), .C(\weight_i[3][12] ), .X(n566) );
  STP_OAI22_0P5 U83 ( .A1(\weight_i[11][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[11][11] ), .X(n17) );
  STP_OAI22_0P5 U84 ( .A1(n107), .A2(n106), .B1(\weight_i[1][9] ), .B2(n574), 
        .X(n109) );
  STP_OAI22_0P5 U85 ( .A1(n2), .A2(\weight_i[0][13] ), .B1(n512), .B2(
        \weight_i[0][14] ), .X(n278) );
  STP_OAI22_0P5 U86 ( .A1(\weight_i[0][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[0][11] ), .X(n303) );
  STP_OAI22_0P5 U87 ( .A1(n671), .A2(n670), .B1(\weight_i[9][9] ), .B2(n717), 
        .X(n675) );
  STP_OAI22_0P5 U88 ( .A1(n263), .A2(n262), .B1(\weight_i[10][9] ), .B2(n574), 
        .X(n265) );
  STP_OAI22_0P75 U89 ( .A1(\weight_i[3][10] ), .A2(n720), .B1(n705), .B2(
        \weight_i[3][13] ), .X(n640) );
  STP_INV_2 U90 ( .A(\th[2][4] ), .X(n721) );
  STP_NR3_G_0P65 U91 ( .A1(\th[1][3] ), .A2(n563), .A3(n562), .X(n564) );
  STP_OAI22_0P75 U92 ( .A1(\th[0][5] ), .A2(n563), .B1(\th[0][4] ), .B2(n639), 
        .X(n583) );
  STP_INV_2 U93 ( .A(\th[0][3] ), .X(n577) );
  STP_BUF_S_4 U94 ( .A(\th[1][5] ), .X(n532) );
  STP_ND2_S_0P8 U95 ( .A1(\th[1][6] ), .A2(n422), .X(n733) );
  STP_INV_S_1 U96 ( .A(\weight_i[5][14] ), .X(n483) );
  STP_ND2_S_1 U97 ( .A1(\weight_i[14][11] ), .A2(\weight_i[14][12] ), .X(n698)
         );
  STP_INV_S_1 U98 ( .A(\weight_i[7][14] ), .X(n67) );
  STP_INV_S_1 U99 ( .A(\weight_i[12][14] ), .X(n235) );
  STP_INV_S_1 U100 ( .A(\weight_i[1][14] ), .X(n91) );
  STP_INV_S_1 U101 ( .A(\weight_i[4][14] ), .X(n126) );
  STP_NR2_S_1P5 U102 ( .A1(n711), .A2(n710), .X(\symbol_o[7][0] ) );
  STP_AOI211_0P75 U103 ( .A1(\weight_i[10][14] ), .A2(n730), .B1(n467), .B2(
        n466), .X(n469) );
  STP_AOI211_0P75 U104 ( .A1(\weight_i[4][14] ), .A2(n730), .B1(n222), .B2(
        n221), .X(n224) );
  STP_AOI211_0P75 U105 ( .A1(\weight_i[14][14] ), .A2(n730), .B1(n709), .B2(
        n708), .X(n711) );
  STP_AOI211_0P75 U106 ( .A1(\weight_i[13][14] ), .A2(n730), .B1(n497), .B2(
        n366), .X(n379) );
  STP_NR2_G_0P8 U107 ( .A1(n190), .A2(n189), .X(\symbol_o[5][3] ) );
  STP_AOI211_0P75 U108 ( .A1(\weight_i[11][14] ), .A2(n730), .B1(n190), .B2(
        n26), .X(n39) );
  STP_AOI211_1P5 U109 ( .A1(\weight_i[2][14] ), .A2(n730), .B1(n625), .B2(n624), .X(n627) );
  STP_AOI21_0P75 U110 ( .A1(\weight_i[11][14] ), .A2(n512), .B(n13), .X(n190)
         );
  STP_AOI21_0P75 U111 ( .A1(\th[2][7] ), .A2(n707), .B(n706), .X(n708) );
  STP_OA21B_1 U112 ( .A1(n354), .A2(\th[1][7] ), .B(n353), .X(n497) );
  STP_NR2_G_0P8 U113 ( .A1(n605), .A2(n607), .X(\symbol_o[4][1] ) );
  STP_AOI21_0P75 U114 ( .A1(\th[2][7] ), .A2(n604), .B(n603), .X(n606) );
  STP_AOI21_0P75 U115 ( .A1(n280), .A2(n279), .B(n278), .X(n281) );
  STP_AOI21_0P75 U116 ( .A1(n12), .A2(n11), .B(n10), .X(n13) );
  STP_OAI22_0P75 U117 ( .A1(n378), .A2(n377), .B1(\weight_i[13][14] ), .B2(
        n589), .X(n496) );
  STP_OAI22_0P75 U118 ( .A1(n164), .A2(n163), .B1(\weight_i[14][14] ), .B2(
        n589), .X(n710) );
  STP_OAI22_0P75 U119 ( .A1(n38), .A2(n37), .B1(\weight_i[11][14] ), .B2(n589), 
        .X(n189) );
  STP_OA21B_1 U120 ( .A1(n152), .A2(n151), .B(n150), .X(n153) );
  STP_OAI22_0P5 U121 ( .A1(n342), .A2(n341), .B1(\weight_i[6][14] ), .B2(n589), 
        .X(n470) );
  STP_OAI22_0P75 U122 ( .A1(n306), .A2(n305), .B1(\weight_i[0][14] ), .B2(n589), .X(n609) );
  STP_OAI22_0P75 U123 ( .A1(n188), .A2(n187), .B1(\weight_i[8][14] ), .B2(n589), .X(n607) );
  STP_OAI22_0P75 U124 ( .A1(n406), .A2(n405), .B1(\weight_i[2][14] ), .B2(n589), .X(n626) );
  STP_OAOI211_V2_1 U125 ( .A1(n376), .A2(n375), .B(n374), .C(n373), .X(n378)
         );
  STP_OAI21_0P75 U126 ( .A1(n421), .A2(n420), .B(n419), .X(n734) );
  STP_AOAI211_0P75 U127 ( .A1(n617), .A2(n616), .B(n615), .C(n614), .X(n621)
         );
  STP_OAI21_0P75 U128 ( .A1(n510), .A2(n509), .B(n508), .X(n682) );
  STP_AOAI211_0P75 U129 ( .A1(n585), .A2(n584), .B(n583), .C(n582), .X(n588)
         );
  STP_NR3_G_0P65 U130 ( .A1(n676), .A2(\th[2][6] ), .A3(n511), .X(n678) );
  STP_OAI21_0P5 U131 ( .A1(n382), .A2(n298), .B(n272), .X(n273) );
  STP_OAI21_0P5 U132 ( .A1(n382), .A2(n30), .B(n4), .X(n5) );
  STP_OAI22_0P5 U133 ( .A1(\weight_i[6][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[6][11] ), .X(n310) );
  STP_OAI21_0P5 U134 ( .A1(n382), .A2(n370), .B(n344), .X(n345) );
  STP_OAI22_0P5 U135 ( .A1(\weight_i[11][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[11][10] ), .X(n8) );
  STP_OAI22_0P5 U136 ( .A1(\weight_i[6][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[6][10] ), .X(n312) );
  STP_OAI22_0P5 U137 ( .A1(\th[1][6] ), .A2(n511), .B1(n532), .B2(n503), .X(
        n504) );
  STP_OAI22_0P5 U138 ( .A1(\weight_i[11][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[11][11] ), .X(n35) );
  STP_OAI22_0P5 U139 ( .A1(\weight_i[13][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[13][10] ), .X(n348) );
  STP_OAI22_0P5 U140 ( .A1(\weight_i[6][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[6][11] ), .X(n339) );
  STP_NR3_G_0P65 U141 ( .A1(n727), .A2(\th[2][6] ), .A3(n422), .X(n729) );
  STP_OAI22_0P5 U142 ( .A1(\weight_i[6][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[6][13] ), .X(n337) );
  STP_OAI22_0P5 U143 ( .A1(n719), .A2(n718), .B1(\weight_i[15][9] ), .B2(n717), 
        .X(n726) );
  STP_OAI22_0P5 U144 ( .A1(\weight_i[8][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[8][11] ), .X(n185) );
  STP_OAI22_0P5 U145 ( .A1(n2), .A2(\weight_i[8][13] ), .B1(n512), .B2(
        \weight_i[8][14] ), .X(n173) );
  STP_OAI22_0P5 U146 ( .A1(\weight_i[2][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[2][11] ), .X(n403) );
  STP_OAI22_0P5 U147 ( .A1(\weight_i[2][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[2][13] ), .X(n401) );
  STP_OAI22_0P5 U148 ( .A1(n654), .A2(n653), .B1(\weight_i[5][9] ), .B2(n717), 
        .X(n658) );
  STP_OAI22_0P5 U149 ( .A1(\th[1][6] ), .A2(n230), .B1(n532), .B2(n229), .X(
        n231) );
  STP_OAI22_0P5 U150 ( .A1(n211), .A2(n210), .B1(\weight_i[4][9] ), .B2(n717), 
        .X(n216) );
  STP_OAI22_0P5 U151 ( .A1(\weight_i[2][9] ), .A2(n557), .B1(n561), .B2(
        \weight_i[2][10] ), .X(n387) );
  STP_OAI22_0P5 U152 ( .A1(\th[1][6] ), .A2(n217), .B1(n532), .B2(n121), .X(
        n122) );
  STP_OAI22_0P5 U153 ( .A1(\th[1][6] ), .A2(n478), .B1(n532), .B2(n477), .X(
        n479) );
  STP_ND2_S_0P8 U154 ( .A1(n577), .A2(\weight_i[7][10] ), .X(n72) );
  STP_OAI22_0P5 U155 ( .A1(n71), .A2(n70), .B1(\weight_i[7][9] ), .B2(n574), 
        .X(n73) );
  STP_OAI22_0P5 U156 ( .A1(n2), .A2(\weight_i[14][13] ), .B1(n512), .B2(
        \weight_i[14][14] ), .X(n150) );
  STP_OAI22_0P5 U157 ( .A1(n195), .A2(n194), .B1(\weight_i[7][9] ), .B2(n717), 
        .X(n199) );
  STP_OAI22_0P5 U158 ( .A1(\th[1][6] ), .A2(n62), .B1(n532), .B2(n61), .X(n63)
         );
  STP_OAI22_0P5 U159 ( .A1(n441), .A2(n440), .B1(\weight_i[12][9] ), .B2(n717), 
        .X(n446) );
  STP_OAI22_0P5 U160 ( .A1(\weight_i[14][10] ), .A2(n577), .B1(n400), .B2(
        \weight_i[14][11] ), .X(n161) );
  STP_OAI22_0P5 U161 ( .A1(\weight_i[11][12] ), .A2(n518), .B1(n586), .B2(
        \weight_i[11][13] ), .X(n33) );
  STP_OAI22_0P5 U162 ( .A1(\th[1][6] ), .A2(n86), .B1(n532), .B2(n85), .X(n87)
         );
  STP_ND2_S_0P8 U163 ( .A1(n730), .A2(\weight_i[3][14] ), .X(n647) );
  STP_OAI22_0P5 U164 ( .A1(n95), .A2(n94), .B1(\weight_i[1][9] ), .B2(n717), 
        .X(n99) );
  STP_OAI22_0P5 U165 ( .A1(\th[1][6] ), .A2(n254), .B1(n532), .B2(n253), .X(
        n255) );
  STP_NR3_G_0P65 U166 ( .A1(\th[1][3] ), .A2(n502), .A3(n501), .X(n506) );
  STP_ND2_S_0P8 U167 ( .A1(\th[1][6] ), .A2(n511), .X(n681) );
  STP_INV_S_1 U168 ( .A(\th[1][0] ), .X(n48) );
  STP_INV_2 U169 ( .A(\th[2][7] ), .X(n730) );
  STP_INV_S_1 U170 ( .A(\weight_i[9][14] ), .X(n513) );
  STP_INV_S_1 U171 ( .A(data_i[5]), .X(n52) );
  STP_INV_S_1 U172 ( .A(data_i[4]), .X(n54) );
  STP_INV_S_1 U173 ( .A(data_i[6]), .X(n53) );
  STP_INV_S_1 U174 ( .A(data_i[3]), .X(n591) );
  STP_INV_S_1 U175 ( .A(data_i[1]), .X(n51) );
  STP_INV_S_1 U176 ( .A(data_i[7]), .X(n46) );
  STP_NR4_1 U177 ( .A1(addr_i[5]), .A2(addr_i[7]), .A3(addr_i[6]), .A4(
        addr_i[4]), .X(n40) );
  STP_INV_S_1 U178 ( .A(\weight_i[15][14] ), .X(n423) );
  STP_INV_S_1 U179 ( .A(\weight_i[10][14] ), .X(n259) );
  STP_INV_S_1 U180 ( .A(\th[2][6] ), .X(n705) );
  STP_INV_2 U181 ( .A(\th[1][7] ), .X(n512) );
  STP_AOI22_1 U182 ( .A1(n602), .A2(n601), .B1(\weight_i[8][13] ), .B2(n705), 
        .X(n603) );
  STP_INV_S_1 U183 ( .A(\th[1][6] ), .X(n2) );
  STP_NR2_1 U184 ( .A1(n224), .A2(n223), .X(\symbol_o[2][0] ) );
  STP_INV_S_0P65 U185 ( .A(\weight_i[15][11] ), .X(n413) );
  STP_INV_S_0P65 U186 ( .A(\weight_i[9][11] ), .X(n501) );
  STP_INV_S_0P65 U187 ( .A(\weight_i[15][13] ), .X(n422) );
  STP_NR2B_V1DG_1 U188 ( .A(\th[1][4] ), .B(\weight_i[14][11] ), .X(n144) );
  STP_INV_S_0P65 U189 ( .A(\weight_i[9][13] ), .X(n511) );
  STP_INV_S_0P65 U190 ( .A(\weight_i[13][14] ), .X(n354) );
  STP_AO22_0P5 U191 ( .A1(n589), .A2(\weight_i[14][14] ), .B1(
        \weight_i[14][13] ), .B2(n586), .X(n163) );
  STP_OAOI211_0P5 U192 ( .A1(n162), .A2(n161), .B(n160), .C(n159), .X(n164) );
  STP_AOI22_0P5 U193 ( .A1(n660), .A2(n659), .B1(n705), .B2(\weight_i[5][13] ), 
        .X(n661) );
  STP_INV_S_0P65 U194 ( .A(\weight_i[10][8] ), .X(n456) );
  STP_NR2B_V1DG_1 U195 ( .A(\th[1][4] ), .B(\weight_i[15][11] ), .X(n412) );
  STP_INV_S_0P65 U196 ( .A(\weight_i[15][10] ), .X(n411) );
  STP_INV_S_0P65 U197 ( .A(\weight_i[6][8] ), .X(n334) );
  STP_OAI22_0P5 U198 ( .A1(n394), .A2(\weight_i[6][7] ), .B1(n393), .B2(
        \weight_i[6][8] ), .X(n332) );
  STP_OAI22_0P5 U199 ( .A1(n394), .A2(\weight_i[0][7] ), .B1(n393), .B2(
        \weight_i[0][8] ), .X(n296) );
  STP_INV_S_0P65 U200 ( .A(\weight_i[12][8] ), .X(n439) );
  STP_INV_S_0P65 U201 ( .A(\weight_i[8][9] ), .X(n592) );
  STP_INV_S_0P65 U202 ( .A(\weight_i[8][8] ), .X(n180) );
  STP_INV_S_0P65 U203 ( .A(\weight_i[9][10] ), .X(n502) );
  STP_INV_S_0P65 U204 ( .A(\weight_i[4][8] ), .X(n209) );
  STP_INV_S_0P65 U205 ( .A(\weight_i[1][8] ), .X(n110) );
  STP_INV_S_0P65 U206 ( .A(\weight_i[11][8] ), .X(n30) );
  STP_INV_S_0P65 U207 ( .A(\weight_i[13][8] ), .X(n370) );
  STP_OAI22_0P5 U208 ( .A1(n394), .A2(\weight_i[13][7] ), .B1(n393), .B2(
        \weight_i[13][8] ), .X(n368) );
  STP_INV_S_0P65 U209 ( .A(\weight_i[7][8] ), .X(n193) );
  STP_INV_S_1 U210 ( .A(n383), .X(n528) );
  STP_INV_S_0P65 U211 ( .A(\weight_i[5][8] ), .X(n652) );
  STP_INV_S_0P65 U212 ( .A(\weight_i[3][8] ), .X(n636) );
  STP_AOI22_0P5 U213 ( .A1(\th[0][0] ), .A2(n635), .B1(\th[0][1] ), .B2(n636), 
        .X(n575) );
  STP_INV_S_0P65 U214 ( .A(\weight_i[3][11] ), .X(n639) );
  STP_INV_S_0P65 U215 ( .A(\weight_i[15][9] ), .X(n714) );
  STP_INV_S_0P65 U216 ( .A(\weight_i[15][8] ), .X(n716) );
  STP_INV_S_0P65 U217 ( .A(\weight_i[15][7] ), .X(n715) );
  STP_NR2B_V1DG_1 U218 ( .A(\th[2][7] ), .B(\weight_i[15][14] ), .X(n727) );
  STP_NR2_2 U219 ( .A1(\th[1][0] ), .A2(\th[1][1] ), .X(n383) );
  STP_INV_S_0P65 U220 ( .A(\weight_i[10][10] ), .X(n251) );
  STP_OAI211_1 U221 ( .A1(\th[1][1] ), .A2(n715), .B1(n528), .B2(n407), .X(
        n408) );
  STP_ND2_S_0P8 U222 ( .A1(n557), .A2(\weight_i[15][9] ), .X(n407) );
  STP_INV_S_0P65 U223 ( .A(\weight_i[15][12] ), .X(n414) );
  STP_INV_S_0P65 U224 ( .A(\weight_i[9][8] ), .X(n669) );
  STP_INV_S_0P65 U225 ( .A(\weight_i[12][10] ), .X(n228) );
  STP_INV_2 U226 ( .A(n382), .X(n530) );
  STP_OAI211_1 U227 ( .A1(\th[1][1] ), .A2(n668), .B1(n528), .B2(n498), .X(
        n499) );
  STP_ND2_S_0P8 U228 ( .A1(n557), .A2(\weight_i[9][9] ), .X(n498) );
  STP_INV_S_0P65 U229 ( .A(\weight_i[9][12] ), .X(n503) );
  STP_INV_S_0P65 U230 ( .A(\weight_i[4][10] ), .X(n133) );
  STP_INV_S_0P65 U231 ( .A(\weight_i[4][12] ), .X(n121) );
  STP_INV_S_0P65 U232 ( .A(\weight_i[4][13] ), .X(n217) );
  STP_AOAI211_0P5 U233 ( .A1(n393), .A2(\weight_i[2][8] ), .B(n574), .C(
        \weight_i[2][9] ), .X(n396) );
  STP_INV_S_0P65 U234 ( .A(\weight_i[1][10] ), .X(n83) );
  STP_AOI22_0P5 U235 ( .A1(n3), .A2(\weight_i[5][8] ), .B1(n720), .B2(
        \weight_i[5][10] ), .X(n657) );
  STP_AO22_0P5 U236 ( .A1(n15), .A2(n14), .B1(\th[2][2] ), .B2(n27), .X(n19)
         );
  STP_OAI22_0P5 U237 ( .A1(n690), .A2(\weight_i[11][8] ), .B1(n689), .B2(
        \weight_i[11][7] ), .X(n14) );
  STP_AOAI211_0P5 U238 ( .A1(n690), .A2(\weight_i[11][8] ), .B(n717), .C(
        \weight_i[11][9] ), .X(n15) );
  STP_INV_S_0P65 U239 ( .A(\weight_i[11][12] ), .X(n20) );
  STP_INV_S_0P65 U240 ( .A(\weight_i[7][10] ), .X(n59) );
  STP_INV_S_0P65 U241 ( .A(\weight_i[5][10] ), .X(n475) );
  STP_INV_S_0P65 U242 ( .A(\weight_i[5][11] ), .X(n476) );
  STP_INV_S_0P65 U243 ( .A(\weight_i[3][12] ), .X(n563) );
  STP_OAI211_0P5 U244 ( .A1(\th[1][3] ), .A2(n562), .B1(n526), .B2(n563), .X(
        n569) );
  STP_AOAI211_0P5 U245 ( .A1(n561), .A2(\weight_i[3][10] ), .B(
        \weight_i[3][11] ), .C(n531), .X(n526) );
  STP_AOI211_0P5 U246 ( .A1(\weight_i[14][9] ), .A2(n557), .B1(n141), .B2(n383), .X(n143) );
  STP_OAI21_0P5 U247 ( .A1(n382), .A2(n156), .B(n140), .X(n141) );
  STP_OAI21_0P5 U248 ( .A1(n380), .A2(\weight_i[14][8] ), .B(\weight_i[14][7] ), .X(n140) );
  STP_ND2_S_0P8 U249 ( .A1(n531), .A2(\weight_i[14][11] ), .X(n148) );
  STP_ND3_0P5 U250 ( .A1(n145), .A2(n561), .A3(\weight_i[14][10] ), .X(n149)
         );
  STP_INV_S_1 U251 ( .A(addr_i[0]), .X(n42) );
  STP_AOI31_0P5 U252 ( .A1(n649), .A2(n648), .A3(n647), .B(n646), .X(
        \symbol_o[1][2] ) );
  STP_OAI211_0P5 U253 ( .A1(n633), .A2(n632), .B1(n631), .B2(n630), .X(n645)
         );
  STP_AOI21_0P75 U254 ( .A1(\weight_i[6][14] ), .A2(n512), .B(n317), .X(n471)
         );
  STP_AO22_0P5 U255 ( .A1(n589), .A2(\weight_i[6][14] ), .B1(\weight_i[6][13] ), .B2(n586), .X(n341) );
  STP_OAOI211_0P5 U256 ( .A1(n176), .A2(n175), .B(n174), .C(n173), .X(n177) );
  STP_AOI21_1 U257 ( .A1(\th[2][7] ), .A2(n623), .B(n622), .X(n624) );
  STP_INV_S_0P65 U258 ( .A(\weight_i[2][14] ), .X(n623) );
  STP_AOI21_0P75 U259 ( .A1(\th[2][6] ), .A2(n422), .B(n713), .X(n738) );
  STP_AOI21_0P75 U260 ( .A1(\th[2][7] ), .A2(n259), .B(n465), .X(n466) );
  STP_AN3B_0P5 U261 ( .B1(n734), .B2(n733), .A(n728), .X(n434) );
  STP_AOAI211_0P5 U262 ( .A1(n682), .A2(n681), .B(n680), .C(n679), .X(n684) );
  STP_AOI21_0P75 U263 ( .A1(\th[2][7] ), .A2(n91), .B(n102), .X(n103) );
  STP_INV_S_0P65 U264 ( .A(\weight_i[14][14] ), .X(n707) );
  STP_AOI21_0P75 U265 ( .A1(\th[2][7] ), .A2(n293), .B(n292), .X(n294) );
  STP_INV_S_0P65 U266 ( .A(\weight_i[0][14] ), .X(n293) );
  STP_AOI21_0P75 U267 ( .A1(\th[2][7] ), .A2(n235), .B(n449), .X(n450) );
  STP_NR2_2 U268 ( .A1(n608), .A2(n607), .X(\symbol_o[4][0] ) );
  STP_AOI211_G_1 U269 ( .A1(\weight_i[8][14] ), .A2(n730), .B1(n606), .B2(n605), .X(n608) );
  STP_INV_S_0P65 U270 ( .A(\weight_i[8][14] ), .X(n604) );
  STP_AOI21_0P75 U271 ( .A1(\th[2][7] ), .A2(n25), .B(n24), .X(n26) );
  STP_INV_S_0P65 U272 ( .A(\weight_i[11][14] ), .X(n25) );
  STP_AOI21_0P75 U273 ( .A1(\th[2][7] ), .A2(n354), .B(n365), .X(n366) );
  STP_AOI21_0P75 U274 ( .A1(\th[2][7] ), .A2(n67), .B(n202), .X(n203) );
  STP_OAI21_0P5 U275 ( .A1(n382), .A2(n334), .B(n308), .X(n309) );
  STP_OAI21_0P5 U276 ( .A1(n380), .A2(\weight_i[6][8] ), .B(\weight_i[6][7] ), 
        .X(n308) );
  STP_NR2_G_0P5 U277 ( .A1(n561), .A2(\weight_i[8][10] ), .X(n169) );
  STP_AOI21_0P75 U278 ( .A1(\weight_i[8][9] ), .A2(n557), .B(n168), .X(n166)
         );
  STP_AO22_0P5 U279 ( .A1(n613), .A2(n612), .B1(\th[2][2] ), .B2(n611), .X(
        n617) );
  STP_AOAI211_0P5 U280 ( .A1(n690), .A2(\weight_i[2][8] ), .B(n717), .C(
        \weight_i[2][9] ), .X(n613) );
  STP_OAI21_0P5 U281 ( .A1(n382), .A2(n397), .B(n381), .X(n384) );
  STP_OAI21_0P5 U282 ( .A1(n380), .A2(\weight_i[2][8] ), .B(\weight_i[2][7] ), 
        .X(n381) );
  STP_INV_S_0P65 U283 ( .A(\weight_i[2][8] ), .X(n397) );
  STP_OAI22_0P5 U284 ( .A1(n394), .A2(\weight_i[2][7] ), .B1(n393), .B2(
        \weight_i[2][8] ), .X(n395) );
  STP_OAI21_0P5 U285 ( .A1(n380), .A2(\weight_i[11][8] ), .B(\weight_i[11][7] ), .X(n4) );
  STP_OAI21_0P5 U286 ( .A1(n380), .A2(\weight_i[13][8] ), .B(\weight_i[13][7] ), .X(n344) );
  STP_OAI211_0P5 U287 ( .A1(\th[1][1] ), .A2(n635), .B1(n528), .B2(n527), .X(
        n529) );
  STP_ND2_S_0P8 U288 ( .A1(n557), .A2(\weight_i[3][9] ), .X(n527) );
  STP_INV_S_0P65 U289 ( .A(\weight_i[14][8] ), .X(n156) );
  STP_OAI22_0P5 U290 ( .A1(n394), .A2(\weight_i[14][7] ), .B1(n393), .B2(
        \weight_i[14][8] ), .X(n154) );
  STP_INV_S_0P65 U291 ( .A(\weight_i[10][11] ), .X(n252) );
  STP_OAI21_0P5 U292 ( .A1(n530), .A2(\weight_i[10][7] ), .B(\weight_i[10][8] ), .X(n250) );
  STP_INV_S_0P65 U293 ( .A(\weight_i[10][12] ), .X(n253) );
  STP_INV_S_0P65 U294 ( .A(\weight_i[10][13] ), .X(n254) );
  STP_OAI211_0P5 U295 ( .A1(n456), .A2(n580), .B1(n265), .B2(n264), .X(n269)
         );
  STP_OAI211_0P5 U296 ( .A1(n716), .A2(n580), .B1(n427), .B2(n426), .X(n431)
         );
  STP_ND3_0P5 U297 ( .A1(n721), .A2(\weight_i[3][12] ), .A3(\weight_i[3][11] ), 
        .X(n632) );
  STP_OAI211_0P5 U298 ( .A1(n629), .A2(\weight_i[3][12] ), .B1(n722), .B2(
        \weight_i[3][13] ), .X(n630) );
  STP_OAI22_0P5 U299 ( .A1(n638), .A2(n637), .B1(\weight_i[3][9] ), .B2(n717), 
        .X(n643) );
  STP_AO22_0P5 U300 ( .A1(n319), .A2(n318), .B1(\th[2][2] ), .B2(n331), .X(
        n323) );
  STP_AOAI211_0P5 U301 ( .A1(n393), .A2(\weight_i[6][8] ), .B(n574), .C(
        \weight_i[6][9] ), .X(n333) );
  STP_AO22_0P5 U302 ( .A1(n693), .A2(n692), .B1(\th[2][2] ), .B2(n691), .X(
        n697) );
  STP_AOAI211_0P5 U303 ( .A1(n690), .A2(\weight_i[14][8] ), .B(n717), .C(
        \weight_i[14][9] ), .X(n693) );
  STP_AOI22_0P5 U304 ( .A1(n3), .A2(\weight_i[14][8] ), .B1(n720), .B2(
        \weight_i[14][10] ), .X(n696) );
  STP_AOAI211_0P5 U305 ( .A1(n721), .A2(\weight_i[14][11] ), .B(
        \weight_i[14][12] ), .C(n722), .X(n688) );
  STP_AOAI211_0P5 U306 ( .A1(n721), .A2(\weight_i[14][11] ), .B(
        \weight_i[14][12] ), .C(\weight_i[14][13] ), .X(n701) );
  STP_ND3_0P5 U307 ( .A1(n721), .A2(\weight_i[14][13] ), .A3(n699), .X(n700)
         );
  STP_AO22_0P5 U308 ( .A1(n283), .A2(n282), .B1(\th[2][2] ), .B2(n295), .X(
        n287) );
  STP_AOAI211_0P5 U309 ( .A1(n690), .A2(\weight_i[0][8] ), .B(n717), .C(
        \weight_i[0][9] ), .X(n283) );
  STP_AOAI211_0P5 U310 ( .A1(n393), .A2(\weight_i[0][8] ), .B(n574), .C(
        \weight_i[0][9] ), .X(n297) );
  STP_INV_S_0P65 U311 ( .A(\weight_i[12][11] ), .X(n442) );
  STP_OAI21_0P5 U312 ( .A1(n530), .A2(\weight_i[12][7] ), .B(\weight_i[12][8] ), .X(n227) );
  STP_INV_S_0P65 U313 ( .A(\weight_i[12][12] ), .X(n229) );
  STP_INV_S_0P65 U314 ( .A(\weight_i[12][13] ), .X(n230) );
  STP_OAI211_0P5 U315 ( .A1(n439), .A2(n580), .B1(n241), .B2(n240), .X(n245)
         );
  STP_AOI22_0P5 U316 ( .A1(\weight_i[8][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[8][11] ), .X(n595) );
  STP_AOAI211_0P5 U317 ( .A1(n393), .A2(\weight_i[8][8] ), .B(n574), .C(
        \weight_i[8][9] ), .X(n179) );
  STP_OAI211_0P5 U318 ( .A1(n669), .A2(n580), .B1(n517), .B2(n516), .X(n522)
         );
  STP_INV_S_0P65 U319 ( .A(\weight_i[4][11] ), .X(n212) );
  STP_OAI21_0P5 U320 ( .A1(n530), .A2(\weight_i[4][7] ), .B(\weight_i[4][8] ), 
        .X(n120) );
  STP_OAI211_0P5 U321 ( .A1(n209), .A2(n580), .B1(n132), .B2(n131), .X(n137)
         );
  STP_INV_S_0P65 U322 ( .A(\weight_i[1][12] ), .X(n85) );
  STP_INV_S_0P65 U323 ( .A(\weight_i[1][13] ), .X(n86) );
  STP_OAI211_0P5 U324 ( .A1(n110), .A2(n580), .B1(n109), .B2(n108), .X(n114)
         );
  STP_INV_S_0P65 U325 ( .A(\weight_i[1][11] ), .X(n84) );
  STP_OAI21_0P5 U326 ( .A1(n530), .A2(\weight_i[1][7] ), .B(\weight_i[1][8] ), 
        .X(n82) );
  STP_AOAI211_0P5 U327 ( .A1(n393), .A2(\weight_i[11][8] ), .B(n574), .C(
        \weight_i[11][9] ), .X(n29) );
  STP_AO22_0P5 U328 ( .A1(n356), .A2(n355), .B1(\th[2][2] ), .B2(n367), .X(
        n360) );
  STP_AOAI211_0P5 U329 ( .A1(n690), .A2(\weight_i[13][8] ), .B(n717), .C(
        \weight_i[13][9] ), .X(n356) );
  STP_AOAI211_0P5 U330 ( .A1(n393), .A2(\weight_i[13][8] ), .B(n574), .C(
        \weight_i[13][9] ), .X(n369) );
  STP_INV_S_0P65 U331 ( .A(\weight_i[7][12] ), .X(n61) );
  STP_INV_S_0P65 U332 ( .A(\weight_i[7][13] ), .X(n62) );
  STP_OAI211_0P5 U333 ( .A1(n193), .A2(n580), .B1(n73), .B2(n72), .X(n77) );
  STP_INV_S_0P65 U334 ( .A(\weight_i[7][11] ), .X(n60) );
  STP_OAI21_0P5 U335 ( .A1(n530), .A2(\weight_i[7][7] ), .B(\weight_i[7][8] ), 
        .X(n58) );
  STP_OAI21_0P5 U336 ( .A1(n530), .A2(\weight_i[5][7] ), .B(\weight_i[5][8] ), 
        .X(n474) );
  STP_INV_S_0P65 U337 ( .A(\weight_i[5][12] ), .X(n477) );
  STP_INV_S_0P65 U338 ( .A(\weight_i[5][13] ), .X(n478) );
  STP_OAI211_0P5 U339 ( .A1(n652), .A2(n580), .B1(n489), .B2(n488), .X(n493)
         );
  STP_OAI211_1 U340 ( .A1(n636), .A2(n580), .B1(n579), .B2(n578), .X(n585) );
  STP_OAI22_0P5 U341 ( .A1(n576), .A2(n575), .B1(\weight_i[3][9] ), .B2(n574), 
        .X(n579) );
  STP_OAOI211_0P5 U342 ( .A1(\th[0][1] ), .A2(n636), .B(\th[0][2] ), .C(n634), 
        .X(n576) );
  STP_INV_S_0P65 U343 ( .A(\weight_i[3][13] ), .X(n633) );
  STP_AOI211_0P5 U344 ( .A1(\weight_i[15][14] ), .A2(n730), .B1(n729), .B2(
        n728), .X(n731) );
  STP_INV_S_0P65 U345 ( .A(n727), .X(n712) );
  STP_OAOI211_0P5 U346 ( .A1(n530), .A2(\weight_i[15][7] ), .B(
        \weight_i[15][8] ), .C(n408), .X(n421) );
  STP_AOI211_0P5 U347 ( .A1(\weight_i[9][14] ), .A2(n730), .B1(n678), .B2(n677), .X(n679) );
  STP_AOI211_0P5 U348 ( .A1(n705), .A2(n704), .B1(n703), .B2(n702), .X(n706)
         );
  STP_OAI21_0P5 U349 ( .A1(n701), .A2(\th[2][5] ), .B(n700), .X(n702) );
  STP_OAI211_0P5 U350 ( .A1(\th[2][4] ), .A2(n698), .B1(n688), .B2(n687), .X(
        n704) );
  STP_AOI211_0P5 U351 ( .A1(n697), .A2(n696), .B1(n695), .B2(n694), .X(n703)
         );
  STP_OAI211_0P5 U352 ( .A1(\weight_i[9][9] ), .A2(n557), .B1(n500), .B2(n505), 
        .X(n509) );
  STP_OAOI211_0P5 U353 ( .A1(n530), .A2(\weight_i[9][7] ), .B(\weight_i[9][8] ), .C(n499), .X(n510) );
  STP_AOI21_0P75 U354 ( .A1(\weight_i[2][14] ), .A2(n512), .B(n392), .X(n625)
         );
  STP_AOI21_0P75 U355 ( .A1(n391), .A2(n390), .B(n389), .X(n392) );
  STP_AO22_0P5 U356 ( .A1(n589), .A2(\weight_i[2][14] ), .B1(\weight_i[2][13] ), .B2(n586), .X(n405) );
  STP_AOAI211_0P5 U357 ( .A1(n658), .A2(n657), .B(n656), .C(n655), .X(n660) );
  STP_AOI22_0P5 U358 ( .A1(\weight_i[5][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[5][11] ), .X(n655) );
  STP_INV_S_0P65 U359 ( .A(\weight_i[11][13] ), .X(n21) );
  STP_AOI21_0P75 U360 ( .A1(n352), .A2(n351), .B(n350), .X(n353) );
  STP_OAI22_V3S_1 U361 ( .A1(n573), .A2(n572), .B1(\th[1][7] ), .B2(n571), .X(
        n648) );
  STP_INV_S_0P65 U362 ( .A(\weight_i[3][14] ), .X(n571) );
  STP_NR4_0P5 U363 ( .A1(n143), .A2(n144), .A3(n147), .A4(n142), .X(n152) );
  STP_AOI21_0P75 U364 ( .A1(\th[2][7] ), .A2(n126), .B(n220), .X(n221) );
  STP_OAI211_0P5 U365 ( .A1(n43), .A2(n42), .B1(write_enable_i), .B2(n40), .X(
        n41) );
  STP_INV_S_1 U366 ( .A(addr_i[1]), .X(n43) );
  STP_AOI21_0P75 U367 ( .A1(\th[2][7] ), .A2(n329), .B(n328), .X(n330) );
  STP_INV_S_0P65 U368 ( .A(\weight_i[6][14] ), .X(n329) );
  STP_INV_2 U369 ( .A(\th[1][3] ), .X(n561) );
  STP_INV_2 U370 ( .A(\th[0][1] ), .X(n393) );
  STP_INV_S_1 U371 ( .A(\th[2][5] ), .X(n722) );
  STP_INV_2 U372 ( .A(n532), .X(n570) );
  STP_MUX2_S_0P5 U373 ( .D0(\th[2][2] ), .D1(data_i[2]), .S(n590), .X(n551) );
  STP_MUXI2_MG_0P5 U374 ( .D0(n53), .D1(n2), .S(n50), .X(n547) );
  STP_MUXI2_MG_0P5 U375 ( .D0(n690), .D1(n51), .S(n590), .X(n550) );
  STP_MUXI2_MG_0P5 U376 ( .D0(n49), .D1(n48), .S(n50), .X(n541) );
  STP_INV_S_0P65 U377 ( .A(data_i[0]), .X(n49) );
  STP_MUXI2_MG_0P5 U378 ( .D0(n51), .D1(n380), .S(n50), .X(n542) );
  STP_MUXI2_MG_0P5 U379 ( .D0(n591), .D1(n561), .S(n50), .X(n544) );
  STP_MUXI2_MG_0P5 U380 ( .D0(n54), .D1(n531), .S(n50), .X(n545) );
  STP_MUXI2_MG_0P5 U381 ( .D0(n730), .D1(n46), .S(n590), .X(n556) );
  STP_MUXI2_MG_0P5 U382 ( .D0(n393), .D1(n51), .S(n55), .X(n534) );
  STP_MUXI2_MG_0P5 U383 ( .D0(n577), .D1(n591), .S(n55), .X(n536) );
  STP_MUXI2_MG_0P5 U384 ( .D0(n722), .D1(n52), .S(n590), .X(n554) );
  STP_MUXI2_MG_0P5 U385 ( .D0(n721), .D1(n54), .S(n590), .X(n553) );
  STP_MUXI2_MG_0P5 U386 ( .D0(n52), .D1(n570), .S(n50), .X(n546) );
  STP_MUXI2_MG_0P5 U387 ( .D0(n586), .D1(n53), .S(n55), .X(n539) );
  STP_MUXI2_MG_0P5 U388 ( .D0(n518), .D1(n52), .S(n55), .X(n538) );
  STP_MUXI2_MG_0P5 U389 ( .D0(n400), .D1(n54), .S(n55), .X(n537) );
  STP_MUX2_S_0P5 U390 ( .D0(\th[0][0] ), .D1(data_i[0]), .S(n55), .X(n533) );
  STP_MUX2_S_0P5 U391 ( .D0(\th[2][0] ), .D1(data_i[0]), .S(n590), .X(n549) );
  STP_MUXI2_MG_0P5 U392 ( .D0(n705), .D1(n53), .S(n590), .X(n555) );
  STP_MUXI2_MG_0P5 U393 ( .D0(n46), .D1(n512), .S(n50), .X(n548) );
  STP_MUXI2_MG_0P5 U394 ( .D0(n589), .D1(n46), .S(n55), .X(n540) );
  STP_MUXI2_MG_0P5 U395 ( .D0(n47), .D1(n557), .S(n50), .X(n543) );
  STP_INV_S_0P65 U396 ( .A(data_i[2]), .X(n47) );
  STP_MUXI2_MG_0P5 U397 ( .D0(n720), .D1(n591), .S(n590), .X(n552) );
  STP_MUX2_S_0P5 U398 ( .D0(\th[0][2] ), .D1(data_i[2]), .S(n55), .X(n535) );
  STP_OAI21_0P75 U399 ( .A1(n380), .A2(\weight_i[0][8] ), .B(\weight_i[0][7] ), 
        .X(n272) );
  STP_AOI31_0P5 U400 ( .A1(n170), .A2(\th[1][2] ), .A3(n592), .B(n169), .X(
        n171) );
  STP_AOAI211_0P5 U401 ( .A1(n393), .A2(\weight_i[14][8] ), .B(n574), .C(
        \weight_i[14][9] ), .X(n155) );
  STP_AOAI211_0P5 U402 ( .A1(n598), .A2(n597), .B(n596), .C(n595), .X(n602) );
  STP_AOAI211_0P5 U403 ( .A1(n19), .A2(n18), .B(n17), .C(n16), .X(n23) );
  STP_AOI22_0P5 U404 ( .A1(n155), .A2(n154), .B1(\th[0][2] ), .B2(n691), .X(
        n158) );
  STP_NR2_G_0P5 U405 ( .A1(n730), .A2(\weight_i[9][14] ), .X(n676) );
  STP_AOAI211_0P5 U406 ( .A1(n734), .A2(n733), .B(n732), .C(n731), .X(n736) );
  STP_AOI211_0P5 U407 ( .A1(\weight_i[11][9] ), .A2(n557), .B1(n5), .B2(n383), 
        .X(n9) );
  STP_INV_2 U408 ( .A(\th[1][4] ), .X(n531) );
  STP_AOI22_0P5 U409 ( .A1(\weight_i[11][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[11][10] ), .X(n7) );
  STP_OAI22_V3S_1 U410 ( .A1(\weight_i[11][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[11][11] ), .X(n6) );
  STP_OAO211_DG_1 U411 ( .A1(n9), .A2(n8), .B(n7), .C(n6), .X(n12) );
  STP_AOI22_0P5 U412 ( .A1(\weight_i[11][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[11][12] ), .X(n11) );
  STP_INV_S_1 U413 ( .A(\th[2][0] ), .X(n689) );
  STP_INV_S_0P65 U414 ( .A(\weight_i[11][9] ), .X(n27) );
  STP_INV_S_1 U415 ( .A(\th[2][3] ), .X(n720) );
  STP_AOI22_0P5 U416 ( .A1(n3), .A2(\weight_i[11][8] ), .B1(n720), .B2(
        \weight_i[11][10] ), .X(n18) );
  STP_AOI22_0P5 U417 ( .A1(\weight_i[11][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[11][11] ), .X(n16) );
  STP_AOI22_0P5 U418 ( .A1(\th[2][6] ), .A2(n21), .B1(\th[2][5] ), .B2(n20), 
        .X(n22) );
  STP_AOI22_0P5 U419 ( .A1(n23), .A2(n22), .B1(\weight_i[11][13] ), .B2(n705), 
        .X(n24) );
  STP_INV_2 U420 ( .A(\th[0][2] ), .X(n574) );
  STP_INV_S_1 U421 ( .A(\th[0][0] ), .X(n394) );
  STP_AOI22_0P5 U422 ( .A1(n29), .A2(n28), .B1(\th[0][2] ), .B2(n27), .X(n32)
         );
  STP_NR2_G_0P5 U423 ( .A1(n580), .A2(n30), .X(n31) );
  STP_AOI211_0P5 U424 ( .A1(\weight_i[11][10] ), .A2(n577), .B1(n32), .B2(n31), 
        .X(n36) );
  STP_INV_S_1 U425 ( .A(\th[0][5] ), .X(n518) );
  STP_AOI22_0P5 U426 ( .A1(\weight_i[11][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[11][11] ), .X(n34) );
  STP_OAOI211_0P5 U427 ( .A1(n36), .A2(n35), .B(n34), .C(n33), .X(n38) );
  STP_NR3_G_1 U428 ( .A1(addr_i[3]), .A2(addr_i[2]), .A3(n41), .X(n45) );
  STP_ND2_G_1 U429 ( .A1(n45), .A2(addr_i[0]), .X(n50) );
  STP_INV_S_0P65 U430 ( .A(\weight_i[7][7] ), .X(n192) );
  STP_OA2BB2_1 U431 ( .A1(\weight_i[7][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n192), .X(n57) );
  STP_AO2BB2_0P5 U432 ( .A1(\weight_i[7][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n59), .X(n56) );
  STP_AOI31_0P5 U433 ( .A1(n58), .A2(n57), .A3(n528), .B(n56), .X(n66) );
  STP_OAI22_V3S_1 U434 ( .A1(\th[1][4] ), .A2(n60), .B1(\th[1][3] ), .B2(n59), 
        .X(n65) );
  STP_AOI22_0P5 U435 ( .A1(n532), .A2(n61), .B1(\th[1][4] ), .B2(n60), .X(n64)
         );
  STP_OAOI211_0P5 U436 ( .A1(n66), .A2(n65), .B(n64), .C(n63), .X(n69) );
  STP_AO2BB2_0P5 U437 ( .A1(n2), .A2(\weight_i[7][13] ), .B1(\th[1][7] ), .B2(
        n67), .X(n68) );
  STP_OA22_DG_1 U438 ( .A1(n69), .A2(n68), .B1(\th[1][7] ), .B2(n67), .X(n204)
         );
  STP_INV_S_0P65 U439 ( .A(\weight_i[7][9] ), .X(n191) );
  STP_OAOI211_0P5 U440 ( .A1(\th[0][1] ), .A2(n193), .B(\th[0][2] ), .C(n191), 
        .X(n71) );
  STP_AOI22_0P5 U441 ( .A1(\th[0][0] ), .A2(n192), .B1(\th[0][1] ), .B2(n193), 
        .X(n70) );
  STP_AOI22_0P5 U442 ( .A1(\th[0][4] ), .A2(n60), .B1(\th[0][3] ), .B2(n59), 
        .X(n76) );
  STP_AO2BB2_0P5 U443 ( .A1(\th[0][4] ), .A2(n60), .B1(n518), .B2(
        \weight_i[7][12] ), .X(n75) );
  STP_AOI22_0P5 U444 ( .A1(\th[0][6] ), .A2(n62), .B1(\th[0][5] ), .B2(n61), 
        .X(n74) );
  STP_AOAI211_0P5 U445 ( .A1(n77), .A2(n76), .B(n75), .C(n74), .X(n79) );
  STP_AOI22_0P5 U446 ( .A1(n589), .A2(\weight_i[7][14] ), .B1(n586), .B2(
        \weight_i[7][13] ), .X(n78) );
  STP_AO2BB2_0P5 U447 ( .A1(\weight_i[7][14] ), .A2(n589), .B1(n79), .B2(n78), 
        .X(n205) );
  STP_INV_S_0P65 U448 ( .A(\weight_i[1][7] ), .X(n105) );
  STP_OA2BB2_1 U449 ( .A1(\weight_i[1][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n105), .X(n81) );
  STP_AO2BB2_0P5 U450 ( .A1(\weight_i[1][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n83), .X(n80) );
  STP_AOI31_0P5 U451 ( .A1(n82), .A2(n81), .A3(n528), .B(n80), .X(n90) );
  STP_OAI22_V3S_1 U452 ( .A1(\th[1][4] ), .A2(n84), .B1(\th[1][3] ), .B2(n83), 
        .X(n89) );
  STP_AOI22_0P5 U453 ( .A1(n532), .A2(n85), .B1(\th[1][4] ), .B2(n84), .X(n88)
         );
  STP_OAOI211_0P5 U454 ( .A1(n90), .A2(n89), .B(n88), .C(n87), .X(n93) );
  STP_AO2BB2_0P5 U455 ( .A1(n2), .A2(\weight_i[1][13] ), .B1(\th[1][7] ), .B2(
        n91), .X(n92) );
  STP_OA22_DG_1 U456 ( .A1(n93), .A2(n92), .B1(\th[1][7] ), .B2(n91), .X(n436)
         );
  STP_INV_S_0P65 U457 ( .A(\weight_i[1][9] ), .X(n104) );
  STP_OAOI211_0P5 U458 ( .A1(\th[2][1] ), .A2(n110), .B(\th[2][2] ), .C(n104), 
        .X(n95) );
  STP_AOI22_0P5 U459 ( .A1(\th[2][1] ), .A2(n110), .B1(\th[2][0] ), .B2(n105), 
        .X(n94) );
  STP_AOI22_0P5 U460 ( .A1(n3), .A2(\weight_i[1][8] ), .B1(n720), .B2(
        \weight_i[1][10] ), .X(n98) );
  STP_AO2BB2_0P5 U461 ( .A1(\weight_i[1][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n84), .X(n97) );
  STP_AOI22_0P5 U462 ( .A1(\weight_i[1][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[1][11] ), .X(n96) );
  STP_AOAI211_0P5 U463 ( .A1(n99), .A2(n98), .B(n97), .C(n96), .X(n101) );
  STP_AOI22_0P5 U464 ( .A1(\th[2][6] ), .A2(n86), .B1(\th[2][5] ), .B2(n85), 
        .X(n100) );
  STP_AOI22_0P5 U465 ( .A1(n101), .A2(n100), .B1(n705), .B2(\weight_i[1][13] ), 
        .X(n102) );
  STP_OAOI211_0P5 U466 ( .A1(\th[0][1] ), .A2(n110), .B(\th[0][2] ), .C(n104), 
        .X(n107) );
  STP_AOI22_0P5 U467 ( .A1(\th[0][0] ), .A2(n105), .B1(\th[0][1] ), .B2(n110), 
        .X(n106) );
  STP_AOI22_0P5 U468 ( .A1(\th[0][4] ), .A2(n84), .B1(\th[0][3] ), .B2(n83), 
        .X(n113) );
  STP_AO2BB2_0P5 U469 ( .A1(\th[0][4] ), .A2(n84), .B1(n518), .B2(
        \weight_i[1][12] ), .X(n112) );
  STP_AOI22_0P5 U470 ( .A1(\th[0][6] ), .A2(n86), .B1(\th[0][5] ), .B2(n85), 
        .X(n111) );
  STP_AOAI211_0P5 U471 ( .A1(n114), .A2(n113), .B(n112), .C(n111), .X(n116) );
  STP_AOI22_0P5 U472 ( .A1(n589), .A2(\weight_i[1][14] ), .B1(n586), .B2(
        \weight_i[1][13] ), .X(n115) );
  STP_AO2BB2_0P5 U473 ( .A1(\weight_i[1][14] ), .A2(n589), .B1(n116), .B2(n115), .X(n435) );
  STP_INV_S_0P65 U474 ( .A(\weight_i[4][7] ), .X(n208) );
  STP_OA2BB2_1 U475 ( .A1(\weight_i[4][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n208), .X(n119) );
  STP_AO2BB2_0P5 U476 ( .A1(\weight_i[4][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n133), .X(n118) );
  STP_AOI31_0P5 U477 ( .A1(n120), .A2(n119), .A3(n528), .B(n118), .X(n125) );
  STP_OAI22_V3S_1 U478 ( .A1(\th[1][4] ), .A2(n212), .B1(\th[1][3] ), .B2(n133), .X(n124) );
  STP_AOI22_0P5 U479 ( .A1(n532), .A2(n121), .B1(\th[1][4] ), .B2(n212), .X(
        n123) );
  STP_OAOI211_0P5 U480 ( .A1(n125), .A2(n124), .B(n123), .C(n122), .X(n128) );
  STP_AO2BB2_0P5 U481 ( .A1(n2), .A2(\weight_i[4][13] ), .B1(\th[1][7] ), .B2(
        n126), .X(n127) );
  STP_OA22_DG_1 U482 ( .A1(n128), .A2(n127), .B1(\th[1][7] ), .B2(n126), .X(
        n222) );
  STP_INV_S_0P65 U483 ( .A(\weight_i[4][9] ), .X(n207) );
  STP_OAOI211_0P5 U484 ( .A1(\th[0][1] ), .A2(n209), .B(\th[0][2] ), .C(n207), 
        .X(n130) );
  STP_AOI22_0P5 U485 ( .A1(\th[0][0] ), .A2(n208), .B1(\th[0][1] ), .B2(n209), 
        .X(n129) );
  STP_AOI22_0P5 U486 ( .A1(\th[0][4] ), .A2(n212), .B1(\th[0][3] ), .B2(n133), 
        .X(n136) );
  STP_AO2BB2_0P5 U487 ( .A1(\th[0][4] ), .A2(n212), .B1(n518), .B2(
        \weight_i[4][12] ), .X(n135) );
  STP_AOI22_0P5 U488 ( .A1(\th[0][6] ), .A2(n217), .B1(\th[0][5] ), .B2(n121), 
        .X(n134) );
  STP_AOAI211_0P5 U489 ( .A1(n137), .A2(n136), .B(n135), .C(n134), .X(n139) );
  STP_AOI22_0P5 U490 ( .A1(n589), .A2(\weight_i[4][14] ), .B1(n586), .B2(
        \weight_i[4][13] ), .X(n138) );
  STP_AO2BB2_0P5 U491 ( .A1(\weight_i[4][14] ), .A2(n589), .B1(n139), .B2(n138), .X(n223) );
  STP_NR2B_1 U492 ( .A(n532), .B(\weight_i[14][12] ), .X(n147) );
  STP_INV_S_0P65 U493 ( .A(n144), .X(n145) );
  STP_AOI22_0P5 U494 ( .A1(\weight_i[14][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[14][12] ), .X(n146) );
  STP_AOAI211_0P5 U495 ( .A1(n149), .A2(n148), .B(n147), .C(n146), .X(n151) );
  STP_AOI21_0P75 U496 ( .A1(\weight_i[14][14] ), .A2(n512), .B(n153), .X(n709)
         );
  STP_INV_S_0P65 U497 ( .A(\weight_i[14][9] ), .X(n691) );
  STP_NR2_G_0P5 U498 ( .A1(n580), .A2(n156), .X(n157) );
  STP_AOI211_0P5 U499 ( .A1(\weight_i[14][10] ), .A2(n577), .B1(n158), .B2(
        n157), .X(n162) );
  STP_AOI22_0P5 U500 ( .A1(\weight_i[14][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[14][11] ), .X(n160) );
  STP_NR2_G_0P5 U501 ( .A1(n709), .A2(n710), .X(\symbol_o[7][1] ) );
  STP_OAOI211_0P5 U502 ( .A1(\weight_i[8][8] ), .A2(n380), .B(\weight_i[8][7] ), .C(n383), .X(n167) );
  STP_INV_S_0P65 U503 ( .A(\weight_i[8][10] ), .X(n165) );
  STP_NR2_G_0P5 U504 ( .A1(\th[1][3] ), .A2(n165), .X(n168) );
  STP_OAI211_1 U505 ( .A1(n382), .A2(n180), .B1(n167), .B2(n166), .X(n172) );
  STP_INV_S_0P65 U506 ( .A(n168), .X(n170) );
  STP_AOI22_1 U507 ( .A1(n172), .A2(n171), .B1(\weight_i[8][11] ), .B2(n531), 
        .X(n176) );
  STP_OAI22_V3S_1 U508 ( .A1(\weight_i[8][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[8][11] ), .X(n175) );
  STP_AOI22_0P5 U509 ( .A1(\weight_i[8][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[8][12] ), .X(n174) );
  STP_AOI21_0P75 U510 ( .A1(\weight_i[8][14] ), .A2(n512), .B(n177), .X(n605)
         );
  STP_AOI22_0P5 U511 ( .A1(n179), .A2(n178), .B1(\th[0][2] ), .B2(n592), .X(
        n182) );
  STP_NR2_G_0P5 U512 ( .A1(n580), .A2(n180), .X(n181) );
  STP_AOI211_0P5 U513 ( .A1(\weight_i[8][10] ), .A2(n577), .B1(n182), .B2(n181), .X(n186) );
  STP_AOI22_0P5 U514 ( .A1(\weight_i[8][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[8][11] ), .X(n184) );
  STP_OAOI211_0P5 U515 ( .A1(n186), .A2(n185), .B(n184), .C(n183), .X(n188) );
  STP_OAOI211_0P5 U516 ( .A1(\th[2][1] ), .A2(n193), .B(\th[2][2] ), .C(n191), 
        .X(n195) );
  STP_AOI22_0P5 U517 ( .A1(\th[2][1] ), .A2(n193), .B1(\th[2][0] ), .B2(n192), 
        .X(n194) );
  STP_AOI22_0P5 U518 ( .A1(n3), .A2(\weight_i[7][8] ), .B1(n720), .B2(
        \weight_i[7][10] ), .X(n198) );
  STP_AO2BB2_0P5 U519 ( .A1(\weight_i[7][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n60), .X(n197) );
  STP_AOI22_0P5 U520 ( .A1(\weight_i[7][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[7][11] ), .X(n196) );
  STP_AOAI211_0P5 U521 ( .A1(n199), .A2(n198), .B(n197), .C(n196), .X(n201) );
  STP_AOI22_0P5 U522 ( .A1(\th[2][6] ), .A2(n62), .B1(\th[2][5] ), .B2(n61), 
        .X(n200) );
  STP_AOI22_0P5 U523 ( .A1(n201), .A2(n200), .B1(n705), .B2(\weight_i[7][13] ), 
        .X(n202) );
  STP_OAOI211_0P5 U524 ( .A1(\th[2][1] ), .A2(n209), .B(\th[2][2] ), .C(n207), 
        .X(n211) );
  STP_AOI22_0P5 U525 ( .A1(\th[2][1] ), .A2(n209), .B1(\th[2][0] ), .B2(n208), 
        .X(n210) );
  STP_AOI22_0P5 U526 ( .A1(n3), .A2(\weight_i[4][8] ), .B1(n720), .B2(
        \weight_i[4][10] ), .X(n215) );
  STP_AO2BB2_0P5 U527 ( .A1(\weight_i[4][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n212), .X(n214) );
  STP_AOI22_0P5 U528 ( .A1(\weight_i[4][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[4][11] ), .X(n213) );
  STP_AOAI211_0P5 U529 ( .A1(n216), .A2(n215), .B(n214), .C(n213), .X(n219) );
  STP_AOI22_0P5 U530 ( .A1(\th[2][6] ), .A2(n217), .B1(\th[2][5] ), .B2(n121), 
        .X(n218) );
  STP_AOI22_0P5 U531 ( .A1(n219), .A2(n218), .B1(n705), .B2(\weight_i[4][13] ), 
        .X(n220) );
  STP_INV_S_0P65 U532 ( .A(\weight_i[12][7] ), .X(n438) );
  STP_OA2BB2_1 U533 ( .A1(\weight_i[12][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n438), .X(n226) );
  STP_AO2BB2_0P5 U534 ( .A1(\weight_i[12][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n228), .X(n225) );
  STP_AOI31_0P5 U535 ( .A1(n227), .A2(n226), .A3(n528), .B(n225), .X(n234) );
  STP_OAI22_V3S_1 U536 ( .A1(\th[1][4] ), .A2(n442), .B1(\th[1][3] ), .B2(n228), .X(n233) );
  STP_AOI22_0P5 U537 ( .A1(n532), .A2(n229), .B1(\th[1][4] ), .B2(n442), .X(
        n232) );
  STP_OAOI211_0P5 U538 ( .A1(n234), .A2(n233), .B(n232), .C(n231), .X(n237) );
  STP_AO2BB2_0P5 U539 ( .A1(n2), .A2(\weight_i[12][13] ), .B1(\th[1][7] ), 
        .B2(n235), .X(n236) );
  STP_OA22_DG_1 U540 ( .A1(n237), .A2(n236), .B1(\th[1][7] ), .B2(n235), .X(
        n451) );
  STP_INV_S_0P65 U541 ( .A(\weight_i[12][9] ), .X(n437) );
  STP_OAOI211_0P5 U542 ( .A1(\th[0][1] ), .A2(n439), .B(\th[0][2] ), .C(n437), 
        .X(n239) );
  STP_AOI22_0P5 U543 ( .A1(\th[0][0] ), .A2(n438), .B1(\th[0][1] ), .B2(n439), 
        .X(n238) );
  STP_AOI22_0P5 U544 ( .A1(\th[0][4] ), .A2(n442), .B1(\th[0][3] ), .B2(n228), 
        .X(n244) );
  STP_AO2BB2_0P5 U545 ( .A1(\th[0][4] ), .A2(n442), .B1(n518), .B2(
        \weight_i[12][12] ), .X(n243) );
  STP_AOI22_0P5 U546 ( .A1(\th[0][6] ), .A2(n230), .B1(\th[0][5] ), .B2(n229), 
        .X(n242) );
  STP_AOAI211_0P5 U547 ( .A1(n245), .A2(n244), .B(n243), .C(n242), .X(n247) );
  STP_AOI22_0P5 U548 ( .A1(n589), .A2(\weight_i[12][14] ), .B1(n586), .B2(
        \weight_i[12][13] ), .X(n246) );
  STP_AO2BB2_0P5 U549 ( .A1(\weight_i[12][14] ), .A2(n589), .B1(n247), .B2(
        n246), .X(n452) );
  STP_INV_S_0P65 U550 ( .A(\weight_i[10][7] ), .X(n455) );
  STP_OA2BB2_1 U551 ( .A1(\weight_i[10][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n455), .X(n249) );
  STP_AO2BB2_0P5 U552 ( .A1(\weight_i[10][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n251), .X(n248) );
  STP_AOI31_0P5 U553 ( .A1(n250), .A2(n249), .A3(n528), .B(n248), .X(n258) );
  STP_OAI22_V3S_1 U554 ( .A1(\th[1][4] ), .A2(n252), .B1(\th[1][3] ), .B2(n251), .X(n257) );
  STP_AOI22_0P5 U555 ( .A1(n532), .A2(n253), .B1(\th[1][4] ), .B2(n252), .X(
        n256) );
  STP_OAOI211_0P5 U556 ( .A1(n258), .A2(n257), .B(n256), .C(n255), .X(n261) );
  STP_AO2BB2_0P5 U557 ( .A1(n2), .A2(\weight_i[10][13] ), .B1(\th[1][7] ), 
        .B2(n259), .X(n260) );
  STP_INV_S_0P65 U558 ( .A(\weight_i[10][9] ), .X(n454) );
  STP_OAOI211_0P5 U559 ( .A1(\th[0][1] ), .A2(n456), .B(\th[0][2] ), .C(n454), 
        .X(n263) );
  STP_AOI22_0P5 U560 ( .A1(\th[0][0] ), .A2(n455), .B1(\th[0][1] ), .B2(n456), 
        .X(n262) );
  STP_AOI22_0P5 U561 ( .A1(\th[0][4] ), .A2(n252), .B1(\th[0][3] ), .B2(n251), 
        .X(n268) );
  STP_AO2BB2_0P5 U562 ( .A1(\th[0][4] ), .A2(n252), .B1(n518), .B2(
        \weight_i[10][12] ), .X(n267) );
  STP_AOI22_0P5 U563 ( .A1(\th[0][6] ), .A2(n254), .B1(\th[0][5] ), .B2(n253), 
        .X(n266) );
  STP_AOAI211_0P5 U564 ( .A1(n269), .A2(n268), .B(n267), .C(n266), .X(n271) );
  STP_AOI22_0P5 U565 ( .A1(n589), .A2(\weight_i[10][14] ), .B1(n586), .B2(
        \weight_i[10][13] ), .X(n270) );
  STP_AO2BB2_0P5 U566 ( .A1(\weight_i[10][14] ), .A2(n589), .B1(n271), .B2(
        n270), .X(n468) );
  STP_INV_S_0P65 U567 ( .A(\weight_i[0][8] ), .X(n298) );
  STP_AOI211_G_1 U568 ( .A1(\weight_i[0][9] ), .A2(n557), .B1(n273), .B2(n383), 
        .X(n277) );
  STP_AOI22_0P5 U569 ( .A1(\weight_i[0][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[0][10] ), .X(n275) );
  STP_OAI22_V3S_1 U570 ( .A1(\weight_i[0][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[0][11] ), .X(n274) );
  STP_AOI22_0P5 U571 ( .A1(\weight_i[0][12] ), .A2(n570), .B1(n2), .B2(
        \weight_i[0][13] ), .X(n279) );
  STP_OAI22_0P5 U572 ( .A1(n690), .A2(\weight_i[0][8] ), .B1(n689), .B2(
        \weight_i[0][7] ), .X(n282) );
  STP_INV_S_0P65 U573 ( .A(\weight_i[0][9] ), .X(n295) );
  STP_AOI22_0P5 U574 ( .A1(n3), .A2(\weight_i[0][8] ), .B1(n720), .B2(
        \weight_i[0][10] ), .X(n286) );
  STP_AOI22_0P5 U575 ( .A1(\weight_i[0][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[0][11] ), .X(n284) );
  STP_AOAI211_0P5 U576 ( .A1(n287), .A2(n286), .B(n285), .C(n284), .X(n291) );
  STP_INV_S_0P65 U577 ( .A(\weight_i[0][13] ), .X(n289) );
  STP_INV_S_0P65 U578 ( .A(\weight_i[0][12] ), .X(n288) );
  STP_AOI22_0P5 U579 ( .A1(\th[2][6] ), .A2(n289), .B1(\th[2][5] ), .B2(n288), 
        .X(n290) );
  STP_AOI22_0P5 U580 ( .A1(n291), .A2(n290), .B1(\weight_i[0][13] ), .B2(n705), 
        .X(n292) );
  STP_AOI22_0P5 U581 ( .A1(n297), .A2(n296), .B1(\th[0][2] ), .B2(n295), .X(
        n300) );
  STP_NR2_G_0P5 U582 ( .A1(n580), .A2(n298), .X(n299) );
  STP_AOI211_0P5 U583 ( .A1(\weight_i[0][10] ), .A2(n577), .B1(n300), .B2(n299), .X(n304) );
  STP_AOI22_0P5 U584 ( .A1(\weight_i[0][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[0][11] ), .X(n302) );
  STP_OAOI211_1 U585 ( .A1(n304), .A2(n303), .B(n302), .C(n301), .X(n306) );
  STP_AO22_0P5 U586 ( .A1(n589), .A2(\weight_i[0][14] ), .B1(\weight_i[0][13] ), .B2(n586), .X(n305) );
  STP_AOI211_0P5 U587 ( .A1(\weight_i[6][9] ), .A2(n557), .B1(n309), .B2(n383), 
        .X(n313) );
  STP_AOI22_0P5 U588 ( .A1(\weight_i[6][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[6][10] ), .X(n311) );
  STP_OAO211_DG_1 U589 ( .A1(n313), .A2(n312), .B(n311), .C(n310), .X(n316) );
  STP_AOI22_0P5 U590 ( .A1(\weight_i[6][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[6][12] ), .X(n315) );
  STP_AOI21_1 U591 ( .A1(n316), .A2(n315), .B(n314), .X(n317) );
  STP_AOAI211_0P5 U592 ( .A1(n690), .A2(\weight_i[6][8] ), .B(n717), .C(
        \weight_i[6][9] ), .X(n319) );
  STP_OAI22_0P5 U593 ( .A1(n690), .A2(\weight_i[6][8] ), .B1(n689), .B2(
        \weight_i[6][7] ), .X(n318) );
  STP_INV_S_0P65 U594 ( .A(\weight_i[6][9] ), .X(n331) );
  STP_AOI22_0P5 U595 ( .A1(n3), .A2(\weight_i[6][8] ), .B1(n720), .B2(
        \weight_i[6][10] ), .X(n322) );
  STP_AOI22_0P5 U596 ( .A1(\weight_i[6][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[6][11] ), .X(n320) );
  STP_AOAI211_0P5 U597 ( .A1(n323), .A2(n322), .B(n321), .C(n320), .X(n327) );
  STP_INV_S_0P65 U598 ( .A(\weight_i[6][13] ), .X(n325) );
  STP_INV_S_0P65 U599 ( .A(\weight_i[6][12] ), .X(n324) );
  STP_AOI22_0P5 U600 ( .A1(\th[2][6] ), .A2(n325), .B1(\th[2][5] ), .B2(n324), 
        .X(n326) );
  STP_AOI22_0P5 U601 ( .A1(n327), .A2(n326), .B1(\weight_i[6][13] ), .B2(n705), 
        .X(n328) );
  STP_AOI211_0P5 U602 ( .A1(\weight_i[6][14] ), .A2(n730), .B1(n471), .B2(n330), .X(n343) );
  STP_AOI22_0P5 U603 ( .A1(n333), .A2(n332), .B1(\th[0][2] ), .B2(n331), .X(
        n336) );
  STP_NR2_G_0P5 U604 ( .A1(n580), .A2(n334), .X(n335) );
  STP_AOI211_0P5 U605 ( .A1(\weight_i[6][10] ), .A2(n577), .B1(n336), .B2(n335), .X(n340) );
  STP_AOI22_0P5 U606 ( .A1(\weight_i[6][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[6][11] ), .X(n338) );
  STP_OAOI211_0P5 U607 ( .A1(n340), .A2(n339), .B(n338), .C(n337), .X(n342) );
  STP_NR2_G_0P5 U608 ( .A1(n343), .A2(n470), .X(\symbol_o[3][0] ) );
  STP_AOI211_0P5 U609 ( .A1(\weight_i[13][9] ), .A2(n557), .B1(n345), .B2(n383), .X(n349) );
  STP_AOI22_0P5 U610 ( .A1(\weight_i[13][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[13][10] ), .X(n347) );
  STP_OAI22_V3S_1 U611 ( .A1(\weight_i[13][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[13][11] ), .X(n346) );
  STP_OAO211_DG_1 U612 ( .A1(n349), .A2(n348), .B(n347), .C(n346), .X(n352) );
  STP_AOI22_0P5 U613 ( .A1(\weight_i[13][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[13][12] ), .X(n351) );
  STP_OAI22_0P5 U614 ( .A1(n690), .A2(\weight_i[13][8] ), .B1(n689), .B2(
        \weight_i[13][7] ), .X(n355) );
  STP_INV_S_0P65 U615 ( .A(\weight_i[13][9] ), .X(n367) );
  STP_AOI22_0P5 U616 ( .A1(n3), .A2(\weight_i[13][8] ), .B1(n720), .B2(
        \weight_i[13][10] ), .X(n359) );
  STP_AOI22_0P5 U617 ( .A1(\weight_i[13][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[13][11] ), .X(n357) );
  STP_AOAI211_0P5 U618 ( .A1(n360), .A2(n359), .B(n358), .C(n357), .X(n364) );
  STP_INV_S_0P65 U619 ( .A(\weight_i[13][13] ), .X(n362) );
  STP_INV_S_0P65 U620 ( .A(\weight_i[13][12] ), .X(n361) );
  STP_AOI22_0P5 U621 ( .A1(\th[2][6] ), .A2(n362), .B1(\th[2][5] ), .B2(n361), 
        .X(n363) );
  STP_AOI22_0P5 U622 ( .A1(n364), .A2(n363), .B1(\weight_i[13][13] ), .B2(n705), .X(n365) );
  STP_AOI22_0P5 U623 ( .A1(n369), .A2(n368), .B1(\th[0][2] ), .B2(n367), .X(
        n372) );
  STP_NR2_G_0P5 U624 ( .A1(n580), .A2(n370), .X(n371) );
  STP_AOI211_0P5 U625 ( .A1(\weight_i[13][10] ), .A2(n577), .B1(n372), .B2(
        n371), .X(n376) );
  STP_AOI22_0P5 U626 ( .A1(\weight_i[13][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[13][11] ), .X(n374) );
  STP_AO22_1 U627 ( .A1(n589), .A2(\weight_i[13][14] ), .B1(\weight_i[13][13] ), .B2(n586), .X(n377) );
  STP_AOI211_0P5 U628 ( .A1(\weight_i[2][9] ), .A2(n557), .B1(n384), .B2(n383), 
        .X(n388) );
  STP_AOI22_0P5 U629 ( .A1(\weight_i[2][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[2][10] ), .X(n386) );
  STP_OAI22_V3S_1 U630 ( .A1(\weight_i[2][12] ), .A2(n570), .B1(n531), .B2(
        \weight_i[2][11] ), .X(n385) );
  STP_OAO211_DG_1 U631 ( .A1(n388), .A2(n387), .B(n386), .C(n385), .X(n391) );
  STP_AOI22_0P5 U632 ( .A1(\weight_i[2][13] ), .A2(n2), .B1(n570), .B2(
        \weight_i[2][12] ), .X(n390) );
  STP_INV_S_0P65 U633 ( .A(\weight_i[2][9] ), .X(n611) );
  STP_AOI22_0P5 U634 ( .A1(n396), .A2(n395), .B1(\th[0][2] ), .B2(n611), .X(
        n399) );
  STP_NR2_G_0P5 U635 ( .A1(n580), .A2(n397), .X(n398) );
  STP_AOI211_0P5 U636 ( .A1(\weight_i[2][10] ), .A2(n577), .B1(n399), .B2(n398), .X(n404) );
  STP_AOI22_0P5 U637 ( .A1(\weight_i[2][12] ), .A2(n518), .B1(n400), .B2(
        \weight_i[2][11] ), .X(n402) );
  STP_OAOI211_0P5 U638 ( .A1(n404), .A2(n403), .B(n402), .C(n401), .X(n406) );
  STP_NR2_G_0P5 U639 ( .A1(n625), .A2(n626), .X(\symbol_o[1][1] ) );
  STP_AOI22_0P5 U640 ( .A1(\th[1][2] ), .A2(n714), .B1(\th[1][3] ), .B2(n411), 
        .X(n410) );
  STP_INV_S_0P65 U641 ( .A(n412), .X(n409) );
  STP_ND3_0P5 U642 ( .A1(n410), .A2(n416), .A3(n409), .X(n420) );
  STP_NR2_G_0P5 U643 ( .A1(\th[1][4] ), .A2(n413), .X(n417) );
  STP_OAOI211_0P5 U644 ( .A1(n418), .A2(n417), .B(n416), .C(n415), .X(n419) );
  STP_NR2B_V1DG_1 U645 ( .A(n423), .B(n512), .X(n728) );
  STP_NR2_G_0P5 U646 ( .A1(\th[1][7] ), .A2(n423), .X(n732) );
  STP_OAOI211_0P5 U647 ( .A1(\th[0][1] ), .A2(n716), .B(\th[0][2] ), .C(n714), 
        .X(n425) );
  STP_AOI22_0P5 U648 ( .A1(\th[0][0] ), .A2(n715), .B1(\th[0][1] ), .B2(n716), 
        .X(n424) );
  STP_AOI22_0P5 U649 ( .A1(\th[0][4] ), .A2(n413), .B1(\th[0][3] ), .B2(n411), 
        .X(n430) );
  STP_AO2BB2_0P5 U650 ( .A1(\th[0][4] ), .A2(n413), .B1(n518), .B2(
        \weight_i[15][12] ), .X(n429) );
  STP_AOI22_0P5 U651 ( .A1(\th[0][6] ), .A2(n422), .B1(\th[0][5] ), .B2(n414), 
        .X(n428) );
  STP_AOAI211_0P5 U652 ( .A1(n431), .A2(n430), .B(n429), .C(n428), .X(n433) );
  STP_AOI22_0P5 U653 ( .A1(n589), .A2(\weight_i[15][14] ), .B1(n586), .B2(
        \weight_i[15][13] ), .X(n432) );
  STP_AOI22_0P5 U654 ( .A1(n433), .A2(n432), .B1(\th[0][7] ), .B2(n423), .X(
        n735) );
  STP_OA21_1 U655 ( .A1(n434), .A2(n732), .B(n735), .X(\symbol_o[7][3] ) );
  STP_OAOI211_0P5 U656 ( .A1(\th[2][1] ), .A2(n439), .B(\th[2][2] ), .C(n437), 
        .X(n441) );
  STP_AOI22_0P5 U657 ( .A1(\th[2][1] ), .A2(n439), .B1(\th[2][0] ), .B2(n438), 
        .X(n440) );
  STP_AOI22_0P5 U658 ( .A1(n3), .A2(\weight_i[12][8] ), .B1(n720), .B2(
        \weight_i[12][10] ), .X(n445) );
  STP_AO2BB2_0P5 U659 ( .A1(\weight_i[12][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n442), .X(n444) );
  STP_AOI22_0P5 U660 ( .A1(\weight_i[12][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[12][11] ), .X(n443) );
  STP_AOAI211_0P5 U661 ( .A1(n446), .A2(n445), .B(n444), .C(n443), .X(n448) );
  STP_AOI22_0P5 U662 ( .A1(\th[2][6] ), .A2(n230), .B1(\th[2][5] ), .B2(n229), 
        .X(n447) );
  STP_AOI22_0P5 U663 ( .A1(n448), .A2(n447), .B1(n705), .B2(\weight_i[12][13] ), .X(n449) );
  STP_OAOI211_0P5 U664 ( .A1(\th[2][1] ), .A2(n456), .B(\th[2][2] ), .C(n454), 
        .X(n458) );
  STP_AOI22_0P5 U665 ( .A1(\th[2][1] ), .A2(n456), .B1(\th[2][0] ), .B2(n455), 
        .X(n457) );
  STP_AOI22_0P5 U666 ( .A1(n3), .A2(\weight_i[10][8] ), .B1(n720), .B2(
        \weight_i[10][10] ), .X(n461) );
  STP_AO2BB2_0P5 U667 ( .A1(\weight_i[10][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n252), .X(n460) );
  STP_AOI22_0P5 U668 ( .A1(\weight_i[10][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[10][11] ), .X(n459) );
  STP_AOAI211_0P5 U669 ( .A1(n462), .A2(n461), .B(n460), .C(n459), .X(n464) );
  STP_AOI22_0P5 U670 ( .A1(\th[2][6] ), .A2(n254), .B1(\th[2][5] ), .B2(n253), 
        .X(n463) );
  STP_AOI22_0P5 U671 ( .A1(n464), .A2(n463), .B1(n705), .B2(\weight_i[10][13] ), .X(n465) );
  STP_NR2_G_0P5 U672 ( .A1(n471), .A2(n470), .X(\symbol_o[3][1] ) );
  STP_INV_S_0P65 U673 ( .A(\weight_i[5][7] ), .X(n651) );
  STP_OA2BB2_1 U674 ( .A1(\weight_i[5][9] ), .A2(n557), .B1(\th[1][1] ), .B2(
        n651), .X(n473) );
  STP_AO2BB2_0P5 U675 ( .A1(\weight_i[5][9] ), .A2(n557), .B1(\th[1][3] ), 
        .B2(n475), .X(n472) );
  STP_AOI31_0P5 U676 ( .A1(n474), .A2(n473), .A3(n528), .B(n472), .X(n482) );
  STP_OAI22_V3S_1 U677 ( .A1(\th[1][4] ), .A2(n476), .B1(\th[1][3] ), .B2(n475), .X(n481) );
  STP_AOI22_0P5 U678 ( .A1(n532), .A2(n477), .B1(\th[1][4] ), .B2(n476), .X(
        n480) );
  STP_OAOI211_0P5 U679 ( .A1(n482), .A2(n481), .B(n480), .C(n479), .X(n485) );
  STP_AO2BB2_0P5 U680 ( .A1(n2), .A2(\weight_i[5][13] ), .B1(\th[1][7] ), .B2(
        n483), .X(n484) );
  STP_OA22_DG_1 U681 ( .A1(n485), .A2(n484), .B1(\th[1][7] ), .B2(n483), .X(
        n663) );
  STP_INV_S_0P65 U682 ( .A(\weight_i[5][9] ), .X(n650) );
  STP_OAOI211_0P5 U683 ( .A1(\th[0][1] ), .A2(n652), .B(\th[0][2] ), .C(n650), 
        .X(n487) );
  STP_AOI22_0P5 U684 ( .A1(\th[0][0] ), .A2(n651), .B1(\th[0][1] ), .B2(n652), 
        .X(n486) );
  STP_AOI22_0P5 U685 ( .A1(\th[0][4] ), .A2(n476), .B1(\th[0][3] ), .B2(n475), 
        .X(n492) );
  STP_AO2BB2_0P5 U686 ( .A1(\th[0][4] ), .A2(n476), .B1(n518), .B2(
        \weight_i[5][12] ), .X(n491) );
  STP_AOI22_0P5 U687 ( .A1(\th[0][6] ), .A2(n478), .B1(\th[0][5] ), .B2(n477), 
        .X(n490) );
  STP_AOAI211_0P5 U688 ( .A1(n493), .A2(n492), .B(n491), .C(n490), .X(n495) );
  STP_AOI22_0P5 U689 ( .A1(n589), .A2(\weight_i[5][14] ), .B1(n586), .B2(
        \weight_i[5][13] ), .X(n494) );
  STP_AO2BB2_0P5 U690 ( .A1(\weight_i[5][14] ), .A2(n589), .B1(n495), .B2(n494), .X(n664) );
  STP_INV_S_0P65 U691 ( .A(\weight_i[9][7] ), .X(n668) );
  STP_AOI22_0P5 U692 ( .A1(\th[1][4] ), .A2(n501), .B1(\th[1][3] ), .B2(n502), 
        .X(n500) );
  STP_OAOI211_0P5 U693 ( .A1(\th[1][3] ), .A2(n502), .B(n501), .C(\th[1][4] ), 
        .X(n507) );
  STP_OAOI211_0P5 U694 ( .A1(n507), .A2(n506), .B(n505), .C(n504), .X(n508) );
  STP_NR2B_V1DG_1 U695 ( .A(n513), .B(n512), .X(n677) );
  STP_AN3B_1 U696 ( .B1(n682), .B2(n681), .A(n677), .X(n525) );
  STP_NR2_G_0P5 U697 ( .A1(\th[1][7] ), .A2(n513), .X(n680) );
  STP_INV_S_0P65 U698 ( .A(\weight_i[9][9] ), .X(n667) );
  STP_OAOI211_0P5 U699 ( .A1(\th[0][1] ), .A2(n669), .B(\th[0][2] ), .C(n667), 
        .X(n515) );
  STP_AOI22_0P5 U700 ( .A1(\th[0][0] ), .A2(n668), .B1(\th[0][1] ), .B2(n669), 
        .X(n514) );
  STP_AOI22_0P5 U701 ( .A1(\th[0][4] ), .A2(n501), .B1(\th[0][3] ), .B2(n502), 
        .X(n521) );
  STP_AO2BB2_0P5 U702 ( .A1(\th[0][4] ), .A2(n501), .B1(n518), .B2(
        \weight_i[9][12] ), .X(n520) );
  STP_AOI22_0P5 U703 ( .A1(\th[0][6] ), .A2(n511), .B1(\th[0][5] ), .B2(n503), 
        .X(n519) );
  STP_AOAI211_0P5 U704 ( .A1(n522), .A2(n521), .B(n520), .C(n519), .X(n524) );
  STP_AOI22_0P5 U705 ( .A1(n589), .A2(\weight_i[9][14] ), .B1(n586), .B2(
        \weight_i[9][13] ), .X(n523) );
  STP_AOI22_0P5 U706 ( .A1(n524), .A2(n523), .B1(\th[0][7] ), .B2(n513), .X(
        n683) );
  STP_OA21_1 U707 ( .A1(n525), .A2(n680), .B(n683), .X(\symbol_o[4][3] ) );
  STP_ND2_G_1 U708 ( .A1(\weight_i[3][10] ), .A2(\weight_i[3][11] ), .X(n562)
         );
  STP_INV_S_0P65 U709 ( .A(\weight_i[3][7] ), .X(n635) );
  STP_OAI22_V3S_1 U710 ( .A1(\weight_i[3][11] ), .A2(n531), .B1(n561), .B2(
        \weight_i[3][10] ), .X(n559) );
  STP_AO2BB2_0P5 U711 ( .A1(\weight_i[3][9] ), .A2(n557), .B1(n532), .B2(n563), 
        .X(n558) );
  STP_OAI21_1 U712 ( .A1(n566), .A2(\th[1][4] ), .B(n565), .X(n567) );
  STP_AO2BB2_0P5 U713 ( .A1(n2), .A2(\weight_i[3][13] ), .B1(\th[1][7] ), .B2(
        n571), .X(n572) );
  STP_INV_S_0P65 U714 ( .A(\weight_i[3][9] ), .X(n634) );
  STP_ND2_S_0P8 U715 ( .A1(n577), .A2(\weight_i[3][10] ), .X(n578) );
  STP_INV_S_0P65 U716 ( .A(\weight_i[3][10] ), .X(n581) );
  STP_AOI22_0P5 U717 ( .A1(\th[0][4] ), .A2(n639), .B1(\th[0][3] ), .B2(n581), 
        .X(n584) );
  STP_AOI22_0P5 U718 ( .A1(\th[0][6] ), .A2(n633), .B1(\th[0][5] ), .B2(n563), 
        .X(n582) );
  STP_AOI22_0P5 U719 ( .A1(n589), .A2(\weight_i[3][14] ), .B1(n586), .B2(
        \weight_i[3][13] ), .X(n587) );
  STP_NR2B_1 U720 ( .A(n648), .B(n646), .X(\symbol_o[1][3] ) );
  STP_AOAI211_0P5 U721 ( .A1(n690), .A2(\weight_i[8][8] ), .B(n717), .C(
        \weight_i[8][9] ), .X(n594) );
  STP_OAI22_0P5 U722 ( .A1(n690), .A2(\weight_i[8][8] ), .B1(n689), .B2(
        \weight_i[8][7] ), .X(n593) );
  STP_AO22_1 U723 ( .A1(n594), .A2(n593), .B1(\th[2][2] ), .B2(n592), .X(n598)
         );
  STP_AOI22_0P75 U724 ( .A1(n3), .A2(\weight_i[8][8] ), .B1(n720), .B2(
        \weight_i[8][10] ), .X(n597) );
  STP_OAI22_0P5 U725 ( .A1(\weight_i[8][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[8][11] ), .X(n596) );
  STP_INV_S_0P65 U726 ( .A(\weight_i[8][13] ), .X(n600) );
  STP_INV_S_0P65 U727 ( .A(\weight_i[8][12] ), .X(n599) );
  STP_AOI22_0P5 U728 ( .A1(\th[2][6] ), .A2(n600), .B1(\th[2][5] ), .B2(n599), 
        .X(n601) );
  STP_OAI22_0P5 U729 ( .A1(n690), .A2(\weight_i[2][8] ), .B1(n689), .B2(
        \weight_i[2][7] ), .X(n612) );
  STP_AOI22_0P5 U730 ( .A1(n3), .A2(\weight_i[2][8] ), .B1(n720), .B2(
        \weight_i[2][10] ), .X(n616) );
  STP_OAI22_0P5 U731 ( .A1(\weight_i[2][10] ), .A2(n720), .B1(n721), .B2(
        \weight_i[2][11] ), .X(n615) );
  STP_AOI22_0P5 U732 ( .A1(\weight_i[2][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[2][11] ), .X(n614) );
  STP_INV_S_0P65 U733 ( .A(\weight_i[2][13] ), .X(n619) );
  STP_INV_S_0P65 U734 ( .A(\weight_i[2][12] ), .X(n618) );
  STP_AOI22_0P5 U735 ( .A1(\th[2][6] ), .A2(n619), .B1(\th[2][5] ), .B2(n618), 
        .X(n620) );
  STP_NR2_1P5 U736 ( .A1(n627), .A2(n626), .X(\symbol_o[1][0] ) );
  STP_NR2_G_0P5 U737 ( .A1(\th[2][4] ), .A2(n639), .X(n629) );
  STP_OAI21_0P5 U738 ( .A1(n629), .A2(\weight_i[3][12] ), .B(n722), .X(n628)
         );
  STP_AO31_1 U739 ( .A1(n632), .A2(n628), .A3(n633), .B(\th[2][6] ), .X(n631)
         );
  STP_OAOI211_0P5 U740 ( .A1(\th[2][1] ), .A2(n636), .B(\th[2][2] ), .C(n634), 
        .X(n638) );
  STP_AOI22_0P5 U741 ( .A1(\th[2][1] ), .A2(n636), .B1(\th[2][0] ), .B2(n635), 
        .X(n637) );
  STP_AOI22_0P5 U742 ( .A1(n3), .A2(\weight_i[3][8] ), .B1(n720), .B2(
        \weight_i[3][10] ), .X(n642) );
  STP_AO2BB2_0P5 U743 ( .A1(\weight_i[3][12] ), .A2(n722), .B1(\th[2][4] ), 
        .B2(n639), .X(n641) );
  STP_AOI211_0P5 U744 ( .A1(n643), .A2(n642), .B1(n641), .B2(n640), .X(n644)
         );
  STP_OAI22_0P5 U745 ( .A1(n645), .A2(n644), .B1(\weight_i[3][14] ), .B2(n730), 
        .X(n649) );
  STP_OAOI211_0P5 U746 ( .A1(\th[2][1] ), .A2(n652), .B(\th[2][2] ), .C(n650), 
        .X(n654) );
  STP_AOI22_0P5 U747 ( .A1(\th[2][1] ), .A2(n652), .B1(\th[2][0] ), .B2(n651), 
        .X(n653) );
  STP_AO2BB2_0P5 U748 ( .A1(\weight_i[5][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n476), .X(n656) );
  STP_AOI22_0P5 U749 ( .A1(\th[2][6] ), .A2(n478), .B1(\th[2][5] ), .B2(n477), 
        .X(n659) );
  STP_AOI21_0P75 U750 ( .A1(\th[2][7] ), .A2(n483), .B(n661), .X(n662) );
  STP_NR2_G_0P5 U751 ( .A1(n722), .A2(\weight_i[9][12] ), .X(n666) );
  STP_AOI211_0P5 U752 ( .A1(n511), .A2(\th[2][6] ), .B1(n666), .B2(n676), .X(
        n686) );
  STP_OAOI211_0P5 U753 ( .A1(\th[2][1] ), .A2(n669), .B(\th[2][2] ), .C(n667), 
        .X(n671) );
  STP_AOI22_0P5 U754 ( .A1(\th[2][1] ), .A2(n669), .B1(\th[2][0] ), .B2(n668), 
        .X(n670) );
  STP_AOI22_0P5 U755 ( .A1(n3), .A2(\weight_i[9][8] ), .B1(n720), .B2(
        \weight_i[9][10] ), .X(n674) );
  STP_AO2BB2_0P5 U756 ( .A1(\weight_i[9][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n501), .X(n673) );
  STP_AOI22_0P5 U757 ( .A1(\weight_i[9][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[9][11] ), .X(n672) );
  STP_AOAI211_0P5 U758 ( .A1(n675), .A2(n674), .B(n673), .C(n672), .X(n685) );
  STP_AOA211_DG_1 U759 ( .A1(n686), .A2(n685), .B(n684), .C(n683), .X(
        \symbol_o[4][2] ) );
  STP_INV_S_0P65 U760 ( .A(\weight_i[14][13] ), .X(n687) );
  STP_OAI22_0P5 U761 ( .A1(n690), .A2(\weight_i[14][8] ), .B1(n689), .B2(
        \weight_i[14][7] ), .X(n692) );
  STP_OAI22_0P5 U762 ( .A1(\weight_i[14][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[14][11] ), .X(n695) );
  STP_OAI22_0P5 U763 ( .A1(\weight_i[14][10] ), .A2(n720), .B1(n705), .B2(
        \weight_i[14][13] ), .X(n694) );
  STP_INV_S_0P65 U764 ( .A(n698), .X(n699) );
  STP_OAI21_1 U765 ( .A1(n722), .A2(\weight_i[15][12] ), .B(n712), .X(n713) );
  STP_OAOI211_0P5 U766 ( .A1(\th[2][1] ), .A2(n716), .B(\th[2][2] ), .C(n714), 
        .X(n719) );
  STP_AOI22_0P5 U767 ( .A1(\th[2][1] ), .A2(n716), .B1(\th[2][0] ), .B2(n715), 
        .X(n718) );
  STP_AOI22_0P5 U768 ( .A1(n3), .A2(\weight_i[15][8] ), .B1(n720), .B2(
        \weight_i[15][10] ), .X(n725) );
  STP_AO2BB2_0P5 U769 ( .A1(\weight_i[15][10] ), .A2(n720), .B1(\th[2][4] ), 
        .B2(n413), .X(n724) );
  STP_AOI22_0P5 U770 ( .A1(\weight_i[15][12] ), .A2(n722), .B1(n721), .B2(
        \weight_i[15][11] ), .X(n723) );
  STP_AOAI211_0P5 U771 ( .A1(n726), .A2(n725), .B(n724), .C(n723), .X(n737) );
  STP_AOA211_DG_1 U772 ( .A1(n738), .A2(n737), .B(n736), .C(n735), .X(
        \symbol_o[7][2] ) );
endmodule


module RS_ENCODER ( .vp({\vp[7][3] , \vp[7][2] , \vp[7][1] , \vp[7][0] , 
        \vp[6][3] , \vp[6][2] , \vp[6][1] , \vp[6][0] , \vp[5][3] , \vp[5][2] , 
        \vp[5][1] , \vp[5][0] , \vp[4][3] , \vp[4][2] , \vp[4][1] , \vp[4][0] , 
        \vp[3][3] , \vp[3][2] , \vp[3][1] , \vp[3][0] , \vp[2][3] , \vp[2][2] , 
        \vp[2][1] , \vp[2][0] , \vp[1][3] , \vp[1][2] , \vp[1][1] , \vp[1][0] , 
        \vp[0][3] , \vp[0][2] , \vp[0][1] , \vp[0][0] }), .pp({\pp[3][3] , 
        \pp[3][2] , \pp[3][1] , \pp[3][0] , \pp[2][3] , \pp[2][2] , \pp[2][1] , 
        \pp[2][0] , \pp[1][3] , \pp[1][2] , \pp[1][1] , \pp[1][0] , \pp[0][3] , 
        \pp[0][2] , \pp[0][1] , \pp[0][0] }) );
  input \vp[7][3] , \vp[7][2] , \vp[7][1] , \vp[7][0] , \vp[6][3] , \vp[6][2] ,
         \vp[6][1] , \vp[6][0] , \vp[5][3] , \vp[5][2] , \vp[5][1] ,
         \vp[5][0] , \vp[4][3] , \vp[4][2] , \vp[4][1] , \vp[4][0] ,
         \vp[3][3] , \vp[3][2] , \vp[3][1] , \vp[3][0] , \vp[2][3] ,
         \vp[2][2] , \vp[2][1] , \vp[2][0] , \vp[1][3] , \vp[1][2] ,
         \vp[1][1] , \vp[1][0] , \vp[0][3] , \vp[0][2] , \vp[0][1] ,
         \vp[0][0] ;
  output \pp[3][3] , \pp[3][2] , \pp[3][1] , \pp[3][0] , \pp[2][3] ,
         \pp[2][2] , \pp[2][1] , \pp[2][0] , \pp[1][3] , \pp[1][2] ,
         \pp[1][1] , \pp[1][0] , \pp[0][3] , \pp[0][2] , \pp[0][1] ,
         \pp[0][0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76;

  STP_EO3_0P5 U3 ( .A1(\vp[5][2] ), .A2(\vp[0][1] ), .A3(n48), .X(n67) );
  STP_AO2BB2_1 U4 ( .A1(n48), .A2(\vp[2][2] ), .B1(n48), .B2(\vp[2][2] ), .X(
        n65) );
  STP_EO2_1 U5 ( .A1(\vp[4][2] ), .A2(\vp[1][3] ), .X(n30) );
  STP_EO2_S_0P5 U6 ( .A1(n22), .A2(n32), .X(n24) );
  STP_EO2_S_0P5 U7 ( .A1(n38), .A2(n37), .X(n39) );
  STP_EO2_S_0P5 U8 ( .A1(n13), .A2(n18), .X(n16) );
  STP_AO2BB2_V3_1 U9 ( .A1(n43), .A2(n42), .B1(n43), .B2(n42), .X(n48) );
  STP_AO2BB2_1 U10 ( .A1(\vp[2][3] ), .A2(n70), .B1(\vp[2][3] ), .B2(n70), .X(
        n66) );
  STP_EO2_1 U11 ( .A1(\vp[0][0] ), .A2(n51), .X(n32) );
  STP_EO3_2 U12 ( .A1(n63), .A2(\vp[6][1] ), .A3(n36), .X(n68) );
  STP_AO2BB2_V3_1 U13 ( .A1(\vp[4][0] ), .A2(\vp[0][1] ), .B1(\vp[4][0] ), 
        .B2(\vp[0][1] ), .X(n49) );
  STP_AO2BB2_1 U14 ( .A1(\vp[3][1] ), .A2(\vp[5][0] ), .B1(\vp[3][1] ), .B2(
        \vp[5][0] ), .X(n70) );
  STP_EO2_1 U15 ( .A1(\vp[4][1] ), .A2(\vp[1][1] ), .X(n36) );
  STP_EO3_1 U16 ( .A1(n15), .A2(\vp[0][1] ), .A3(\vp[5][2] ), .X(n26) );
  STP_EN2_S_1 U17 ( .A1(n45), .A2(\vp[6][2] ), .X(n15) );
  STP_EO3_2 U18 ( .A1(\vp[4][2] ), .A2(\vp[1][3] ), .A3(\vp[4][3] ), .X(n54)
         );
  STP_INV_S_0P65 U19 ( .A(\vp[1][2] ), .X(n18) );
  STP_AO2BB2_0P5 U20 ( .A1(n1), .A2(\vp[2][2] ), .B1(n1), .B2(\vp[2][2] ), .X(
        n2) );
  STP_INV_S_0P65 U21 ( .A(\vp[4][3] ), .X(n1) );
  STP_INV_S_1 U22 ( .A(\vp[1][0] ), .X(n60) );
  STP_INV_S_0P65 U23 ( .A(\vp[5][0] ), .X(n14) );
  STP_EN2_0P5 U24 ( .A1(n68), .A2(\vp[7][3] ), .X(n76) );
  STP_EO3_0P5 U25 ( .A1(n11), .A2(n63), .A3(n34), .X(\pp[1][3] ) );
  STP_INV_S_0P65 U26 ( .A(\vp[2][3] ), .X(n17) );
  STP_INV_S_0P65 U27 ( .A(n26), .X(n27) );
  STP_EO3_0P5 U28 ( .A1(\vp[5][2] ), .A2(n3), .A3(n42), .X(n5) );
  STP_EO2_S_2 U29 ( .A1(\vp[7][0] ), .A2(\vp[1][2] ), .X(n51) );
  STP_EO3_0P5 U30 ( .A1(n52), .A2(n51), .A3(n50), .X(n53) );
  STP_EN2_0P5 U31 ( .A1(n68), .A2(n54), .X(n55) );
  STP_EN3_1 U32 ( .A1(n6), .A2(n5), .A3(n4), .X(\pp[3][0] ) );
  STP_AO2BB2_0P5 U33 ( .A1(\vp[5][1] ), .A2(n2), .B1(\vp[5][1] ), .B2(n2), .X(
        n13) );
  STP_EO3_0P5 U34 ( .A1(\vp[3][2] ), .A2(\vp[6][2] ), .A3(n13), .X(n6) );
  STP_EO3_1 U35 ( .A1(\vp[0][2] ), .A2(\vp[7][2] ), .A3(n51), .X(n3) );
  STP_EN2_0P5 U36 ( .A1(\vp[2][1] ), .A2(\vp[5][3] ), .X(n42) );
  STP_AO2BB2_2 U37 ( .A1(\vp[2][0] ), .A2(n60), .B1(\vp[2][0] ), .B2(n60), .X(
        n7) );
  STP_AO2BB2_2 U38 ( .A1(\vp[3][3] ), .A2(n7), .B1(\vp[3][3] ), .B2(n7), .X(
        n33) );
  STP_AO2BB2_V3_1 U39 ( .A1(\vp[4][2] ), .A2(n33), .B1(\vp[4][2] ), .B2(n33), 
        .X(n44) );
  STP_EO3_0P5 U40 ( .A1(\vp[6][0] ), .A2(\vp[0][3] ), .A3(\vp[7][3] ), .X(n62)
         );
  STP_AO2BB2_0P5 U41 ( .A1(\vp[4][1] ), .A2(n62), .B1(\vp[4][1] ), .B2(n62), 
        .X(n31) );
  STP_EO2_S_2 U42 ( .A1(n44), .A2(n31), .X(n4) );
  STP_BUF_1 U43 ( .A(n7), .X(n52) );
  STP_AO2BB2_0P5 U44 ( .A1(\vp[0][0] ), .A2(\vp[7][0] ), .B1(\vp[0][0] ), .B2(
        \vp[7][0] ), .X(n10) );
  STP_AO2BB2_0P5 U45 ( .A1(\vp[6][0] ), .A2(\vp[7][3] ), .B1(\vp[6][0] ), .B2(
        \vp[7][3] ), .X(n8) );
  STP_EO3_0P5 U46 ( .A1(\vp[4][1] ), .A2(\vp[5][3] ), .A3(n8), .X(n9) );
  STP_EO3_0P5 U47 ( .A1(n52), .A2(n10), .A3(n9), .X(n11) );
  STP_EO3_0P5 U48 ( .A1(\vp[3][2] ), .A2(\vp[5][1] ), .A3(\vp[4][0] ), .X(n63)
         );
  STP_EO2_S_2 U49 ( .A1(\vp[3][0] ), .A2(\vp[7][1] ), .X(n45) );
  STP_EO2_S_2 U50 ( .A1(n26), .A2(n70), .X(n34) );
  STP_EO3_0P5 U51 ( .A1(n26), .A2(n36), .A3(\vp[3][3] ), .X(n21) );
  STP_EO3_0P5 U52 ( .A1(n32), .A2(\vp[0][3] ), .A3(\vp[2][1] ), .X(n12) );
  STP_EN2_0P5 U53 ( .A1(n54), .A2(\vp[2][0] ), .X(n69) );
  STP_EO3_0P5 U54 ( .A1(n21), .A2(n12), .A3(n69), .X(\pp[0][3] ) );
  STP_OA2BB2_1 U55 ( .A1(\vp[6][3] ), .A2(n62), .B1(n62), .B2(\vp[6][3] ), .X(
        n40) );
  STP_EO2_S_2 U56 ( .A1(n15), .A2(n14), .X(n23) );
  STP_EO3_0P5 U57 ( .A1(n16), .A2(n40), .A3(n23), .X(\pp[1][1] ) );
  STP_EO3_0P5 U58 ( .A1(n42), .A2(\vp[4][0] ), .A3(n17), .X(n20) );
  STP_EO2_S_2 U59 ( .A1(\vp[1][0] ), .A2(n18), .X(n37) );
  STP_EO3_0P5 U60 ( .A1(n37), .A2(n30), .A3(\vp[6][0] ), .X(n19) );
  STP_EO3_0P5 U61 ( .A1(n21), .A2(n20), .A3(n19), .X(\pp[2][0] ) );
  STP_EO3_0P5 U62 ( .A1(\vp[0][2] ), .A2(\vp[7][2] ), .A3(\vp[6][3] ), .X(n43)
         );
  STP_EO3_0P5 U63 ( .A1(n43), .A2(\vp[1][3] ), .A3(\vp[2][3] ), .X(n22) );
  STP_EO3_0P5 U64 ( .A1(n24), .A2(n23), .A3(n68), .X(\pp[3][1] ) );
  STP_EO3_0P5 U65 ( .A1(\vp[2][1] ), .A2(\vp[4][3] ), .A3(\vp[2][2] ), .X(n25)
         );
  STP_EO3_0P5 U66 ( .A1(n43), .A2(n25), .A3(n33), .X(n28) );
  STP_AO2BB2_0P5 U67 ( .A1(\vp[6][1] ), .A2(n66), .B1(\vp[6][1] ), .B2(n66), 
        .X(n57) );
  STP_EO3_0P5 U68 ( .A1(n28), .A2(n27), .A3(n57), .X(\pp[2][1] ) );
  STP_AO2BB2_0P5 U69 ( .A1(\vp[7][2] ), .A2(\vp[6][3] ), .B1(\vp[7][2] ), .B2(
        \vp[6][3] ), .X(n29) );
  STP_EO3_0P5 U70 ( .A1(\vp[5][1] ), .A2(\vp[4][0] ), .A3(n29), .X(n58) );
  STP_EO3_0P5 U71 ( .A1(n31), .A2(n30), .A3(n58), .X(n35) );
  STP_EO2_S_2 U72 ( .A1(n33), .A2(n32), .X(n75) );
  STP_EN3_1 U73 ( .A1(n35), .A2(n34), .A3(n75), .X(\pp[3][2] ) );
  STP_EO3_0P5 U74 ( .A1(\vp[3][2] ), .A2(\vp[5][3] ), .A3(n66), .X(n41) );
  STP_EO3_0P5 U75 ( .A1(n36), .A2(\vp[4][2] ), .A3(n49), .X(n38) );
  STP_EO3_0P5 U76 ( .A1(n41), .A2(n40), .A3(n39), .X(\pp[0][1] ) );
  STP_EO3_0P5 U77 ( .A1(\vp[0][0] ), .A2(\vp[3][1] ), .A3(\vp[6][0] ), .X(n46)
         );
  STP_EO3_2 U78 ( .A1(n46), .A2(n45), .A3(n44), .X(n47) );
  STP_EO3_0P5 U79 ( .A1(n67), .A2(n68), .A3(n47), .X(\pp[1][0] ) );
  STP_EO3_0P5 U80 ( .A1(\vp[7][1] ), .A2(\vp[3][1] ), .A3(n49), .X(n50) );
  STP_EO3_0P5 U81 ( .A1(n54), .A2(n65), .A3(n53), .X(\pp[0][0] ) );
  STP_EO3_0P5 U82 ( .A1(\vp[0][2] ), .A2(n75), .A3(n55), .X(\pp[0][2] ) );
  STP_EO3_0P5 U83 ( .A1(\vp[5][2] ), .A2(\vp[0][0] ), .A3(\vp[7][0] ), .X(n56)
         );
  STP_EO3_0P5 U84 ( .A1(\vp[3][0] ), .A2(\vp[1][3] ), .A3(n56), .X(n59) );
  STP_EO3_0P5 U85 ( .A1(n59), .A2(n58), .A3(n57), .X(\pp[1][2] ) );
  STP_EO3_0P5 U86 ( .A1(\vp[1][1] ), .A2(\vp[6][2] ), .A3(n60), .X(n61) );
  STP_EO3_0P5 U87 ( .A1(n63), .A2(n62), .A3(n61), .X(n64) );
  STP_EO3_0P5 U88 ( .A1(n66), .A2(n65), .A3(n64), .X(\pp[2][2] ) );
  STP_INV_S_0P65 U89 ( .A(n67), .X(n72) );
  STP_EO3_0P5 U90 ( .A1(\vp[7][1] ), .A2(n70), .A3(n69), .X(n71) );
  STP_EO3_0P5 U91 ( .A1(n72), .A2(n76), .A3(n71), .X(\pp[3][3] ) );
  STP_EO3_0P5 U92 ( .A1(\vp[2][2] ), .A2(\vp[2][3] ), .A3(\vp[6][3] ), .X(n73)
         );
  STP_EO3_0P5 U93 ( .A1(\vp[5][2] ), .A2(\vp[0][3] ), .A3(n73), .X(n74) );
  STP_EO3_0P5 U94 ( .A1(n76), .A2(n75), .A3(n74), .X(\pp[2][3] ) );
endmodule


module RS4b_ENCODER ( aclk, areset_n, data_i, write_enable_i, addr_i, 
    .weight_i({\weight_i[15][15] , \weight_i[15][14] , \weight_i[15][13] , 
        \weight_i[15][12] , \weight_i[15][11] , \weight_i[15][10] , 
        \weight_i[15][9] , \weight_i[15][8] , \weight_i[15][7] , 
        \weight_i[15][6] , \weight_i[15][5] , \weight_i[15][4] , 
        \weight_i[15][3] , \weight_i[15][2] , \weight_i[15][1] , 
        \weight_i[15][0] , \weight_i[14][15] , \weight_i[14][14] , 
        \weight_i[14][13] , \weight_i[14][12] , \weight_i[14][11] , 
        \weight_i[14][10] , \weight_i[14][9] , \weight_i[14][8] , 
        \weight_i[14][7] , \weight_i[14][6] , \weight_i[14][5] , 
        \weight_i[14][4] , \weight_i[14][3] , \weight_i[14][2] , 
        \weight_i[14][1] , \weight_i[14][0] , \weight_i[13][15] , 
        \weight_i[13][14] , \weight_i[13][13] , \weight_i[13][12] , 
        \weight_i[13][11] , \weight_i[13][10] , \weight_i[13][9] , 
        \weight_i[13][8] , \weight_i[13][7] , \weight_i[13][6] , 
        \weight_i[13][5] , \weight_i[13][4] , \weight_i[13][3] , 
        \weight_i[13][2] , \weight_i[13][1] , \weight_i[13][0] , 
        \weight_i[12][15] , \weight_i[12][14] , \weight_i[12][13] , 
        \weight_i[12][12] , \weight_i[12][11] , \weight_i[12][10] , 
        \weight_i[12][9] , \weight_i[12][8] , \weight_i[12][7] , 
        \weight_i[12][6] , \weight_i[12][5] , \weight_i[12][4] , 
        \weight_i[12][3] , \weight_i[12][2] , \weight_i[12][1] , 
        \weight_i[12][0] , \weight_i[11][15] , \weight_i[11][14] , 
        \weight_i[11][13] , \weight_i[11][12] , \weight_i[11][11] , 
        \weight_i[11][10] , \weight_i[11][9] , \weight_i[11][8] , 
        \weight_i[11][7] , \weight_i[11][6] , \weight_i[11][5] , 
        \weight_i[11][4] , \weight_i[11][3] , \weight_i[11][2] , 
        \weight_i[11][1] , \weight_i[11][0] , \weight_i[10][15] , 
        \weight_i[10][14] , \weight_i[10][13] , \weight_i[10][12] , 
        \weight_i[10][11] , \weight_i[10][10] , \weight_i[10][9] , 
        \weight_i[10][8] , \weight_i[10][7] , \weight_i[10][6] , 
        \weight_i[10][5] , \weight_i[10][4] , \weight_i[10][3] , 
        \weight_i[10][2] , \weight_i[10][1] , \weight_i[10][0] , 
        \weight_i[9][15] , \weight_i[9][14] , \weight_i[9][13] , 
        \weight_i[9][12] , \weight_i[9][11] , \weight_i[9][10] , 
        \weight_i[9][9] , \weight_i[9][8] , \weight_i[9][7] , \weight_i[9][6] , 
        \weight_i[9][5] , \weight_i[9][4] , \weight_i[9][3] , \weight_i[9][2] , 
        \weight_i[9][1] , \weight_i[9][0] , \weight_i[8][15] , 
        \weight_i[8][14] , \weight_i[8][13] , \weight_i[8][12] , 
        \weight_i[8][11] , \weight_i[8][10] , \weight_i[8][9] , 
        \weight_i[8][8] , \weight_i[8][7] , \weight_i[8][6] , \weight_i[8][5] , 
        \weight_i[8][4] , \weight_i[8][3] , \weight_i[8][2] , \weight_i[8][1] , 
        \weight_i[8][0] , \weight_i[7][15] , \weight_i[7][14] , 
        \weight_i[7][13] , \weight_i[7][12] , \weight_i[7][11] , 
        \weight_i[7][10] , \weight_i[7][9] , \weight_i[7][8] , 
        \weight_i[7][7] , \weight_i[7][6] , \weight_i[7][5] , \weight_i[7][4] , 
        \weight_i[7][3] , \weight_i[7][2] , \weight_i[7][1] , \weight_i[7][0] , 
        \weight_i[6][15] , \weight_i[6][14] , \weight_i[6][13] , 
        \weight_i[6][12] , \weight_i[6][11] , \weight_i[6][10] , 
        \weight_i[6][9] , \weight_i[6][8] , \weight_i[6][7] , \weight_i[6][6] , 
        \weight_i[6][5] , \weight_i[6][4] , \weight_i[6][3] , \weight_i[6][2] , 
        \weight_i[6][1] , \weight_i[6][0] , \weight_i[5][15] , 
        \weight_i[5][14] , \weight_i[5][13] , \weight_i[5][12] , 
        \weight_i[5][11] , \weight_i[5][10] , \weight_i[5][9] , 
        \weight_i[5][8] , \weight_i[5][7] , \weight_i[5][6] , \weight_i[5][5] , 
        \weight_i[5][4] , \weight_i[5][3] , \weight_i[5][2] , \weight_i[5][1] , 
        \weight_i[5][0] , \weight_i[4][15] , \weight_i[4][14] , 
        \weight_i[4][13] , \weight_i[4][12] , \weight_i[4][11] , 
        \weight_i[4][10] , \weight_i[4][9] , \weight_i[4][8] , 
        \weight_i[4][7] , \weight_i[4][6] , \weight_i[4][5] , \weight_i[4][4] , 
        \weight_i[4][3] , \weight_i[4][2] , \weight_i[4][1] , \weight_i[4][0] , 
        \weight_i[3][15] , \weight_i[3][14] , \weight_i[3][13] , 
        \weight_i[3][12] , \weight_i[3][11] , \weight_i[3][10] , 
        \weight_i[3][9] , \weight_i[3][8] , \weight_i[3][7] , \weight_i[3][6] , 
        \weight_i[3][5] , \weight_i[3][4] , \weight_i[3][3] , \weight_i[3][2] , 
        \weight_i[3][1] , \weight_i[3][0] , \weight_i[2][15] , 
        \weight_i[2][14] , \weight_i[2][13] , \weight_i[2][12] , 
        \weight_i[2][11] , \weight_i[2][10] , \weight_i[2][9] , 
        \weight_i[2][8] , \weight_i[2][7] , \weight_i[2][6] , \weight_i[2][5] , 
        \weight_i[2][4] , \weight_i[2][3] , \weight_i[2][2] , \weight_i[2][1] , 
        \weight_i[2][0] , \weight_i[1][15] , \weight_i[1][14] , 
        \weight_i[1][13] , \weight_i[1][12] , \weight_i[1][11] , 
        \weight_i[1][10] , \weight_i[1][9] , \weight_i[1][8] , 
        \weight_i[1][7] , \weight_i[1][6] , \weight_i[1][5] , \weight_i[1][4] , 
        \weight_i[1][3] , \weight_i[1][2] , \weight_i[1][1] , \weight_i[1][0] , 
        \weight_i[0][15] , \weight_i[0][14] , \weight_i[0][13] , 
        \weight_i[0][12] , \weight_i[0][11] , \weight_i[0][10] , 
        \weight_i[0][9] , \weight_i[0][8] , \weight_i[0][7] , \weight_i[0][6] , 
        \weight_i[0][5] , \weight_i[0][4] , \weight_i[0][3] , \weight_i[0][2] , 
        \weight_i[0][1] , \weight_i[0][0] }), .p_o({\p_o[3][3] , \p_o[3][2] , 
        \p_o[3][1] , \p_o[3][0] , \p_o[2][3] , \p_o[2][2] , \p_o[2][1] , 
        \p_o[2][0] , \p_o[1][3] , \p_o[1][2] , \p_o[1][1] , \p_o[1][0] , 
        \p_o[0][3] , \p_o[0][2] , \p_o[0][1] , \p_o[0][0] }) );
  input [7:0] data_i;
  input [31:0] addr_i;
  input aclk, areset_n, write_enable_i, \weight_i[15][15] , \weight_i[15][14] ,
         \weight_i[15][13] , \weight_i[15][12] , \weight_i[15][11] ,
         \weight_i[15][10] , \weight_i[15][9] , \weight_i[15][8] ,
         \weight_i[15][7] , \weight_i[15][6] , \weight_i[15][5] ,
         \weight_i[15][4] , \weight_i[15][3] , \weight_i[15][2] ,
         \weight_i[15][1] , \weight_i[15][0] , \weight_i[14][15] ,
         \weight_i[14][14] , \weight_i[14][13] , \weight_i[14][12] ,
         \weight_i[14][11] , \weight_i[14][10] , \weight_i[14][9] ,
         \weight_i[14][8] , \weight_i[14][7] , \weight_i[14][6] ,
         \weight_i[14][5] , \weight_i[14][4] , \weight_i[14][3] ,
         \weight_i[14][2] , \weight_i[14][1] , \weight_i[14][0] ,
         \weight_i[13][15] , \weight_i[13][14] , \weight_i[13][13] ,
         \weight_i[13][12] , \weight_i[13][11] , \weight_i[13][10] ,
         \weight_i[13][9] , \weight_i[13][8] , \weight_i[13][7] ,
         \weight_i[13][6] , \weight_i[13][5] , \weight_i[13][4] ,
         \weight_i[13][3] , \weight_i[13][2] , \weight_i[13][1] ,
         \weight_i[13][0] , \weight_i[12][15] , \weight_i[12][14] ,
         \weight_i[12][13] , \weight_i[12][12] , \weight_i[12][11] ,
         \weight_i[12][10] , \weight_i[12][9] , \weight_i[12][8] ,
         \weight_i[12][7] , \weight_i[12][6] , \weight_i[12][5] ,
         \weight_i[12][4] , \weight_i[12][3] , \weight_i[12][2] ,
         \weight_i[12][1] , \weight_i[12][0] , \weight_i[11][15] ,
         \weight_i[11][14] , \weight_i[11][13] , \weight_i[11][12] ,
         \weight_i[11][11] , \weight_i[11][10] , \weight_i[11][9] ,
         \weight_i[11][8] , \weight_i[11][7] , \weight_i[11][6] ,
         \weight_i[11][5] , \weight_i[11][4] , \weight_i[11][3] ,
         \weight_i[11][2] , \weight_i[11][1] , \weight_i[11][0] ,
         \weight_i[10][15] , \weight_i[10][14] , \weight_i[10][13] ,
         \weight_i[10][12] , \weight_i[10][11] , \weight_i[10][10] ,
         \weight_i[10][9] , \weight_i[10][8] , \weight_i[10][7] ,
         \weight_i[10][6] , \weight_i[10][5] , \weight_i[10][4] ,
         \weight_i[10][3] , \weight_i[10][2] , \weight_i[10][1] ,
         \weight_i[10][0] , \weight_i[9][15] , \weight_i[9][14] ,
         \weight_i[9][13] , \weight_i[9][12] , \weight_i[9][11] ,
         \weight_i[9][10] , \weight_i[9][9] , \weight_i[9][8] ,
         \weight_i[9][7] , \weight_i[9][6] , \weight_i[9][5] ,
         \weight_i[9][4] , \weight_i[9][3] , \weight_i[9][2] ,
         \weight_i[9][1] , \weight_i[9][0] , \weight_i[8][15] ,
         \weight_i[8][14] , \weight_i[8][13] , \weight_i[8][12] ,
         \weight_i[8][11] , \weight_i[8][10] , \weight_i[8][9] ,
         \weight_i[8][8] , \weight_i[8][7] , \weight_i[8][6] ,
         \weight_i[8][5] , \weight_i[8][4] , \weight_i[8][3] ,
         \weight_i[8][2] , \weight_i[8][1] , \weight_i[8][0] ,
         \weight_i[7][15] , \weight_i[7][14] , \weight_i[7][13] ,
         \weight_i[7][12] , \weight_i[7][11] , \weight_i[7][10] ,
         \weight_i[7][9] , \weight_i[7][8] , \weight_i[7][7] ,
         \weight_i[7][6] , \weight_i[7][5] , \weight_i[7][4] ,
         \weight_i[7][3] , \weight_i[7][2] , \weight_i[7][1] ,
         \weight_i[7][0] , \weight_i[6][15] , \weight_i[6][14] ,
         \weight_i[6][13] , \weight_i[6][12] , \weight_i[6][11] ,
         \weight_i[6][10] , \weight_i[6][9] , \weight_i[6][8] ,
         \weight_i[6][7] , \weight_i[6][6] , \weight_i[6][5] ,
         \weight_i[6][4] , \weight_i[6][3] , \weight_i[6][2] ,
         \weight_i[6][1] , \weight_i[6][0] , \weight_i[5][15] ,
         \weight_i[5][14] , \weight_i[5][13] , \weight_i[5][12] ,
         \weight_i[5][11] , \weight_i[5][10] , \weight_i[5][9] ,
         \weight_i[5][8] , \weight_i[5][7] , \weight_i[5][6] ,
         \weight_i[5][5] , \weight_i[5][4] , \weight_i[5][3] ,
         \weight_i[5][2] , \weight_i[5][1] , \weight_i[5][0] ,
         \weight_i[4][15] , \weight_i[4][14] , \weight_i[4][13] ,
         \weight_i[4][12] , \weight_i[4][11] , \weight_i[4][10] ,
         \weight_i[4][9] , \weight_i[4][8] , \weight_i[4][7] ,
         \weight_i[4][6] , \weight_i[4][5] , \weight_i[4][4] ,
         \weight_i[4][3] , \weight_i[4][2] , \weight_i[4][1] ,
         \weight_i[4][0] , \weight_i[3][15] , \weight_i[3][14] ,
         \weight_i[3][13] , \weight_i[3][12] , \weight_i[3][11] ,
         \weight_i[3][10] , \weight_i[3][9] , \weight_i[3][8] ,
         \weight_i[3][7] , \weight_i[3][6] , \weight_i[3][5] ,
         \weight_i[3][4] , \weight_i[3][3] , \weight_i[3][2] ,
         \weight_i[3][1] , \weight_i[3][0] , \weight_i[2][15] ,
         \weight_i[2][14] , \weight_i[2][13] , \weight_i[2][12] ,
         \weight_i[2][11] , \weight_i[2][10] , \weight_i[2][9] ,
         \weight_i[2][8] , \weight_i[2][7] , \weight_i[2][6] ,
         \weight_i[2][5] , \weight_i[2][4] , \weight_i[2][3] ,
         \weight_i[2][2] , \weight_i[2][1] , \weight_i[2][0] ,
         \weight_i[1][15] , \weight_i[1][14] , \weight_i[1][13] ,
         \weight_i[1][12] , \weight_i[1][11] , \weight_i[1][10] ,
         \weight_i[1][9] , \weight_i[1][8] , \weight_i[1][7] ,
         \weight_i[1][6] , \weight_i[1][5] , \weight_i[1][4] ,
         \weight_i[1][3] , \weight_i[1][2] , \weight_i[1][1] ,
         \weight_i[1][0] , \weight_i[0][15] , \weight_i[0][14] ,
         \weight_i[0][13] , \weight_i[0][12] , \weight_i[0][11] ,
         \weight_i[0][10] , \weight_i[0][9] , \weight_i[0][8] ,
         \weight_i[0][7] , \weight_i[0][6] , \weight_i[0][5] ,
         \weight_i[0][4] , \weight_i[0][3] , \weight_i[0][2] ,
         \weight_i[0][1] , \weight_i[0][0] ;
  output \p_o[3][3] , \p_o[3][2] , \p_o[3][1] , \p_o[3][0] , \p_o[2][3] ,
         \p_o[2][2] , \p_o[2][1] , \p_o[2][0] , \p_o[1][3] , \p_o[1][2] ,
         \p_o[1][1] , \p_o[1][0] , \p_o[0][3] , \p_o[0][2] , \p_o[0][1] ,
         \p_o[0][0] ;
  wire   \symbol[7][3] , \symbol[7][2] , \symbol[7][1] , \symbol[7][0] ,
         \symbol[6][3] , \symbol[6][2] , \symbol[6][1] , \symbol[6][0] ,
         \symbol[5][3] , \symbol[5][2] , \symbol[5][1] , \symbol[5][0] ,
         \symbol[4][3] , \symbol[4][2] , \symbol[4][1] , \symbol[4][0] ,
         \symbol[3][3] , \symbol[3][2] , \symbol[3][1] , \symbol[3][0] ,
         \symbol[2][3] , \symbol[2][2] , \symbol[2][1] , \symbol[2][0] ,
         \symbol[1][3] , \symbol[1][2] , \symbol[1][1] , \symbol[1][0] ,
         \symbol[0][3] , \symbol[0][2] , \symbol[0][1] , \symbol[0][0] , n152;

  RANGE_TABLE_BF16_RID4 u_range_table ( .aclk(aclk), .areset_n(areset_n), 
        .weight_i({n152, \weight_i[15][14] , \weight_i[15][13] , 
        \weight_i[15][12] , \weight_i[15][11] , \weight_i[15][10] , 
        \weight_i[15][9] , \weight_i[15][8] , \weight_i[15][7] , n152, n152, 
        n152, n152, n152, n152, n152, n152, \weight_i[14][14] , 
        \weight_i[14][13] , \weight_i[14][12] , \weight_i[14][11] , 
        \weight_i[14][10] , \weight_i[14][9] , \weight_i[14][8] , 
        \weight_i[14][7] , n152, n152, n152, n152, n152, n152, n152, n152, 
        \weight_i[13][14] , \weight_i[13][13] , \weight_i[13][12] , 
        \weight_i[13][11] , \weight_i[13][10] , \weight_i[13][9] , 
        \weight_i[13][8] , \weight_i[13][7] , n152, n152, n152, n152, n152, 
        n152, n152, n152, \weight_i[12][14] , \weight_i[12][13] , 
        \weight_i[12][12] , \weight_i[12][11] , \weight_i[12][10] , 
        \weight_i[12][9] , \weight_i[12][8] , \weight_i[12][7] , n152, n152, 
        n152, n152, n152, n152, n152, n152, \weight_i[11][14] , 
        \weight_i[11][13] , \weight_i[11][12] , \weight_i[11][11] , 
        \weight_i[11][10] , \weight_i[11][9] , \weight_i[11][8] , 
        \weight_i[11][7] , n152, n152, n152, n152, n152, n152, n152, n152, 
        \weight_i[10][14] , \weight_i[10][13] , \weight_i[10][12] , 
        \weight_i[10][11] , \weight_i[10][10] , \weight_i[10][9] , 
        \weight_i[10][8] , \weight_i[10][7] , n152, n152, n152, n152, n152, 
        n152, n152, n152, \weight_i[9][14] , \weight_i[9][13] , 
        \weight_i[9][12] , \weight_i[9][11] , \weight_i[9][10] , 
        \weight_i[9][9] , \weight_i[9][8] , \weight_i[9][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[8][14] , \weight_i[8][13] , 
        \weight_i[8][12] , \weight_i[8][11] , \weight_i[8][10] , 
        \weight_i[8][9] , \weight_i[8][8] , \weight_i[8][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[7][14] , \weight_i[7][13] , 
        \weight_i[7][12] , \weight_i[7][11] , \weight_i[7][10] , 
        \weight_i[7][9] , \weight_i[7][8] , \weight_i[7][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[6][14] , \weight_i[6][13] , 
        \weight_i[6][12] , \weight_i[6][11] , \weight_i[6][10] , 
        \weight_i[6][9] , \weight_i[6][8] , \weight_i[6][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[5][14] , \weight_i[5][13] , 
        \weight_i[5][12] , \weight_i[5][11] , \weight_i[5][10] , 
        \weight_i[5][9] , \weight_i[5][8] , \weight_i[5][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[4][14] , \weight_i[4][13] , 
        \weight_i[4][12] , \weight_i[4][11] , \weight_i[4][10] , 
        \weight_i[4][9] , \weight_i[4][8] , \weight_i[4][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[3][14] , \weight_i[3][13] , 
        \weight_i[3][12] , \weight_i[3][11] , \weight_i[3][10] , 
        \weight_i[3][9] , \weight_i[3][8] , \weight_i[3][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[2][14] , \weight_i[2][13] , 
        \weight_i[2][12] , \weight_i[2][11] , \weight_i[2][10] , 
        \weight_i[2][9] , \weight_i[2][8] , \weight_i[2][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[1][14] , \weight_i[1][13] , 
        \weight_i[1][12] , \weight_i[1][11] , \weight_i[1][10] , 
        \weight_i[1][9] , \weight_i[1][8] , \weight_i[1][7] , n152, n152, n152, 
        n152, n152, n152, n152, n152, \weight_i[0][14] , \weight_i[0][13] , 
        \weight_i[0][12] , \weight_i[0][11] , \weight_i[0][10] , 
        \weight_i[0][9] , \weight_i[0][8] , \weight_i[0][7] , n152, n152, n152, 
        n152, n152, n152, n152}), .symbol_o({\symbol[7][3] , \symbol[7][2] , 
        \symbol[7][1] , \symbol[7][0] , \symbol[6][3] , \symbol[6][2] , 
        \symbol[6][1] , \symbol[6][0] , \symbol[5][3] , \symbol[5][2] , 
        \symbol[5][1] , \symbol[5][0] , \symbol[4][3] , \symbol[4][2] , 
        \symbol[4][1] , \symbol[4][0] , \symbol[3][3] , \symbol[3][2] , 
        \symbol[3][1] , \symbol[3][0] , \symbol[2][3] , \symbol[2][2] , 
        \symbol[2][1] , \symbol[2][0] , \symbol[1][3] , \symbol[1][2] , 
        \symbol[1][1] , \symbol[1][0] , \symbol[0][3] , \symbol[0][2] , 
        \symbol[0][1] , \symbol[0][0] }), .data_i(data_i), .write_enable_i(
        write_enable_i), .addr_i({n152, n152, n152, n152, n152, n152, n152, 
        n152, n152, n152, n152, n152, n152, n152, n152, n152, n152, n152, n152, 
        n152, n152, n152, n152, n152, addr_i[7:0]}) );
  RS_ENCODER u_rs_encoder ( .vp({\symbol[7][3] , \symbol[7][2] , 
        \symbol[7][1] , \symbol[7][0] , \symbol[6][3] , \symbol[6][2] , 
        \symbol[6][1] , \symbol[6][0] , \symbol[5][3] , \symbol[5][2] , 
        \symbol[5][1] , \symbol[5][0] , \symbol[4][3] , \symbol[4][2] , 
        \symbol[4][1] , \symbol[4][0] , \symbol[3][3] , \symbol[3][2] , 
        \symbol[3][1] , \symbol[3][0] , \symbol[2][3] , \symbol[2][2] , 
        \symbol[2][1] , \symbol[2][0] , \symbol[1][3] , \symbol[1][2] , 
        \symbol[1][1] , \symbol[1][0] , \symbol[0][3] , \symbol[0][2] , 
        \symbol[0][1] , \symbol[0][0] }), .pp({\p_o[3][3] , \p_o[3][2] , 
        \p_o[3][1] , \p_o[3][0] , \p_o[2][3] , \p_o[2][2] , \p_o[2][1] , 
        \p_o[2][0] , \p_o[1][3] , \p_o[1][2] , \p_o[1][1] , \p_o[1][0] , 
        \p_o[0][3] , \p_o[0][2] , \p_o[0][1] , \p_o[0][0] }) );
  STP_TIE0_1 U2 ( .X(n152) );
endmodule

