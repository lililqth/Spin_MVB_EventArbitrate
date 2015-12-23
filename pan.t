#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: p2 */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(311,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(310,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(310,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(310,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(307,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(307,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(305,0,6,3,3,"(!((currentP>=maxP)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!((currentP>=maxP))))",0,0,0);
	trans[3][4]	= settr(308,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(309,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(312,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(313,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(314,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(103*sizeof(Trans *));

	trans[2][1]	= settr(203,0,2,5,5,"Conflict[0] = 1", 1, 2, 0);
	trans[2][2]	= settr(204,0,3,6,6,"Conflict[1] = 3", 1, 2, 0);
	trans[2][3]	= settr(205,0,4,7,7,"Conflict[2] = 5", 1, 2, 0);
	trans[2][4]	= settr(206,0,5,8,8,"Conflict[3] = 7", 1, 2, 0);
	trans[2][5]	= settr(207,0,6,9,9,"Conflict[4] = 9", 1, 2, 0);
	trans[2][6]	= settr(208,0,7,10,10,"Conflict[5] = 11", 1, 2, 0);
	trans[2][7]	= settr(209,0,8,11,11,"Conflict[6] = 13", 1, 2, 0);
	trans[2][8]	= settr(210,0,9,12,12,"Conflict[7] = 15", 1, 2, 0);
	trans[2][9]	= settr(211,0,10,13,13,"Conflict[8] = 17", 1, 2, 0);
	trans[2][10]	= settr(212,0,11,14,14,"Conflict[9] = 19", 1, 2, 0);
	trans[2][11]	= settr(213,0,12,15,15,"Conflict[10] = 21", 1, 2, 0);
	trans[2][12]	= settr(214,0,13,16,16,"Conflict[11] = 23", 1, 2, 0);
	trans[2][13]	= settr(215,0,14,17,17,"Conflict[12] = 25", 1, 2, 0);
	trans[2][14]	= settr(216,0,15,18,18,"Conflict[13] = 27", 1, 2, 0);
	trans[2][15]	= settr(217,0,16,19,19,"Conflict[14] = 29", 1, 2, 0);
	trans[2][16]	= settr(218,0,17,20,20,"Conflict[15] = -(1)", 1, 2, 0);
	trans[2][17]	= settr(219,0,18,21,21,"Conflict[16] = -(1)", 1, 2, 0);
	trans[2][18]	= settr(220,0,19,22,22,"Conflict[17] = -(1)", 1, 2, 0);
	trans[2][19]	= settr(221,0,20,23,23,"Conflict[18] = -(1)", 1, 2, 0);
	trans[2][20]	= settr(222,0,21,24,24,"Conflict[19] = -(1)", 1, 2, 0);
	trans[2][21]	= settr(223,0,22,25,25,"Conflict[20] = -(1)", 1, 2, 0);
	trans[2][22]	= settr(224,0,23,26,26,"Conflict[21] = -(1)", 1, 2, 0);
	trans[2][23]	= settr(225,0,24,27,27,"Conflict[22] = -(1)", 1, 2, 0);
	trans[2][24]	= settr(226,0,25,28,28,"Conflict[23] = -(1)", 1, 2, 0);
	trans[2][25]	= settr(227,0,26,29,29,"Conflict[24] = -(1)", 1, 2, 0);
	trans[2][26]	= settr(228,0,27,30,30,"Conflict[25] = -(1)", 1, 2, 0);
	trans[2][27]	= settr(229,0,28,31,31,"Conflict[26] = -(1)", 1, 2, 0);
	trans[2][28]	= settr(230,0,29,32,32,"Conflict[27] = -(1)", 1, 2, 0);
	trans[2][29]	= settr(231,0,30,33,33,"Conflict[28] = -(1)", 1, 2, 0);
	trans[2][30]	= settr(232,0,31,34,34,"Conflict[29] = -(1)", 1, 2, 0);
	trans[2][31]	= settr(233,0,32,35,35,"Conflict[30] = -(1)", 1, 2, 0);
	trans[2][32]	= settr(234,0,33,36,36,"Conflict[15] = 0", 1, 2, 0);
	trans[2][33]	= settr(235,0,34,37,37,"silent[0] = -(2)", 1, 2, 0);
	trans[2][34]	= settr(236,0,35,38,38,"silent[1] = 2", 1, 2, 0);
	trans[2][35]	= settr(237,0,36,39,39,"silent[2] = 31", 1, 2, 0);
	trans[2][36]	= settr(238,0,37,40,40,"silent[3] = 4", 1, 2, 0);
	trans[2][37]	= settr(239,0,38,41,41,"silent[4] = 2", 1, 2, 0);
	trans[2][38]	= settr(240,0,39,42,42,"silent[5] = 6", 1, 2, 0);
	trans[2][39]	= settr(241,0,40,43,43,"silent[6] = 31", 1, 2, 0);
	trans[2][40]	= settr(242,0,41,44,44,"silent[7] = 8", 1, 2, 0);
	trans[2][41]	= settr(243,0,42,45,45,"silent[8] = 4", 1, 2, 0);
	trans[2][42]	= settr(244,0,43,46,46,"silent[9] = 10", 1, 2, 0);
	trans[2][43]	= settr(245,0,44,47,47,"silent[10] = 2", 1, 2, 0);
	trans[2][44]	= settr(246,0,45,48,48,"silent[11] = 12", 1, 2, 0);
	trans[2][45]	= settr(247,0,46,49,49,"silent[12] = 6", 1, 2, 0);
	trans[2][46]	= settr(248,0,47,50,50,"silent[13] = 14", 1, 2, 0);
	trans[2][47]	= settr(249,0,48,51,51,"silent[14] = 31", 1, 2, 0);
	trans[2][48]	= settr(250,0,49,52,52,"silent[15] = -(1)", 1, 2, 0);
	trans[2][49]	= settr(251,0,50,53,53,"silent[16] = -(1)", 1, 2, 0);
	trans[2][50]	= settr(252,0,51,54,54,"silent[17] = -(1)", 1, 2, 0);
	trans[2][51]	= settr(253,0,52,55,55,"silent[18] = -(1)", 1, 2, 0);
	trans[2][52]	= settr(254,0,53,56,56,"silent[19] = -(1)", 1, 2, 0);
	trans[2][53]	= settr(255,0,54,57,57,"silent[20] = -(1)", 1, 2, 0);
	trans[2][54]	= settr(256,0,55,58,58,"silent[21] = -(1)", 1, 2, 0);
	trans[2][55]	= settr(257,0,56,59,59,"silent[22] = -(1)", 1, 2, 0);
	trans[2][56]	= settr(258,0,57,60,60,"silent[23] = -(1)", 1, 2, 0);
	trans[2][57]	= settr(259,0,58,61,61,"silent[24] = -(1)", 1, 2, 0);
	trans[2][58]	= settr(260,0,59,62,62,"silent[25] = -(1)", 1, 2, 0);
	trans[2][59]	= settr(261,0,60,63,63,"silent[26] = -(1)", 1, 2, 0);
	trans[2][60]	= settr(262,0,61,64,64,"silent[27] = -(1)", 1, 2, 0);
	trans[2][61]	= settr(263,0,62,65,65,"silent[28] = -(1)", 1, 2, 0);
	trans[2][62]	= settr(264,0,63,66,66,"silent[29] = -(1)", 1, 2, 0);
	trans[2][63]	= settr(265,0,64,67,67,"silent[30] = -(1)", 1, 2, 0);
	trans[2][64]	= settr(266,0,65,68,68,"silent[31] = -(2)", 1, 2, 0);
	trans[2][65]	= settr(267,0,66,69,69,"OK[0] = 31", 1, 2, 0);
	trans[2][66]	= settr(268,0,67,70,70,"OK[1] = 2", 1, 2, 0);
	trans[2][67]	= settr(269,0,68,71,71,"OK[2] = 31", 1, 2, 0);
	trans[2][68]	= settr(270,0,69,72,72,"OK[3] = 4", 1, 2, 0);
	trans[2][69]	= settr(271,0,70,73,73,"OK[4] = 2", 1, 2, 0);
	trans[2][70]	= settr(272,0,71,74,74,"OK[5] = 6", 1, 2, 0);
	trans[2][71]	= settr(273,0,72,75,75,"OK[6] = 31", 1, 2, 0);
	trans[2][72]	= settr(274,0,73,76,76,"OK[7] = 8", 1, 2, 0);
	trans[2][73]	= settr(275,0,74,77,77,"OK[8] = 4", 1, 2, 0);
	trans[2][74]	= settr(276,0,75,78,78,"OK[9] = 10", 1, 2, 0);
	trans[2][75]	= settr(277,0,76,79,79,"OK[10] = 2", 1, 2, 0);
	trans[2][76]	= settr(278,0,77,80,80,"OK[11] = 12", 1, 2, 0);
	trans[2][77]	= settr(279,0,78,81,81,"OK[12] = 6", 1, 2, 0);
	trans[2][78]	= settr(280,0,79,82,82,"OK[13] = 14", 1, 2, 0);
	trans[2][79]	= settr(281,0,80,83,83,"OK[14] = 31", 1, 2, 0);
	trans[2][80]	= settr(282,0,81,84,84,"OK[15] = 16", 1, 2, 0);
	trans[2][81]	= settr(283,0,82,85,85,"OK[16] = 8", 1, 2, 0);
	trans[2][82]	= settr(284,0,83,86,86,"OK[17] = 18", 1, 2, 0);
	trans[2][83]	= settr(285,0,84,87,87,"OK[18] = 4", 1, 2, 0);
	trans[2][84]	= settr(286,0,85,88,88,"OK[19] = 20", 1, 2, 0);
	trans[2][85]	= settr(287,0,86,89,89,"OK[20] = 10", 1, 2, 0);
	trans[2][86]	= settr(288,0,87,90,90,"OK[21] = 22", 1, 2, 0);
	trans[2][87]	= settr(289,0,88,91,91,"OK[22] = 2", 1, 2, 0);
	trans[2][88]	= settr(290,0,89,92,92,"OK[23] = 24", 1, 2, 0);
	trans[2][89]	= settr(291,0,90,93,93,"OK[24] = 12", 1, 2, 0);
	trans[2][90]	= settr(292,0,91,94,94,"OK[25] = 26", 1, 2, 0);
	trans[2][91]	= settr(293,0,92,95,95,"OK[26] = 6", 1, 2, 0);
	trans[2][92]	= settr(294,0,93,96,96,"OK[27] = 28", 1, 2, 0);
	trans[2][93]	= settr(295,0,94,97,97,"OK[28] = 14", 1, 2, 0);
	trans[2][94]	= settr(296,0,95,98,98,"OK[29] = 30", 1, 2, 0);
	trans[2][95]	= settr(297,0,96,99,99,"OK[30] = 31", 1, 2, 0);
	trans[2][96]	= settr(298,0,97,100,100,"OK[31] = 0", 1, 2, 0);
	trans[2][97]	= settr(299,0,98,101,101,"maxP = 0", 1, 2, 0);
	trans[2][98]	= settr(300,0,99,102,102,"currentP = 0", 1, 2, 0);
	trans[2][99]	= settr(301,0,100,103,103,"(run equip(7,7,0))", 1, 2, 0);
	trans[2][100]	= settr(302,0,101,104,104,"(run main())", 0, 2, 0);
	trans[2][101]	= settr(303,0,102,105,0,"assert(!(((arbitrateEnded==1)&&(numOfEvent!=0))))", 1, 2, 0);
	trans[2][102]	= settr(304,0,0,106,106,"-end-", 0, 3500, 0);

	/* proctype 1: main */

	trans[1] = (Trans **) emalloc(132*sizeof(Trans *));

	T = trans[1][7] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,5,0,0,"IF", 0, 2, 0);
	trans[1][1]	= settr(72,0,9,107,107,"((currentIndex==31))", 0, 2, 0); /* m: 2 -> 9,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"message = commonEventTable[Priority]",0,0,0);
	trans[1][8]	= settr(79,0,9,1,0,".(goto)", 0, 2, 0);
	trans[1][3]	= settr(74,0,9,108,108,"((currentIndex==0))", 0, 2, 0); /* m: 4 -> 9,0 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"message = commonEventTable[Priority]",0,0,0);
	trans[1][5]	= settr(76,0,6,2,0,"else", 0, 2, 0);
	trans[1][6]	= settr(77,0,9,1,0,"(1)", 0, 2, 0);
	trans[1][9]	= settr(80,0,10,109,109,"totalSendNum = (totalSendNum+1)", 1, 2, 0);
	trans[1][10]	= settr(81,0,24,110,110,"temp = 0", 0, 2, 0); /* m: 11 -> 0,24 */
	reached1[11] = 1;
	trans[1][11]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][25]	= settr(96,0,24,1,0,".(goto)", 0, 2, 0);
	T = trans[1][24] = settr(95,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(95,0,12,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(95,0,22,0,0,"DO", 0, 2, 0);
	trans[1][12]	= settr(83,0,19,111,0,"((i<=(numOfEquip-1)))", 1, 2, 0);
	T = trans[1][19] = settr(90,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(90,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(90,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(90,0,17,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(84,0,14,112,0,"(nempty(in[i]))", 1, 503, 0);
	trans[1][14]	= settr(85,0,21,113,113,"in[i]?temp", 1, 503, 0);
	trans[1][20]	= settr(91,0,21,1,0,".(goto)", 0, 2, 0); /* m: 21 -> 0,24 */
	reached1[21] = 1;
	trans[1][15]	= settr(86,0,16,114,0,"(nempty(out[i]))", 1, 504, 0);
	trans[1][16]	= settr(87,0,21,115,115,"out[i]?temp", 1, 504, 0);
	trans[1][17]	= settr(88,0,18,116,0,"((empty(in[i])&&empty(out[i])))", 1, 1003, 1004);
	trans[1][18]	= settr(89,0,24,117,117,"(1)", 0, 2, 0); /* m: 21 -> 24,0 */
	reached1[21] = 1;
	trans[1][21]	= settr(92,0,24,118,118,"i = (i+1)", 0, 2, 0);
	trans[1][22]	= settr(93,0,27,2,0,"else", 0, 2, 0);
	trans[1][23]	= settr(94,0,27,1,0,"goto :b1", 0, 2, 0); /* m: 27 -> 0,33 */
	reached1[27] = 1;
	trans[1][26]	= settr(97,0,27,1,0,"break", 0, 2, 0);
	trans[1][27]	= settr(98,0,33,119,119,"i = 0", 0, 2, 0);
	trans[1][34]	= settr(105,0,33,1,0,".(goto)", 0, 2, 0);
	T = trans[1][33] = settr(104,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(104,0,28,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(104,0,31,0,0,"DO", 0, 2, 0);
	trans[1][28]	= settr(99,0,29,120,0,"((i<=(numOfEquip-1)))", 1, 2, 0);
	trans[1][29]	= settr(100,0,30,121,121,"out[i]!message", 1, 4, 0);
	trans[1][30]	= settr(101,0,33,122,122,"i = (i+1)", 0, 2, 0);
	trans[1][31]	= settr(102,0,43,2,0,"else", 0, 2, 0);
	trans[1][32]	= settr(103,0,43,1,0,"goto :b2", 0, 2, 0);
	trans[1][35]	= settr(106,0,43,1,0,"break", 0, 2, 0);
	trans[1][36]	= settr(107,0,43,1,0,"goto S2", 0, 2, 0);
	trans[1][37]	= settr(0,0,0,0,0,"i = 1",0,0,0);
	trans[1][44]	= settr(115,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[1][43] = settr(114,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(114,0,38,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(114,0,41,0,0,"DO", 0, 2, 0);
	trans[1][38]	= settr(109,0,39,123,0,"((i<=T_reply))", 0, 2, 0);
	trans[1][39]	= settr(110,0,43,124,124,"(1)", 0, 2, 0); /* m: 40 -> 43,0 */
	reached1[40] = 1;
	trans[1][40]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][41]	= settr(112,0,47,2,0,"else", 0, 2, 0);
	trans[1][42]	= settr(113,0,47,1,0,"goto :b3", 0, 2, 0);
	trans[1][45]	= settr(116,0,47,1,0,"break", 0, 2, 0);
	trans[1][46]	= settr(117,0,47,1,0,"goto S3", 0, 2, 0);
	trans[1][47]	= settr(118,0,48,125,125,"answerNum = 0", 0, 2, 0);
	trans[1][48]	= settr(119,0,59,126,126,"i = 0", 0, 2, 0);
	trans[1][60]	= settr(131,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[1][59] = settr(130,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,49,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(130,0,57,0,0,"DO", 0, 2, 0);
	trans[1][49]	= settr(120,0,54,127,0,"((i<=(numOfEquip-1)))", 1, 2, 0);
	T = trans[1][54] = settr(125,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(125,0,50,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(125,0,52,0,0,"IF", 0, 2, 0);
	trans[1][50]	= settr(121,0,51,128,0,"(nempty(in[i]))", 1, 503, 0);
	trans[1][51]	= settr(122,0,59,129,129,"answerNum = (answerNum+1)", 0, 2, 0); /* m: 56 -> 0,59 */
	reached1[56] = 1;
	trans[1][55]	= settr(126,0,56,1,0,".(goto)", 0, 2, 0); /* m: 56 -> 0,59 */
	reached1[56] = 1;
	trans[1][52]	= settr(123,0,53,130,0,"(empty(in[i]))", 1, 1003, 0);
	trans[1][53]	= settr(124,0,59,131,131,"(1)", 0, 2, 0); /* m: 56 -> 59,0 */
	reached1[56] = 1;
	trans[1][56]	= settr(127,0,59,132,132,"i = (i+1)", 0, 2, 0);
	trans[1][57]	= settr(128,0,88,2,0,"else", 0, 2, 0);
	trans[1][58]	= settr(129,0,88,1,0,"goto :b4", 0, 2, 0);
	trans[1][61]	= settr(132,0,88,1,0,"break", 0, 2, 0);
	T = trans[1][88] = settr(159,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,62,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,67,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,81,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(159,0,86,0,0,"IF", 0, 2, 0);
	trans[1][62]	= settr(133,0,63,133,133,"((answerNum>1))", 0, 2, 0);
	trans[1][63]	= settr(134,0,64,134,134,"currentIndex = Conflict[currentIndex]", 1, 2, 0);
	trans[1][64]	= settr(135,0,65,135,135,"message = table[currentIndex]", 1, 2, 0);
	trans[1][65]	= settr(136,0,7,136,0,"printf('conflict\\n')", 0, 2, 0);
	trans[1][66]	= settr(137,0,7,1,0,"goto S1", 0, 2, 0);
	trans[1][89]	= settr(160,0,90,1,0,".(goto)", 0, 2, 0);
	trans[1][67]	= settr(138,0,69,137,137,"((answerNum==0))", 0, 2, 0); /* m: 68 -> 69,0 */
	reached1[68] = 1;
	trans[1][68]	= settr(0,0,0,0,0,"printf('silent\\n')",0,0,0);
	trans[1][69]	= settr(140,0,78,138,138,"currentIndex = silent[currentIndex]", 1, 2, 0);
	T = trans[1][78] = settr(149,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,72,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(149,0,76,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(141,0,126,139,139,"(((currentIndex==-(2))&&(Priority==(totalPriority-1))))", 1, 2, 0);
	trans[1][71]	= settr(142,0,126,1,0,"goto SF", 0, 2, 0);
	trans[1][79]	= settr(150,0,7,1,0,".(goto)", 0, 2, 0);
	trans[1][72]	= settr(143,0,73,140,140,"(((currentIndex==-(2))&&(Priority<(totalPriority-1))))", 1, 2, 0);
	trans[1][73]	= settr(144,0,7,141,141,"Priority = (Priority+1)", 0, 2, 0); /* m: 74 -> 0,7 */
	reached1[74] = 1;
	trans[1][74]	= settr(0,0,0,0,0,"currentIndex = 0",0,0,0);
	trans[1][75]	= settr(0,0,0,0,0,"printf('Priority = %d\\n',Priority)",0,0,0);
	trans[1][76]	= settr(147,0,77,2,0,"else", 0, 2, 0);
	trans[1][77]	= settr(148,0,7,142,142,"message = table[currentIndex]", 1, 2, 0);
	trans[1][80]	= settr(151,0,7,1,0,"goto S1", 0, 2, 0);
	trans[1][81]	= settr(152,0,82,143,143,"((answerNum==1))", 0, 2, 0);
	trans[1][82]	= settr(153,0,83,144,144,"currentIndex = OK[currentIndex]", 1, 2, 0);
	trans[1][83]	= settr(154,0,84,145,145,"message = table[currentIndex]", 1, 2, 0);
	trans[1][84]	= settr(155,0,90,146,0,"printf('single\\n')", 0, 2, 0);
	trans[1][85]	= settr(156,0,90,1,0,"goto S4", 0, 2, 0);
	trans[1][86]	= settr(157,0,87,2,0,"else", 0, 2, 0);
	trans[1][87]	= settr(158,0,90,147,0,"printf('error\\n')", 0, 2, 0);
	trans[1][90]	= settr(161,0,91,148,148,"j = -(1)", 0, 2, 0);
	trans[1][91]	= settr(162,0,102,149,149,"i = 0", 0, 2, 0);
	trans[1][103]	= settr(174,0,102,1,0,".(goto)", 0, 2, 0);
	T = trans[1][102] = settr(173,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(173,0,92,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(173,0,100,0,0,"DO", 0, 2, 0);
	trans[1][92]	= settr(163,0,97,150,0,"((i<=(numOfEquip-1)))", 1, 2, 0);
	T = trans[1][97] = settr(168,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(168,0,93,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(168,0,95,0,0,"IF", 0, 2, 0);
	trans[1][93]	= settr(164,0,94,151,0,"(nempty(in[i]))", 1, 503, 0);
	trans[1][94]	= settr(165,0,102,152,152,"j = i", 0, 2, 0); /* m: 99 -> 0,102 */
	reached1[99] = 1;
	trans[1][98]	= settr(169,0,99,1,0,".(goto)", 0, 2, 0); /* m: 99 -> 0,102 */
	reached1[99] = 1;
	trans[1][95]	= settr(166,0,96,153,0,"(empty(in[i]))", 1, 1003, 0);
	trans[1][96]	= settr(167,0,102,154,154,"(1)", 0, 2, 0); /* m: 99 -> 102,0 */
	reached1[99] = 1;
	trans[1][99]	= settr(170,0,102,155,155,"i = (i+1)", 0, 2, 0);
	trans[1][100]	= settr(171,0,105,2,0,"else", 0, 2, 0);
	trans[1][101]	= settr(172,0,105,1,0,"goto :b5", 0, 2, 0); /* m: 105 -> 0,106 */
	reached1[105] = 1;
	trans[1][104]	= settr(175,0,105,1,0,"break", 0, 2, 0);
	trans[1][105]	= settr(176,0,106,156,156,"answer = 0", 0, 2, 0);
	trans[1][106]	= settr(177,0,107,157,157,"in[j]?answer", 1, 503, 0);
	trans[1][107]	= settr(178,0,108,158,158,"out[j]!answer", 1, 4, 0);
	trans[1][108]	= settr(179,0,114,159,159,"i = 1", 0, 2, 0);
	trans[1][115]	= settr(186,0,114,1,0,".(goto)", 0, 2, 0);
	T = trans[1][114] = settr(185,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(185,0,109,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(185,0,112,0,0,"DO", 0, 2, 0);
	trans[1][109]	= settr(180,0,110,160,0,"((i<=T_reply))", 0, 2, 0);
	trans[1][110]	= settr(181,0,114,161,161,"(1)", 0, 2, 0); /* m: 111 -> 114,0 */
	reached1[111] = 1;
	trans[1][111]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][112]	= settr(183,0,117,2,0,"else", 0, 2, 0);
	trans[1][113]	= settr(184,0,117,1,0,"goto :b6", 0, 2, 0);
	trans[1][116]	= settr(187,0,117,1,0,"break", 0, 2, 0);
	trans[1][117]	= settr(188,0,118,162,162,"in[j]?answer", 1, 503, 0);
	trans[1][118]	= settr(189,0,123,163,163,"currentP = Priority", 1, 2, 0);
	T = trans[1][123] = settr(194,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(194,0,119,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(194,0,121,0,0,"IF", 0, 2, 0);
	trans[1][119]	= settr(190,0,120,164,0,"((maxP<Priority))", 1, 2, 0);
	trans[1][120]	= settr(191,0,7,165,165,"maxP = Priority", 1, 2, 0);
	trans[1][124]	= settr(195,0,7,1,0,".(goto)", 0, 2, 0);
	trans[1][121]	= settr(192,0,122,2,0,"else", 0, 2, 0);
	trans[1][122]	= settr(193,0,7,1,0,"(1)", 0, 2, 0);
	trans[1][125]	= settr(196,0,7,1,0,"goto S1", 0, 2, 0);
	trans[1][126]	= settr(197,0,127,166,0,"printf('All Ended\\n')", 0, 2, 0);
	trans[1][127]	= settr(198,0,128,167,0,"printf('Total send sum%d\\n',totalSendNum)", 1, 2, 0);
	trans[1][128]	= settr(199,0,129,168,0,"printf('endedEquip number %d\\n',endedEquip)", 1, 2, 0);
	trans[1][129]	= settr(200,0,130,169,0,"printf('total weight sum %d\\n',totalWeightSum)", 1, 2, 0);
	trans[1][130]	= settr(201,0,131,1,0,"(1)", 0, 2, 0);
	trans[1][131]	= settr(202,0,0,170,170,"-end-", 0, 3500, 0);

	/* proctype 0: equip */

	trans[0] = (Trans **) emalloc(73*sizeof(Trans *));

	trans[0][1]	= settr(0,0,17,171,171,"Priority = 100", 0, 2, 0); /* m: 2 -> 0,17 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[0][3]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"addrSub = 0",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"ADSub = 0",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"judge = 0",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"haveIncident = 1",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"signalJudge = 0",0,0,0);
	trans[0][9]	= settr(0,0,0,0,0,"receiveNum = 0",0,0,0);
	trans[0][10]	= settr(0,0,0,0,0,"signalAnswer = ((4<<12)+addr)",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"messageAnswer = addr",0,0,0);
	T = trans[0][17] = settr(16,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,12,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(16,0,14,0,0,"IF", 0, 2, 0);
	trans[0][12]	= settr(11,0,17,172,0,"(empty(out[equipNum]))", 1, 1004, 0);
	trans[0][13]	= settr(12,0,17,1,0,"goto S1", 0, 2, 0);
	trans[0][18]	= settr(17,0,19,1,0,".(goto)", 0, 2, 0);
	trans[0][14]	= settr(13,0,15,173,0,"(nempty(out[equipNum]))", 1, 504, 0);
	trans[0][15]	= settr(14,0,19,174,174,"out[equipNum]?receiveNum", 1, 504, 0);
	trans[0][16]	= settr(15,0,19,1,0,"goto S2", 0, 2, 0);
	trans[0][19]	= settr(18,0,20,175,175,"signalJudge = 1", 0, 2, 0);
	trans[0][20]	= settr(19,0,28,176,176,"fCode = (receiveNum>>12)", 0, 2, 0); /* m: 21 -> 0,28 */
	reached0[21] = 1;
	trans[0][21]	= settr(0,0,0,0,0,"AD = (receiveNum&4095)",0,0,0);
	T = trans[0][28] = settr(27,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(27,0,22,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(27,0,24,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(27,0,26,0,0,"IF", 0, 2, 0);
	trans[0][22]	= settr(21,0,41,177,177,"(((fCode==9)&&(Priority==100)))", 0, 2, 0); /* m: 23 -> 41,0 */
	reached0[23] = 1;
	trans[0][23]	= settr(0,0,0,0,0,"Priority = ((receiveNum&240)>>4)",0,0,0);
	trans[0][29]	= settr(28,0,30,1,0,".(goto)", 0, 2, 0); /* m: 30 -> 0,41 */
	reached0[30] = 1;
	trans[0][24]	= settr(23,0,41,178,178,"(((fCode==9)&&(Priority!=100)))", 0, 2, 0); /* m: 25 -> 41,0 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"Priority = 100",0,0,0);
	trans[0][26]	= settr(25,0,27,2,0,"else", 0, 2, 0);
	trans[0][27]	= settr(26,0,41,179,179,"(1)", 0, 2, 0); /* m: 30 -> 41,0 */
	reached0[30] = 1;
	trans[0][30]	= settr(29,0,41,180,180,"i = 0", 0, 2, 0);
	trans[0][42]	= settr(41,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[0][41] = settr(40,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,31,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(40,0,39,0,0,"DO", 0, 2, 0);
	trans[0][31]	= settr(30,0,36,181,0,"((i<=11))", 0, 2, 0);
	T = trans[0][36] = settr(35,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(35,0,34,0,0,"IF", 0, 2, 0);
	trans[0][32]	= settr(31,0,44,182,0,"((((AD&(1<<(11-i)))>>(11-i))==0))", 0, 2, 0);
	trans[0][33]	= settr(32,0,44,1,0,"goto FZ", 0, 2, 0);
	trans[0][37]	= settr(36,0,38,1,0,".(goto)", 0, 2, 0); /* m: 38 -> 0,41 */
	reached0[38] = 1;
	trans[0][34]	= settr(33,0,35,2,0,"else", 0, 2, 0);
	trans[0][35]	= settr(34,0,41,183,183,"(1)", 0, 2, 0); /* m: 38 -> 41,0 */
	reached0[38] = 1;
	trans[0][38]	= settr(37,0,41,184,184,"i = (i+1)", 0, 2, 0);
	trans[0][39]	= settr(38,0,44,2,0,"else", 0, 2, 0);
	trans[0][40]	= settr(39,0,44,1,0,"goto :b0", 0, 2, 0);
	trans[0][43]	= settr(42,0,44,1,0,"break", 0, 2, 0);
	trans[0][44]	= settr(43,0,45,185,185,"i = (i+1)", 0, 2, 0);
	trans[0][45]	= settr(44,0,51,186,186,"addrSub = (((addr<<i)&4095)>>i)", 0, 2, 0); /* m: 46 -> 0,51 */
	reached0[46] = 1;
	trans[0][46]	= settr(0,0,0,0,0,"ADSub = (((AD<<i)&4095)>>i)",0,0,0);
	T = trans[0][51] = settr(50,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(50,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(50,0,49,0,0,"IF", 0, 2, 0);
	trans[0][47]	= settr(46,0,61,187,187,"((addrSub==ADSub))", 0, 2, 0); /* m: 48 -> 61,0 */
	reached0[48] = 1;
	trans[0][48]	= settr(0,0,0,0,0,"judge = 1",0,0,0);
	trans[0][52]	= settr(51,0,61,1,0,".(goto)", 0, 2, 0);
	trans[0][49]	= settr(48,0,50,2,0,"else", 0, 2, 0);
	trans[0][50]	= settr(49,0,61,188,188,"judge = 0", 0, 2, 0);
	T = trans[0][61] = settr(60,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,53,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,55,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,57,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(60,0,59,0,0,"IF", 0, 2, 0);
	trans[0][53]	= settr(52,0,63,189,189,"(((haveIncident==1)&&(fCode==9)))", 0, 2, 0);
	trans[0][54]	= settr(53,0,63,1,0,"goto S3", 0, 2, 0);
	trans[0][62]	= settr(61,0,63,1,0,".(goto)", 0, 2, 0);
	trans[0][55]	= settr(54,0,63,190,190,"((((haveIncident==1)&&(fCode==13))&&(judge==1)))", 0, 2, 0);
	trans[0][56]	= settr(55,0,63,1,0,"goto S3", 0, 2, 0);
	trans[0][57]	= settr(56,0,65,191,191,"(((fCode==4)&&(judge==1)))", 0, 2, 0);
	trans[0][58]	= settr(57,0,65,1,0,"goto S4", 0, 2, 0);
	trans[0][59]	= settr(58,0,17,2,0,"else", 0, 2, 0);
	trans[0][60]	= settr(59,0,17,1,0,"goto S1", 0, 2, 0);
	trans[0][63]	= settr(62,0,17,192,192,"in[equipNum]!signalAnswer", 1, 3, 0);
	trans[0][64]	= settr(63,0,17,1,0,"goto S1", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,193,193,"haveIncident = 0", 0, 2, 0);
	trans[0][66]	= settr(65,0,68,194,194,"in[equipNum]!messageAnswer", 1, 3, 0);
	trans[0][67]	= settr(66,0,68,1,0,"goto S5", 0, 2, 0);
	trans[0][68]	= settr(67,0,69,195,195,"endedEquip = (endedEquip+1)", 1, 2, 0);
	trans[0][69]	= settr(68,0,70,196,196,"totalWeightSum = (totalWeightSum+(totalSendNum*(3-eventPriority)))", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,197,197,"ended = 1", 0, 2, 0);
	trans[0][71]	= settr(70,0,72,1,0,"(1)", 0, 2, 0);
	trans[0][72]	= settr(71,0,0,198,198,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
