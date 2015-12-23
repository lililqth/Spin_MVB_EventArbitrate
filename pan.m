#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p2 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((currentP>=maxP)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((now.currentP>=now.maxP))))
			continue;
		/* merge: assert(!(!((currentP>=maxP))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !((now.currentP>=now.maxP))), " !( !((currentP>=maxP)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - BA.prm:212 - [Conflict[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.Conflict[0];
		now.Conflict[0] = 1;
#ifdef VAR_RANGES
		logval("Conflict[0]", now.Conflict[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - BA.prm:213 - [Conflict[1] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = now.Conflict[1];
		now.Conflict[1] = 3;
#ifdef VAR_RANGES
		logval("Conflict[1]", now.Conflict[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - BA.prm:214 - [Conflict[2] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = now.Conflict[2];
		now.Conflict[2] = 5;
#ifdef VAR_RANGES
		logval("Conflict[2]", now.Conflict[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - BA.prm:215 - [Conflict[3] = 7] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = now.Conflict[3];
		now.Conflict[3] = 7;
#ifdef VAR_RANGES
		logval("Conflict[3]", now.Conflict[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - BA.prm:216 - [Conflict[4] = 9] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = now.Conflict[4];
		now.Conflict[4] = 9;
#ifdef VAR_RANGES
		logval("Conflict[4]", now.Conflict[4]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - BA.prm:217 - [Conflict[5] = 11] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = now.Conflict[5];
		now.Conflict[5] = 11;
#ifdef VAR_RANGES
		logval("Conflict[5]", now.Conflict[5]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - BA.prm:218 - [Conflict[6] = 13] (0:0:1 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		(trpt+1)->bup.oval = now.Conflict[6];
		now.Conflict[6] = 13;
#ifdef VAR_RANGES
		logval("Conflict[6]", now.Conflict[6]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - BA.prm:219 - [Conflict[7] = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = now.Conflict[7];
		now.Conflict[7] = 15;
#ifdef VAR_RANGES
		logval("Conflict[7]", now.Conflict[7]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - BA.prm:220 - [Conflict[8] = 17] (0:0:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		(trpt+1)->bup.oval = now.Conflict[8];
		now.Conflict[8] = 17;
#ifdef VAR_RANGES
		logval("Conflict[8]", now.Conflict[8]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - BA.prm:221 - [Conflict[9] = 19] (0:0:1 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		(trpt+1)->bup.oval = now.Conflict[9];
		now.Conflict[9] = 19;
#ifdef VAR_RANGES
		logval("Conflict[9]", now.Conflict[9]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - BA.prm:222 - [Conflict[10] = 21] (0:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		(trpt+1)->bup.oval = now.Conflict[10];
		now.Conflict[10] = 21;
#ifdef VAR_RANGES
		logval("Conflict[10]", now.Conflict[10]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - BA.prm:223 - [Conflict[11] = 23] (0:0:1 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.oval = now.Conflict[11];
		now.Conflict[11] = 23;
#ifdef VAR_RANGES
		logval("Conflict[11]", now.Conflict[11]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - BA.prm:224 - [Conflict[12] = 25] (0:0:1 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = now.Conflict[12];
		now.Conflict[12] = 25;
#ifdef VAR_RANGES
		logval("Conflict[12]", now.Conflict[12]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - BA.prm:225 - [Conflict[13] = 27] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = now.Conflict[13];
		now.Conflict[13] = 27;
#ifdef VAR_RANGES
		logval("Conflict[13]", now.Conflict[13]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - BA.prm:226 - [Conflict[14] = 29] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = now.Conflict[14];
		now.Conflict[14] = 29;
#ifdef VAR_RANGES
		logval("Conflict[14]", now.Conflict[14]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - BA.prm:227 - [Conflict[15] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = now.Conflict[15];
		now.Conflict[15] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[15]", now.Conflict[15]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 17 - BA.prm:228 - [Conflict[16] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		(trpt+1)->bup.oval = now.Conflict[16];
		now.Conflict[16] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[16]", now.Conflict[16]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 18 - BA.prm:229 - [Conflict[17] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		(trpt+1)->bup.oval = now.Conflict[17];
		now.Conflict[17] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[17]", now.Conflict[17]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - BA.prm:230 - [Conflict[18] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = now.Conflict[18];
		now.Conflict[18] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[18]", now.Conflict[18]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - BA.prm:231 - [Conflict[19] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.oval = now.Conflict[19];
		now.Conflict[19] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[19]", now.Conflict[19]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - BA.prm:232 - [Conflict[20] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = now.Conflict[20];
		now.Conflict[20] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[20]", now.Conflict[20]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - BA.prm:233 - [Conflict[21] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		(trpt+1)->bup.oval = now.Conflict[21];
		now.Conflict[21] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[21]", now.Conflict[21]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - BA.prm:234 - [Conflict[22] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = now.Conflict[22];
		now.Conflict[22] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[22]", now.Conflict[22]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - BA.prm:235 - [Conflict[23] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = now.Conflict[23];
		now.Conflict[23] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[23]", now.Conflict[23]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 25 - BA.prm:236 - [Conflict[24] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		(trpt+1)->bup.oval = now.Conflict[24];
		now.Conflict[24] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[24]", now.Conflict[24]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 26 - BA.prm:237 - [Conflict[25] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		(trpt+1)->bup.oval = now.Conflict[25];
		now.Conflict[25] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[25]", now.Conflict[25]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 27 - BA.prm:238 - [Conflict[26] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = now.Conflict[26];
		now.Conflict[26] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[26]", now.Conflict[26]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 28 - BA.prm:239 - [Conflict[27] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		(trpt+1)->bup.oval = now.Conflict[27];
		now.Conflict[27] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[27]", now.Conflict[27]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 29 - BA.prm:240 - [Conflict[28] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		(trpt+1)->bup.oval = now.Conflict[28];
		now.Conflict[28] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[28]", now.Conflict[28]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 30 - BA.prm:241 - [Conflict[29] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.oval = now.Conflict[29];
		now.Conflict[29] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[29]", now.Conflict[29]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 31 - BA.prm:242 - [Conflict[30] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = now.Conflict[30];
		now.Conflict[30] =  -(1);
#ifdef VAR_RANGES
		logval("Conflict[30]", now.Conflict[30]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 32 - BA.prm:243 - [Conflict[15] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = now.Conflict[15];
		now.Conflict[15] = 0;
#ifdef VAR_RANGES
		logval("Conflict[15]", now.Conflict[15]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 33 - BA.prm:245 - [silent[0] = -(2)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = now.silent[0];
		now.silent[0] =  -(2);
#ifdef VAR_RANGES
		logval("silent[0]", now.silent[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 34 - BA.prm:246 - [silent[1] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = now.silent[1];
		now.silent[1] = 2;
#ifdef VAR_RANGES
		logval("silent[1]", now.silent[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 35 - BA.prm:247 - [silent[2] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.oval = now.silent[2];
		now.silent[2] = 31;
#ifdef VAR_RANGES
		logval("silent[2]", now.silent[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 36 - BA.prm:248 - [silent[3] = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.oval = now.silent[3];
		now.silent[3] = 4;
#ifdef VAR_RANGES
		logval("silent[3]", now.silent[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 37 - BA.prm:249 - [silent[4] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = now.silent[4];
		now.silent[4] = 2;
#ifdef VAR_RANGES
		logval("silent[4]", now.silent[4]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 38 - BA.prm:250 - [silent[5] = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = now.silent[5];
		now.silent[5] = 6;
#ifdef VAR_RANGES
		logval("silent[5]", now.silent[5]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 39 - BA.prm:251 - [silent[6] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		(trpt+1)->bup.oval = now.silent[6];
		now.silent[6] = 31;
#ifdef VAR_RANGES
		logval("silent[6]", now.silent[6]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 40 - BA.prm:252 - [silent[7] = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.oval = now.silent[7];
		now.silent[7] = 8;
#ifdef VAR_RANGES
		logval("silent[7]", now.silent[7]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 41 - BA.prm:253 - [silent[8] = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		(trpt+1)->bup.oval = now.silent[8];
		now.silent[8] = 4;
#ifdef VAR_RANGES
		logval("silent[8]", now.silent[8]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 42 - BA.prm:254 - [silent[9] = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		(trpt+1)->bup.oval = now.silent[9];
		now.silent[9] = 10;
#ifdef VAR_RANGES
		logval("silent[9]", now.silent[9]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 43 - BA.prm:255 - [silent[10] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		(trpt+1)->bup.oval = now.silent[10];
		now.silent[10] = 2;
#ifdef VAR_RANGES
		logval("silent[10]", now.silent[10]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 44 - BA.prm:256 - [silent[11] = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = now.silent[11];
		now.silent[11] = 12;
#ifdef VAR_RANGES
		logval("silent[11]", now.silent[11]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 45 - BA.prm:257 - [silent[12] = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = now.silent[12];
		now.silent[12] = 6;
#ifdef VAR_RANGES
		logval("silent[12]", now.silent[12]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 46 - BA.prm:258 - [silent[13] = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = now.silent[13];
		now.silent[13] = 14;
#ifdef VAR_RANGES
		logval("silent[13]", now.silent[13]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 47 - BA.prm:259 - [silent[14] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		(trpt+1)->bup.oval = now.silent[14];
		now.silent[14] = 31;
#ifdef VAR_RANGES
		logval("silent[14]", now.silent[14]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 48 - BA.prm:260 - [silent[15] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = now.silent[15];
		now.silent[15] =  -(1);
#ifdef VAR_RANGES
		logval("silent[15]", now.silent[15]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 49 - BA.prm:261 - [silent[16] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		(trpt+1)->bup.oval = now.silent[16];
		now.silent[16] =  -(1);
#ifdef VAR_RANGES
		logval("silent[16]", now.silent[16]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 50 - BA.prm:262 - [silent[17] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		(trpt+1)->bup.oval = now.silent[17];
		now.silent[17] =  -(1);
#ifdef VAR_RANGES
		logval("silent[17]", now.silent[17]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 51 - BA.prm:263 - [silent[18] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		(trpt+1)->bup.oval = now.silent[18];
		now.silent[18] =  -(1);
#ifdef VAR_RANGES
		logval("silent[18]", now.silent[18]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 52 - BA.prm:264 - [silent[19] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.oval = now.silent[19];
		now.silent[19] =  -(1);
#ifdef VAR_RANGES
		logval("silent[19]", now.silent[19]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 53 - BA.prm:265 - [silent[20] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		(trpt+1)->bup.oval = now.silent[20];
		now.silent[20] =  -(1);
#ifdef VAR_RANGES
		logval("silent[20]", now.silent[20]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 54 - BA.prm:266 - [silent[21] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		(trpt+1)->bup.oval = now.silent[21];
		now.silent[21] =  -(1);
#ifdef VAR_RANGES
		logval("silent[21]", now.silent[21]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 55 - BA.prm:267 - [silent[22] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		(trpt+1)->bup.oval = now.silent[22];
		now.silent[22] =  -(1);
#ifdef VAR_RANGES
		logval("silent[22]", now.silent[22]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 56 - BA.prm:268 - [silent[23] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		(trpt+1)->bup.oval = now.silent[23];
		now.silent[23] =  -(1);
#ifdef VAR_RANGES
		logval("silent[23]", now.silent[23]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 57 - BA.prm:269 - [silent[24] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		(trpt+1)->bup.oval = now.silent[24];
		now.silent[24] =  -(1);
#ifdef VAR_RANGES
		logval("silent[24]", now.silent[24]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 58 - BA.prm:270 - [silent[25] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		(trpt+1)->bup.oval = now.silent[25];
		now.silent[25] =  -(1);
#ifdef VAR_RANGES
		logval("silent[25]", now.silent[25]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 59 - BA.prm:271 - [silent[26] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][59] = 1;
		(trpt+1)->bup.oval = now.silent[26];
		now.silent[26] =  -(1);
#ifdef VAR_RANGES
		logval("silent[26]", now.silent[26]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 60 - BA.prm:272 - [silent[27] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		(trpt+1)->bup.oval = now.silent[27];
		now.silent[27] =  -(1);
#ifdef VAR_RANGES
		logval("silent[27]", now.silent[27]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 61 - BA.prm:273 - [silent[28] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		(trpt+1)->bup.oval = now.silent[28];
		now.silent[28] =  -(1);
#ifdef VAR_RANGES
		logval("silent[28]", now.silent[28]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 62 - BA.prm:274 - [silent[29] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		(trpt+1)->bup.oval = now.silent[29];
		now.silent[29] =  -(1);
#ifdef VAR_RANGES
		logval("silent[29]", now.silent[29]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 63 - BA.prm:275 - [silent[30] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		(trpt+1)->bup.oval = now.silent[30];
		now.silent[30] =  -(1);
#ifdef VAR_RANGES
		logval("silent[30]", now.silent[30]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 64 - BA.prm:276 - [silent[31] = -(2)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = now.silent[31];
		now.silent[31] =  -(2);
#ifdef VAR_RANGES
		logval("silent[31]", now.silent[31]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 65 - BA.prm:278 - [OK[0] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		(trpt+1)->bup.oval = now.OK[0];
		now.OK[0] = 31;
#ifdef VAR_RANGES
		logval("OK[0]", now.OK[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 66 - BA.prm:279 - [OK[1] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		(trpt+1)->bup.oval = now.OK[1];
		now.OK[1] = 2;
#ifdef VAR_RANGES
		logval("OK[1]", now.OK[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 67 - BA.prm:280 - [OK[2] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		(trpt+1)->bup.oval = now.OK[2];
		now.OK[2] = 31;
#ifdef VAR_RANGES
		logval("OK[2]", now.OK[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 68 - BA.prm:281 - [OK[3] = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[2][68] = 1;
		(trpt+1)->bup.oval = now.OK[3];
		now.OK[3] = 4;
#ifdef VAR_RANGES
		logval("OK[3]", now.OK[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 69 - BA.prm:282 - [OK[4] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][69] = 1;
		(trpt+1)->bup.oval = now.OK[4];
		now.OK[4] = 2;
#ifdef VAR_RANGES
		logval("OK[4]", now.OK[4]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 70 - BA.prm:283 - [OK[5] = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[2][70] = 1;
		(trpt+1)->bup.oval = now.OK[5];
		now.OK[5] = 6;
#ifdef VAR_RANGES
		logval("OK[5]", now.OK[5]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 71 - BA.prm:284 - [OK[6] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][71] = 1;
		(trpt+1)->bup.oval = now.OK[6];
		now.OK[6] = 31;
#ifdef VAR_RANGES
		logval("OK[6]", now.OK[6]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 72 - BA.prm:285 - [OK[7] = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[2][72] = 1;
		(trpt+1)->bup.oval = now.OK[7];
		now.OK[7] = 8;
#ifdef VAR_RANGES
		logval("OK[7]", now.OK[7]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 73 - BA.prm:286 - [OK[8] = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[2][73] = 1;
		(trpt+1)->bup.oval = now.OK[8];
		now.OK[8] = 4;
#ifdef VAR_RANGES
		logval("OK[8]", now.OK[8]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 74 - BA.prm:287 - [OK[9] = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		(trpt+1)->bup.oval = now.OK[9];
		now.OK[9] = 10;
#ifdef VAR_RANGES
		logval("OK[9]", now.OK[9]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 75 - BA.prm:288 - [OK[10] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][75] = 1;
		(trpt+1)->bup.oval = now.OK[10];
		now.OK[10] = 2;
#ifdef VAR_RANGES
		logval("OK[10]", now.OK[10]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 76 - BA.prm:289 - [OK[11] = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[2][76] = 1;
		(trpt+1)->bup.oval = now.OK[11];
		now.OK[11] = 12;
#ifdef VAR_RANGES
		logval("OK[11]", now.OK[11]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 77 - BA.prm:290 - [OK[12] = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[2][77] = 1;
		(trpt+1)->bup.oval = now.OK[12];
		now.OK[12] = 6;
#ifdef VAR_RANGES
		logval("OK[12]", now.OK[12]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 78 - BA.prm:291 - [OK[13] = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[2][78] = 1;
		(trpt+1)->bup.oval = now.OK[13];
		now.OK[13] = 14;
#ifdef VAR_RANGES
		logval("OK[13]", now.OK[13]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 79 - BA.prm:292 - [OK[14] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		(trpt+1)->bup.oval = now.OK[14];
		now.OK[14] = 31;
#ifdef VAR_RANGES
		logval("OK[14]", now.OK[14]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 80 - BA.prm:293 - [OK[15] = 16] (0:0:1 - 1)
		IfNotBlocked
		reached[2][80] = 1;
		(trpt+1)->bup.oval = now.OK[15];
		now.OK[15] = 16;
#ifdef VAR_RANGES
		logval("OK[15]", now.OK[15]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 81 - BA.prm:294 - [OK[16] = 8] (0:0:1 - 1)
		IfNotBlocked
		reached[2][81] = 1;
		(trpt+1)->bup.oval = now.OK[16];
		now.OK[16] = 8;
#ifdef VAR_RANGES
		logval("OK[16]", now.OK[16]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 82 - BA.prm:295 - [OK[17] = 18] (0:0:1 - 1)
		IfNotBlocked
		reached[2][82] = 1;
		(trpt+1)->bup.oval = now.OK[17];
		now.OK[17] = 18;
#ifdef VAR_RANGES
		logval("OK[17]", now.OK[17]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 83 - BA.prm:296 - [OK[18] = 4] (0:0:1 - 1)
		IfNotBlocked
		reached[2][83] = 1;
		(trpt+1)->bup.oval = now.OK[18];
		now.OK[18] = 4;
#ifdef VAR_RANGES
		logval("OK[18]", now.OK[18]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 84 - BA.prm:297 - [OK[19] = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][84] = 1;
		(trpt+1)->bup.oval = now.OK[19];
		now.OK[19] = 20;
#ifdef VAR_RANGES
		logval("OK[19]", now.OK[19]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 85 - BA.prm:298 - [OK[20] = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[2][85] = 1;
		(trpt+1)->bup.oval = now.OK[20];
		now.OK[20] = 10;
#ifdef VAR_RANGES
		logval("OK[20]", now.OK[20]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 86 - BA.prm:299 - [OK[21] = 22] (0:0:1 - 1)
		IfNotBlocked
		reached[2][86] = 1;
		(trpt+1)->bup.oval = now.OK[21];
		now.OK[21] = 22;
#ifdef VAR_RANGES
		logval("OK[21]", now.OK[21]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 87 - BA.prm:300 - [OK[22] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][87] = 1;
		(trpt+1)->bup.oval = now.OK[22];
		now.OK[22] = 2;
#ifdef VAR_RANGES
		logval("OK[22]", now.OK[22]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 88 - BA.prm:301 - [OK[23] = 24] (0:0:1 - 1)
		IfNotBlocked
		reached[2][88] = 1;
		(trpt+1)->bup.oval = now.OK[23];
		now.OK[23] = 24;
#ifdef VAR_RANGES
		logval("OK[23]", now.OK[23]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 89 - BA.prm:302 - [OK[24] = 12] (0:0:1 - 1)
		IfNotBlocked
		reached[2][89] = 1;
		(trpt+1)->bup.oval = now.OK[24];
		now.OK[24] = 12;
#ifdef VAR_RANGES
		logval("OK[24]", now.OK[24]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 90 - BA.prm:303 - [OK[25] = 26] (0:0:1 - 1)
		IfNotBlocked
		reached[2][90] = 1;
		(trpt+1)->bup.oval = now.OK[25];
		now.OK[25] = 26;
#ifdef VAR_RANGES
		logval("OK[25]", now.OK[25]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 91 - BA.prm:304 - [OK[26] = 6] (0:0:1 - 1)
		IfNotBlocked
		reached[2][91] = 1;
		(trpt+1)->bup.oval = now.OK[26];
		now.OK[26] = 6;
#ifdef VAR_RANGES
		logval("OK[26]", now.OK[26]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 92 - BA.prm:305 - [OK[27] = 28] (0:0:1 - 1)
		IfNotBlocked
		reached[2][92] = 1;
		(trpt+1)->bup.oval = now.OK[27];
		now.OK[27] = 28;
#ifdef VAR_RANGES
		logval("OK[27]", now.OK[27]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 93 - BA.prm:306 - [OK[28] = 14] (0:0:1 - 1)
		IfNotBlocked
		reached[2][93] = 1;
		(trpt+1)->bup.oval = now.OK[28];
		now.OK[28] = 14;
#ifdef VAR_RANGES
		logval("OK[28]", now.OK[28]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 94 - BA.prm:307 - [OK[29] = 30] (0:0:1 - 1)
		IfNotBlocked
		reached[2][94] = 1;
		(trpt+1)->bup.oval = now.OK[29];
		now.OK[29] = 30;
#ifdef VAR_RANGES
		logval("OK[29]", now.OK[29]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 95 - BA.prm:308 - [OK[30] = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[2][95] = 1;
		(trpt+1)->bup.oval = now.OK[30];
		now.OK[30] = 31;
#ifdef VAR_RANGES
		logval("OK[30]", now.OK[30]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 96 - BA.prm:309 - [OK[31] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][96] = 1;
		(trpt+1)->bup.oval = now.OK[31];
		now.OK[31] = 0;
#ifdef VAR_RANGES
		logval("OK[31]", now.OK[31]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 97 - BA.prm:311 - [maxP = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][97] = 1;
		(trpt+1)->bup.oval = now.maxP;
		now.maxP = 0;
#ifdef VAR_RANGES
		logval("maxP", now.maxP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 98 - BA.prm:312 - [currentP = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][98] = 1;
		(trpt+1)->bup.oval = now.currentP;
		now.currentP = 0;
#ifdef VAR_RANGES
		logval("currentP", now.currentP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 99 - BA.prm:313 - [(run equip(7,7,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][99] = 1;
		if (!(addproc(II, 1, 0, 7, 7, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 100 - BA.prm:314 - [(run main())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][100] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 101 - BA.prm:316 - [assert(!(((arbitrateEnded==1)&&(numOfEvent!=0))))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][101] = 1;
		spin_assert( !(((((int)now.arbitrateEnded)==1)&&(now.numOfEvent!=0))), " !(((arbitrateEnded==1)&&(numOfEvent!=0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 102 - BA.prm:317 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][102] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main */
	case 107: // STATE 1 - BA.prm:131 - [((currentIndex==31))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((P1 *)this)->currentIndex==31)))
			continue;
		/* merge: message = commonEventTable[Priority](0, 2, 9) */
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->message;
		((P1 *)this)->message = ((P1 *)this)->commonEventTable[ Index(((P1 *)this)->Priority, 4) ];
#ifdef VAR_RANGES
		logval("main:message", ((P1 *)this)->message);
#endif
		;
		/* merge: .(goto)(0, 8, 9) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 108: // STATE 3 - BA.prm:132 - [((currentIndex==0))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)this)->currentIndex==0)))
			continue;
		/* merge: message = commonEventTable[Priority](0, 4, 9) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->message;
		((P1 *)this)->message = ((P1 *)this)->commonEventTable[ Index(((P1 *)this)->Priority, 4) ];
#ifdef VAR_RANGES
		logval("main:message", ((P1 *)this)->message);
#endif
		;
		/* merge: .(goto)(0, 8, 9) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 109: // STATE 9 - BA.prm:135 - [totalSendNum = (totalSendNum+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = now.totalSendNum;
		now.totalSendNum = (now.totalSendNum+1);
#ifdef VAR_RANGES
		logval("totalSendNum", now.totalSendNum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 10 - BA.prm:136 - [temp = 0] (0:24:2 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->temp;
		((P1 *)this)->temp = 0;
#ifdef VAR_RANGES
		logval("main:temp", ((P1 *)this)->temp);
#endif
		;
		/* merge: i = 0(24, 11, 24) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 111: // STATE 12 - BA.prm:139 - [((i<=(numOfEquip-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((P1 *)this)->i<=(now.numOfEquip-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 13 - BA.prm:141 - [(nempty(in[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((q_len(now.in[ Index(((P1 *)this)->i, 16) ])>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 14 - BA.prm:141 - [in[i]?temp] (0:0:2 - 1)
		reached[1][14] = 1;
		if (q_len(now.in[ Index(((P1 *)this)->i, 16) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->temp;
		;
		((P1 *)this)->temp = qrecv(now.in[ Index(((P1 *)this)->i, 16) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("main:temp", ((P1 *)this)->temp);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.in[ Index(((P1 *)this)->i, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->temp); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: temp */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->temp;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->temp = 0;
		_m = 4; goto P999; /* 0 */
	case 114: // STATE 15 - BA.prm:142 - [(nempty(out[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((q_len(now.out[ Index(((P1 *)this)->i, 16) ])>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 16 - BA.prm:142 - [out[i]?temp] (0:0:2 - 1)
		reached[1][16] = 1;
		if (q_len(now.out[ Index(((P1 *)this)->i, 16) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->temp;
		;
		((P1 *)this)->temp = qrecv(now.out[ Index(((P1 *)this)->i, 16) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("main:temp", ((P1 *)this)->temp);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.out[ Index(((P1 *)this)->i, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->temp); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: temp */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->temp;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->temp = 0;
		_m = 4; goto P999; /* 0 */
	case 116: // STATE 17 - BA.prm:143 - [((empty(in[i])&&empty(out[i])))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!(((q_len(now.in[ Index(((P1 *)this)->i, 16) ])==0)&&(q_len(now.out[ Index(((P1 *)this)->i, 16) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 18 - BA.prm:143 - [(1)] (24:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(24, 20, 24) */
		reached[1][20] = 1;
		;
		/* merge: i = (i+1)(24, 21, 24) */
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 118: // STATE 21 - BA.prm:139 - [i = (i+1)] (0:24:1 - 4)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 119: // STATE 27 - BA.prm:146 - [i = 0] (0:33:1 - 3)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 34, 33) */
		reached[1][34] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 120: // STATE 28 - BA.prm:146 - [((i<=(numOfEquip-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((P1 *)this)->i<=(now.numOfEquip-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 29 - BA.prm:147 - [out[i]!message] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (q_full(now.out[ Index(((P1 *)this)->i, 16) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.out[ Index(((P1 *)this)->i, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->message); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.out[ Index(((P1 *)this)->i, 16) ], 0, ((P1 *)this)->message, 1);
		_m = 2; goto P999; /* 0 */
	case 122: // STATE 30 - BA.prm:146 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 38 - BA.prm:152 - [((i<=T_reply))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!((((P1 *)this)->i<=((P1 *)this)->T_reply)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 39 - BA.prm:153 - [(1)] (43:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!(1))
			continue;
		/* merge: i = (i+1)(0, 40, 43) */
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[1][44] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 125: // STATE 47 - BA.prm:158 - [answerNum = 0] (0:0:1 - 4)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->answerNum;
		((P1 *)this)->answerNum = 0;
#ifdef VAR_RANGES
		logval("main:answerNum", ((P1 *)this)->answerNum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 48 - BA.prm:159 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 49 - BA.prm:159 - [((i<=(numOfEquip-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((P1 *)this)->i<=(now.numOfEquip-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 50 - BA.prm:161 - [(nempty(in[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!((q_len(now.in[ Index(((P1 *)this)->i, 16) ])>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 51 - BA.prm:162 - [answerNum = (answerNum+1)] (0:59:2 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->answerNum;
		((P1 *)this)->answerNum = (((P1 *)this)->answerNum+1);
#ifdef VAR_RANGES
		logval("main:answerNum", ((P1 *)this)->answerNum);
#endif
		;
		/* merge: .(goto)(59, 55, 59) */
		reached[1][55] = 1;
		;
		/* merge: i = (i+1)(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[1][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 130: // STATE 52 - BA.prm:163 - [(empty(in[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((q_len(now.in[ Index(((P1 *)this)->i, 16) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 53 - BA.prm:163 - [(1)] (59:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(59, 55, 59) */
		reached[1][55] = 1;
		;
		/* merge: i = (i+1)(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[1][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 132: // STATE 56 - BA.prm:159 - [i = (i+1)] (0:59:1 - 3)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[1][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 133: // STATE 62 - BA.prm:167 - [((answerNum>1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((P1 *)this)->answerNum>1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: answerNum */  (trpt+1)->bup.oval = ((P1 *)this)->answerNum;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->answerNum = 0;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 63 - BA.prm:167 - [currentIndex = Conflict[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->currentIndex;
		((P1 *)this)->currentIndex = now.Conflict[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:currentIndex", ((P1 *)this)->currentIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 64 - BA.prm:167 - [message = table[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->message;
		((P1 *)this)->message = now.table[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:message", ((P1 *)this)->message);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 65 - BA.prm:167 - [printf('conflict\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		Printf("conflict\n");
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 67 - BA.prm:168 - [((answerNum==0))] (69:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((((P1 *)this)->answerNum==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: answerNum */  (trpt+1)->bup.oval = ((P1 *)this)->answerNum;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->answerNum = 0;
		/* merge: printf('silent\\n')(0, 68, 69) */
		reached[1][68] = 1;
		Printf("silent\n");
		_m = 3; goto P999; /* 1 */
	case 138: // STATE 69 - BA.prm:170 - [currentIndex = silent[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->currentIndex;
		((P1 *)this)->currentIndex = now.silent[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:currentIndex", ((P1 *)this)->currentIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 70 - BA.prm:172 - [(((currentIndex==-(2))&&(Priority==(totalPriority-1))))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!(((((P1 *)this)->currentIndex== -(2))&&(((P1 *)this)->Priority==(now.totalPriority-1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currentIndex */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->currentIndex;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->currentIndex = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: Priority */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->Priority;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->Priority = 0;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 72 - BA.prm:173 - [(((currentIndex==-(2))&&(Priority<(totalPriority-1))))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!(((((P1 *)this)->currentIndex== -(2))&&(((P1 *)this)->Priority<(now.totalPriority-1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: currentIndex */  (trpt+1)->bup.oval = ((P1 *)this)->currentIndex;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->currentIndex = 0;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 73 - BA.prm:173 - [Priority = (Priority+1)] (0:7:2 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->Priority;
		((P1 *)this)->Priority = (((P1 *)this)->Priority+1);
#ifdef VAR_RANGES
		logval("main:Priority", ((P1 *)this)->Priority);
#endif
		;
		/* merge: currentIndex = 0(7, 74, 7) */
		reached[1][74] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->currentIndex;
		((P1 *)this)->currentIndex = 0;
#ifdef VAR_RANGES
		logval("main:currentIndex", ((P1 *)this)->currentIndex);
#endif
		;
		/* merge: printf('Priority = %d\\n',Priority)(7, 75, 7) */
		reached[1][75] = 1;
		Printf("Priority = %d\n", ((P1 *)this)->Priority);
		/* merge: .(goto)(0, 79, 7) */
		reached[1][79] = 1;
		;
		/* merge: goto S1(0, 80, 7) */
		reached[1][80] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 142: // STATE 77 - BA.prm:174 - [message = table[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->message;
		((P1 *)this)->message = now.table[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:message", ((P1 *)this)->message);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 81 - BA.prm:177 - [((answerNum==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (!((((P1 *)this)->answerNum==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: answerNum */  (trpt+1)->bup.oval = ((P1 *)this)->answerNum;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->answerNum = 0;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 82 - BA.prm:177 - [currentIndex = OK[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->currentIndex;
		((P1 *)this)->currentIndex = now.OK[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:currentIndex", ((P1 *)this)->currentIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 83 - BA.prm:177 - [message = table[currentIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->message;
		((P1 *)this)->message = now.table[ Index(((P1 *)this)->currentIndex, 32) ];
#ifdef VAR_RANGES
		logval("main:message", ((P1 *)this)->message);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 84 - BA.prm:177 - [printf('single\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		Printf("single\n");
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 87 - BA.prm:178 - [printf('error\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		Printf("error\n");
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 90 - BA.prm:182 - [j = -(1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][90] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->j;
		((P1 *)this)->j =  -(1);
#ifdef VAR_RANGES
		logval("main:j", ((P1 *)this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 91 - BA.prm:183 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 92 - BA.prm:183 - [((i<=(numOfEquip-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		if (!((((P1 *)this)->i<=(now.numOfEquip-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 93 - BA.prm:185 - [(nempty(in[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		if (!((q_len(now.in[ Index(((P1 *)this)->i, 16) ])>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 94 - BA.prm:185 - [j = i] (0:102:2 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->j;
		((P1 *)this)->j = ((P1 *)this)->i;
#ifdef VAR_RANGES
		logval("main:j", ((P1 *)this)->j);
#endif
		;
		/* merge: .(goto)(102, 98, 102) */
		reached[1][98] = 1;
		;
		/* merge: i = (i+1)(102, 99, 102) */
		reached[1][99] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[1][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 153: // STATE 95 - BA.prm:186 - [(empty(in[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		if (!((q_len(now.in[ Index(((P1 *)this)->i, 16) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 96 - BA.prm:186 - [(1)] (102:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(102, 98, 102) */
		reached[1][98] = 1;
		;
		/* merge: i = (i+1)(102, 99, 102) */
		reached[1][99] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[1][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 155: // STATE 99 - BA.prm:183 - [i = (i+1)] (0:102:1 - 3)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[1][103] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 156: // STATE 105 - BA.prm:190 - [answer = 0] (0:106:1 - 3)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->answer;
		((P1 *)this)->answer = 0;
#ifdef VAR_RANGES
		logval("main:answer", ((P1 *)this)->answer);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 106 - BA.prm:190 - [in[j]?answer] (0:0:1 - 1)
		reached[1][106] = 1;
		if (q_len(now.in[ Index(((P1 *)this)->j, 16) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)this)->answer;
		;
		((P1 *)this)->answer = qrecv(now.in[ Index(((P1 *)this)->j, 16) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("main:answer", ((P1 *)this)->answer);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.in[ Index(((P1 *)this)->j, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->answer); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 158: // STATE 107 - BA.prm:191 - [out[j]!answer] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (q_full(now.out[ Index(((P1 *)this)->j, 16) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.out[ Index(((P1 *)this)->j, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->answer); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.out[ Index(((P1 *)this)->j, 16) ], 0, ((P1 *)this)->answer, 1);
		_m = 2; goto P999; /* 0 */
	case 159: // STATE 108 - BA.prm:192 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 1;
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 109 - BA.prm:192 - [((i<=T_reply))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!((((P1 *)this)->i<=((P1 *)this)->T_reply)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 110 - BA.prm:193 - [(1)] (114:0:1 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!(1))
			continue;
		/* merge: i = (i+1)(0, 111, 114) */
		reached[1][111] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("main:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 115, 114) */
		reached[1][115] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 162: // STATE 117 - BA.prm:195 - [in[j]?answer] (0:0:3 - 3)
		reached[1][117] = 1;
		if (q_len(now.in[ Index(((P1 *)this)->j, 16) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->answer;
		;
		((P1 *)this)->answer = qrecv(now.in[ Index(((P1 *)this)->j, 16) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("main:answer", ((P1 *)this)->answer);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.in[ Index(((P1 *)this)->j, 16) ]);
		sprintf(simtmp, "%d", ((P1 *)this)->answer); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: answer */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->answer;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->answer = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: j */  (trpt+1)->bup.ovals[2] = ((P1 *)this)->j;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->j = 0;
		_m = 4; goto P999; /* 0 */
	case 163: // STATE 118 - BA.prm:197 - [currentP = Priority] (0:0:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		(trpt+1)->bup.oval = now.currentP;
		now.currentP = ((P1 *)this)->Priority;
#ifdef VAR_RANGES
		logval("currentP", now.currentP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 119 - BA.prm:199 - [((maxP<Priority))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!((now.maxP<((P1 *)this)->Priority)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 120 - BA.prm:199 - [maxP = Priority] (0:0:1 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		(trpt+1)->bup.oval = now.maxP;
		now.maxP = ((P1 *)this)->Priority;
#ifdef VAR_RANGES
		logval("maxP", now.maxP);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 126 - BA.prm:204 - [printf('All Ended\\n')] (0:0:0 - 2)
		IfNotBlocked
		reached[1][126] = 1;
		Printf("All Ended\n");
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 127 - BA.prm:205 - [printf('Total send sum%d\\n',totalSendNum)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		Printf("Total send sum%d\n", now.totalSendNum);
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 128 - BA.prm:206 - [printf('endedEquip number %d\\n',endedEquip)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		Printf("endedEquip number %d\n", endedEquip);
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 129 - BA.prm:207 - [printf('total weight sum %d\\n',totalWeightSum)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		Printf("total weight sum %d\n", now.totalWeightSum);
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 131 - BA.prm:209 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC equip */
	case 171: // STATE 1 - BA.prm:36 - [Priority = 100] (0:17:11 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->Priority;
		((P0 *)this)->Priority = 100;
#ifdef VAR_RANGES
		logval("equip:Priority", ((P0 *)this)->Priority);
#endif
		;
		/* merge: i = 0(17, 2, 17) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->i;
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: j = 0(17, 3, 17) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->j;
		((P0 *)this)->j = 0;
#ifdef VAR_RANGES
		logval("equip:j", ((P0 *)this)->j);
#endif
		;
		/* merge: addrSub = 0(17, 4, 17) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->addrSub;
		((P0 *)this)->addrSub = 0;
#ifdef VAR_RANGES
		logval("equip:addrSub", ((P0 *)this)->addrSub);
#endif
		;
		/* merge: ADSub = 0(17, 5, 17) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)this)->ADSub;
		((P0 *)this)->ADSub = 0;
#ifdef VAR_RANGES
		logval("equip:ADSub", ((P0 *)this)->ADSub);
#endif
		;
		/* merge: judge = 0(17, 6, 17) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)this)->judge);
		((P0 *)this)->judge = 0;
#ifdef VAR_RANGES
		logval("equip:judge", ((int)((P0 *)this)->judge));
#endif
		;
		/* merge: haveIncident = 1(17, 7, 17) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P0 *)this)->haveIncident);
		((P0 *)this)->haveIncident = 1;
#ifdef VAR_RANGES
		logval("equip:haveIncident", ((int)((P0 *)this)->haveIncident));
#endif
		;
		/* merge: signalJudge = 0(17, 8, 17) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = ((P0 *)this)->signalJudge;
		((P0 *)this)->signalJudge = 0;
#ifdef VAR_RANGES
		logval("equip:signalJudge", ((P0 *)this)->signalJudge);
#endif
		;
		/* merge: receiveNum = 0(17, 9, 17) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[8] = ((P0 *)this)->receiveNum;
		((P0 *)this)->receiveNum = 0;
#ifdef VAR_RANGES
		logval("equip:receiveNum", ((P0 *)this)->receiveNum);
#endif
		;
		/* merge: signalAnswer = ((4<<12)+addr)(17, 10, 17) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[9] = ((P0 *)this)->signalAnswer;
		((P0 *)this)->signalAnswer = ((4<<12)+((P0 *)this)->addr);
#ifdef VAR_RANGES
		logval("equip:signalAnswer", ((P0 *)this)->signalAnswer);
#endif
		;
		/* merge: messageAnswer = addr(17, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[10] = ((P0 *)this)->messageAnswer;
		((P0 *)this)->messageAnswer = ((P0 *)this)->addr;
#ifdef VAR_RANGES
		logval("equip:messageAnswer", ((P0 *)this)->messageAnswer);
#endif
		;
		_m = 3; goto P999; /* 10 */
	case 172: // STATE 12 - BA.prm:48 - [(empty(out[equipNum]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((q_len(now.out[ Index(((P0 *)this)->equipNum, 16) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 14 - BA.prm:49 - [(nempty(out[equipNum]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((q_len(now.out[ Index(((P0 *)this)->equipNum, 16) ])>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 15 - BA.prm:49 - [out[equipNum]?receiveNum] (0:0:1 - 1)
		reached[0][15] = 1;
		if (q_len(now.out[ Index(((P0 *)this)->equipNum, 16) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)this)->receiveNum;
		;
		((P0 *)this)->receiveNum = qrecv(now.out[ Index(((P0 *)this)->equipNum, 16) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("equip:receiveNum", ((P0 *)this)->receiveNum);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.out[ Index(((P0 *)this)->equipNum, 16) ]);
		sprintf(simtmp, "%d", ((P0 *)this)->receiveNum); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 175: // STATE 19 - BA.prm:52 - [signalJudge = 1] (0:0:2 - 3)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->signalJudge;
		((P0 *)this)->signalJudge = 1;
#ifdef VAR_RANGES
		logval("equip:signalJudge", ((P0 *)this)->signalJudge);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: signalJudge */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->signalJudge = 0;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 20 - BA.prm:54 - [fCode = (receiveNum>>12)] (0:28:2 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->fCode;
		((P0 *)this)->fCode = (((P0 *)this)->receiveNum>>12);
#ifdef VAR_RANGES
		logval("equip:fCode", ((P0 *)this)->fCode);
#endif
		;
		/* merge: AD = (receiveNum&4095)(28, 21, 28) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->AD;
		((P0 *)this)->AD = (((P0 *)this)->receiveNum&4095);
#ifdef VAR_RANGES
		logval("equip:AD", ((P0 *)this)->AD);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 177: // STATE 22 - BA.prm:58 - [(((fCode==9)&&(Priority==100)))] (41:0:3 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((((P0 *)this)->fCode==9)&&(((P0 *)this)->Priority==100))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: Priority */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->Priority;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->Priority = 0;
		/* merge: Priority = ((receiveNum&240)>>4)(41, 23, 41) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->Priority;
		((P0 *)this)->Priority = ((((P0 *)this)->receiveNum&240)>>4);
#ifdef VAR_RANGES
		logval("equip:Priority", ((P0 *)this)->Priority);
#endif
		;
		/* merge: .(goto)(41, 29, 41) */
		reached[0][29] = 1;
		;
		/* merge: i = 0(41, 30, 41) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->i;
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 178: // STATE 24 - BA.prm:59 - [(((fCode==9)&&(Priority!=100)))] (41:0:3 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((P0 *)this)->fCode==9)&&(((P0 *)this)->Priority!=100))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: Priority */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->Priority;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->Priority = 0;
		/* merge: Priority = 100(41, 25, 41) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->Priority;
		((P0 *)this)->Priority = 100;
#ifdef VAR_RANGES
		logval("equip:Priority", ((P0 *)this)->Priority);
#endif
		;
		/* merge: .(goto)(41, 29, 41) */
		reached[0][29] = 1;
		;
		/* merge: i = 0(41, 30, 41) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->i;
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 179: // STATE 27 - BA.prm:60 - [(1)] (41:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(41, 29, 41) */
		reached[0][29] = 1;
		;
		/* merge: i = 0(41, 30, 41) */
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 180: // STATE 30 - BA.prm:70 - [i = 0] (0:41:1 - 4)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 181: // STATE 31 - BA.prm:70 - [((i<=11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((((P0 *)this)->i<=11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 32 - BA.prm:72 - [((((AD&(1<<(11-i)))>>(11-i))==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((((P0 *)this)->AD&(1<<(11-((P0 *)this)->i)))>>(11-((P0 *)this)->i))==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 35 - BA.prm:73 - [(1)] (41:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(41, 37, 41) */
		reached[0][37] = 1;
		;
		/* merge: i = (i+1)(41, 38, 41) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 184: // STATE 38 - BA.prm:70 - [i = (i+1)] (0:41:1 - 2)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 185: // STATE 44 - BA.prm:78 - [i = (i+1)] (0:0:1 - 5)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("equip:i", ((P0 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 45 - BA.prm:79 - [addrSub = (((addr<<i)&4095)>>i)] (0:51:2 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->addrSub;
		((P0 *)this)->addrSub = (((((P0 *)this)->addr<<((P0 *)this)->i)&4095)>>((P0 *)this)->i);
#ifdef VAR_RANGES
		logval("equip:addrSub", ((P0 *)this)->addrSub);
#endif
		;
		/* merge: ADSub = (((AD<<i)&4095)>>i)(51, 46, 51) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->ADSub;
		((P0 *)this)->ADSub = (((((P0 *)this)->AD<<((P0 *)this)->i)&4095)>>((P0 *)this)->i);
#ifdef VAR_RANGES
		logval("equip:ADSub", ((P0 *)this)->ADSub);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 187: // STATE 47 - BA.prm:83 - [((addrSub==ADSub))] (61:0:3 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((P0 *)this)->addrSub==((P0 *)this)->ADSub)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: addrSub */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->addrSub;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->addrSub = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ADSub */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->ADSub;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->ADSub = 0;
		/* merge: judge = 1(0, 48, 61) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->judge);
		((P0 *)this)->judge = 1;
#ifdef VAR_RANGES
		logval("equip:judge", ((int)((P0 *)this)->judge));
#endif
		;
		/* merge: .(goto)(0, 52, 61) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 188: // STATE 50 - BA.prm:84 - [judge = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->judge);
		((P0 *)this)->judge = 0;
#ifdef VAR_RANGES
		logval("equip:judge", ((int)((P0 *)this)->judge));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 53 - BA.prm:88 - [(((haveIncident==1)&&(fCode==9)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(((((int)((P0 *)this)->haveIncident)==1)&&(((P0 *)this)->fCode==9))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: fCode */  (trpt+1)->bup.oval = ((P0 *)this)->fCode;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->fCode = 0;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 55 - BA.prm:89 - [((((haveIncident==1)&&(fCode==13))&&(judge==1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((((((int)((P0 *)this)->haveIncident)==1)&&(((P0 *)this)->fCode==13))&&(((int)((P0 *)this)->judge)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: fCode */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->fCode;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->fCode = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: judge */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->judge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->judge = 0;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 57 - BA.prm:90 - [(((fCode==4)&&(judge==1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(((((P0 *)this)->fCode==4)&&(((int)((P0 *)this)->judge)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: fCode */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->fCode;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->fCode = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: judge */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->judge;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->judge = 0;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 63 - BA.prm:100 - [in[equipNum]!signalAnswer] (0:0:0 - 5)
		IfNotBlocked
		reached[0][63] = 1;
		if (q_full(now.in[ Index(((P0 *)this)->equipNum, 16) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.in[ Index(((P0 *)this)->equipNum, 16) ]);
		sprintf(simtmp, "%d", ((P0 *)this)->signalAnswer); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.in[ Index(((P0 *)this)->equipNum, 16) ], 0, ((P0 *)this)->signalAnswer, 1);
		_m = 2; goto P999; /* 0 */
	case 193: // STATE 65 - BA.prm:104 - [haveIncident = 0] (0:0:1 - 2)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->haveIncident);
		((P0 *)this)->haveIncident = 0;
#ifdef VAR_RANGES
		logval("equip:haveIncident", ((int)((P0 *)this)->haveIncident));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 66 - BA.prm:105 - [in[equipNum]!messageAnswer] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (q_full(now.in[ Index(((P0 *)this)->equipNum, 16) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.in[ Index(((P0 *)this)->equipNum, 16) ]);
		sprintf(simtmp, "%d", ((P0 *)this)->messageAnswer); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.in[ Index(((P0 *)this)->equipNum, 16) ], 0, ((P0 *)this)->messageAnswer, 1);
		_m = 2; goto P999; /* 0 */
	case 195: // STATE 68 - BA.prm:110 - [endedEquip = (endedEquip+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = endedEquip;
		endedEquip = (endedEquip+1);
#ifdef VAR_RANGES
		logval("endedEquip", endedEquip);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 69 - BA.prm:111 - [totalWeightSum = (totalWeightSum+(totalSendNum*(3-eventPriority)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = now.totalWeightSum;
		now.totalWeightSum = (now.totalWeightSum+(now.totalSendNum*(3-((P0 *)this)->eventPriority)));
#ifdef VAR_RANGES
		logval("totalWeightSum", now.totalWeightSum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 70 - BA.prm:112 - [ended = 1] (0:0:2 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->ended;
		((P0 *)this)->ended = 1;
#ifdef VAR_RANGES
		logval("equip:ended", ((P0 *)this)->ended);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: ended */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->ended = 0;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 72 - BA.prm:114 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

