/**************************************************************************
 |                                                                         
 |                 Stata Setup (Do File) for ICPSR 27202
 |
 |        Health Tracking Physician Survey, 2008: [United States]  
 |
 |                     Dataset 0001: Public-Use Data
 |
 | User Note:
 |
 | On the infile command, replace "dictionary-filename" with the path 
 | and name of the Stata dictionary on your computer system (e.g.,
 | "c:\temp\set27202-0001.dct") and "data-filename" with the path and name 
 | of the data file (e.g., "c:\temp\27202-0001-data.txt").
 |
 **************************************************************************/

set mem 16m  /* Allocating 16 megabyte(s) of memory. */

set more off  /* This prevents the Stata output viewer from pausing. */

infile using "dictionary-filename", using ("data-filename") clear

label data "Health Tracking Physician Survey, 2008, Public-Use Data"

#delimit ;
label define PHYSIDX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define BIRTHX    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: 1940 or earlier" 2 "2: 1941-1945"
                       3 "3: 1946-1950" 4 "4: 1951-1955" 5 "5: 1956-1960"
                       6 "6: 1961-1965" 7 "7: 1966-1970" 8 "8: 1971 or later" ;
label define GENDER    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Male" 2 "2: Female" ;
label define RCARSAT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Very dissatisfied" 2 "2: Somewhat dissatisfied"
                       3 "3: Neither satisfied nor dissatisfied"
                       4 "4: Somewhat satisfied" 5 "5: Very satisfied" ;
label define YRBGNX    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: 1975 or earlier" 2 "2: 1976-1980"
                       3 "3: 1981-1985" 4 "4: 1986-1990" 5 "5: 1991-1995"
                       6 "6: 1996-2000" 7 "7: 2001-2004" 8 "8: 2005 or later" ;
label define PCP       -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Not PCP" 1 "1: PCP" ;
label define SPEC      -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Internal Medicine"
                       2 "2: Family/General Practice" 3 "3: Pediatrics"
                       4 "4: Medical Specialties" 5 "5: Surgical Specialties"
                       6 "6: Psychiatry" 7 "7: ObGyn" ;
label define BDCTPSP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define PRCTYPE   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Solo/2 phys" 2 "2: Group >=3 phys" 3 "3: HMO"
                       4 "4: Medical School" 5 "5: Hospital-based"
                       6 "6: Other" ;
label define OWNPR     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Full owner" 2 "2: Part owner" 3 "3: Employee"
                       4 "4: Independent contractor" ;
label define PHYSOWN   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define HMSOWNX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Not solely a hosp or medical school"
                       1 "1: Solely a hosp and/or medical school" ;
label define OTHOWNX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: No other ownership interest"
                       1 "1: Other ownership interest" ;
label define NPHYSX    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       101 "101: 101+ (top code)" ;
label define INCENT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Reducing services" 2 "2: Expanding services"
                       3 "3: Favor neither" ;
label define COMPETE   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all competitive"
                       2 "2: Somewhat competitive" 3 "3: Very competitive" ;
label define WKSWRKX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       40 "40: <=40 (bottom code)" ;
label define HRSMEDX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       80 "80: 80+ (top code)" ;
label define OFFCOPVX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       150 "150: 150+ (top code)" ;
label define HOSPVX    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       70 "70: 70+ (top code)" ;
label define NURSHMVX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       10 "10: 10+ (top code)" ;
label define TMEMLPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: Less than a half hour" 2 "2: 1/2 to 1 hour"
                       3 "3: 1-2 hours" 4 "4: More than 2 hours" ;
label define TMPHNPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: Less than a half hour" 2 "2: 1/2 to 1 hour"
                       3 "3: 1-2 hours" 4 "4: More than 2 hours" ;
label define TMEMLDR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: Less than a half hour" 2 "2: 1/2 to 1 hour"
                       3 "3: 1-2 hours" 4 "4: More than 2 hours" ;
label define TMPHNDR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: Less than a half hour" 2 "2: 1/2 to 1 hour"
                       3 "3: 1-2 hours" 4 "4: More than 2 hours" ;
label define RBEMLPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Reimbursed" 2 "2: Not Reimbursed"
                       3 "3: Unsure if reimbursed" ;
label define RBPHNPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Reimbursed" 2 "2: Not Reimbursed"
                       3 "3: Unsure if reimbursed" ;
label define RBEMLDR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Reimbursed" 2 "2: Not Reimbursed"
                       3 "3: Unsure if reimbursed" ;
label define RBPHNDR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Reimbursed" 2 "2: Not Reimbursed"
                       3 "3: Unsure if reimbursed" ;
label define HRFREEX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       40 "40: 40+ (top code)" ;
label define LOCFREEX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: In your main practice" 2 "2: On-call or hosp ER"
                       3 "3: Other" ;
label define BLCKPTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       51 "51: 51+ (top code)" ;
label define HISPPTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       51 "51: 51+ (top code)" ;
label define ASIAPTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       26 "26: 26+ (top code)" ;
label define CHRNPT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define LANGPTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: 25% or less" 2 "2: More than 25%" ;
label define INTPRTR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: No non-English speaking patients" ;
label define I_LANG    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: 0 language" 2 "2: 1 language" 3 "3: 2 languages"
                       4 "4: 3+ languages" 5 "5: Interpreter service"
                       6 "6: no patient speak foreign lang" ;
label define EDUMNPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define IT_TRT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define IT_TRTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define IT_TRTU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITDCSN    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITDCSNX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITDCSNU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITRMNDR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITRMNDRX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITRMNDRU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITDRFUP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITDRFUPX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITDRFUPU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITRMNPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITRMNPTX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITRMNPTU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITCOMM    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITCOMMX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITCOMMU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITNOTES   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITNOTESX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITNOTESU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITTEST    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITTESTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITTESTU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITRSLT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITRSLTX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITRSLTU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITCLIN    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITCLINX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITCLINU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITHOSP    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITHOSPX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITHOSPU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITLANG    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITLANGX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITLANGU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITDRUG    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITDRUGX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITDRUGU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define IT_FORM   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define IT_FORMX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define IT_FORMU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITPRESC   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITPRESCX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITPRESCU  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define ITPHRM    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ITPHRMX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Routinely" 2 "2: Occasionally" 3 "3: Not at all" ;
label define ITPHRMU   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: IT not available"
                       2 "2: IT available, but not used"
                       3 "3: IT available and used" ;
label define EMRUSE    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: No, all paper" 1 "1: Yes, all electronic"
                       2 "2: Yes, part electronic and part paper" ;
label define ITINCNT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define ERRREPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: I do not admit patients" ;
label define HSPLST    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define HSPLSTA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define HSPLSTB   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define INTSVST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: I did not admit patients to hosp"
                       3 "3: I am a practicing intensivist" ;
label define EFGUIDE   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: No Effect" 1 "1: Very small" 2 "2: Small"
                       3 "3: Moderate" 4 "4: Large" 5 "5: Very large"
                       6 "6: Unaware of guidelines that apply" ;
label define RADQTIME  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Disagree strongly" 2 "2: Disagree somewhat"
                       3 "3: Neither agree nor disagree"
                       4 "4: Agree somewhat" 5 "5: Agree strongly" ;
label define RHIGHCAR  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Disagree strongly" 2 "2: Disagree somewhat"
                       3 "3: Neither agree nor disagree"
                       4 "4: Agree somewhat" 5 "5: Agree strongly" ;
label define RPTPCO    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTPCP    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTCHRO   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTCHRP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTDMO    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTDMP    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTETHO   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTETHP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTLSTO   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define RPTLSTP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define QRPTPGM   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define TRASTHM   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define TRDIAB    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define TRDPRSN   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define TRCHF     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GENGAST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GENGDIA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GENGDEP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GENGCHF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GOTHAST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GOTHDIA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GOTHDEP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GOTHCHF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define MNTRAST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define MNTRDIA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define MNTRDEP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define MNTRCHF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define EPATAST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define EPATDIA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define EPATDEP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define EPATCHF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GVSTAST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GVSTDIA   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GVSTDEP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GVSTCHF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define DM_PGM    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define DMPOVQC   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Disagree strongly" 2 "2: Disagree somewhat"
                       3 "3: Neither agree nor disagree"
                       4 "4: Agree somewhat" 5 "5: Agree strongly" ;
label define DMPDRQC   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Disagree strongly" 2 "2: Disagree somewhat"
                       3 "3: Neither agree nor disagree"
                       4 "4: Agree somewhat" 5 "5: Agree strongly" ;
label define KNOWALL   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define PCPSEND   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define PCPGET    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define PCPTALK   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define SPCGET    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define SPCSEND   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define SELFREF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Always or Most of the Time" 2 "2: Sometimes"
                       3 "3: Seldom or Never" 4 "4: Not Applicable" ;
label define NOTREFS   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: Not Applicable" ;
label define NOTHOSP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: Not Applicable" ;
label define NOTOUTP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: Not Applicable" ;
label define NOTINTRP  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: Not Applicable" ;
label define FORMLRY   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define GENERIC   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 1 "1: Never"
                       2 "2: Rarely" 3 "3: Sometimes" 4 "4: Usually"
                       5 "5: Always" ;
label define DIAGCST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 1 "1: Never"
                       2 "2: Rarely" 3 "3: Sometimes" 4 "4: Usually"
                       5 "5: Always" ;
label define IOPTCST   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 1 "1: Never"
                       2 "2: Rarely" 3 "3: Sometimes" 4 "4: Usually"
                       5 "5: Always" ;
label define QNOTIME   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QPRBPAY   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QINSREJ   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QNOSPEC   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QNOREPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QPRBCOM   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QNONCMP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define QERRHSP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not a problem" 2 "2: Minor problem"
                       3 "3: Major problem" ;
label define NWMCARE   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: No new Medicare patients"
                       2 "2: Some new Medicare patients"
                       3 "3: Most new Medicare patients"
                       4 "4: All new Medicare patients" ;
label define MRBILL    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important"
                       5 "5: does not apply (Pediatrician)" ;
label define MRAUDIT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important"
                       5 "5: does not apply (Pediatrician)" ;
label define MRREIMB   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important"
                       5 "5: does not apply (Pediatrician)" ;
label define MRNUFPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important"
                       5 "5: does not apply (Pediatrician)" ;
label define MRPTBUR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important"
                       5 "5: does not apply (Pediatrician)" ;
label define NWMCAID   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: No new Medicaid patients"
                       2 "2: Some new Medicaid patients"
                       3 "3: Most new Medicaid patients"
                       4 "4: All new Medicaid patients" ;
label define MDBILL    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define MDDELAY   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define MDREIMB   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define MDNUFPT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define MDPTBUR   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define NWPRIV    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: No new privately insured patients"
                       2 "2: Some new privately insured patients"
                       3 "3: Most new privately insured patients"
                       4 "4: All new privately insured patients" ;
label define PMCARE    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define PMCAID    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define PCAPREV   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;
label define NMCCON    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: 0"
                       1 "1: 1-4" 2 "2: 5-9" 3 "3: 10-19" 4 "4: 20+" ;
label define MALWORRY  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Strongly Disagree" 2 "2: Disagree"
                       3 "3: Not Sure" 4 "4: Agree" 5 "5: Agree Strongly" ;
label define MALDAILY  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Strongly Disagree" 2 "2: Disagree"
                       3 "3: Not Sure" 4 "4: Agree" 5 "5: Agree Strongly" ;
label define MALTESTS  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Strongly Disagree" 2 "2: Disagree"
                       3 "3: Not Sure" 4 "4: Agree" 5 "5: Agree Strongly" ;
label define MALCNSLT  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Strongly Disagree" 2 "2: Disagree"
                       3 "3: Not Sure" 4 "4: Agree" 5 "5: Agree Strongly" ;
label define MALCRISK  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Strongly Disagree" 2 "2: Disagree"
                       3 "3: Not Sure" 4 "4: Agree" 5 "5: Agree Strongly" ;
label define LABOWN    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define XRAYOWN   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define IMAGOWN   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define NIVOWN    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define IVPROWN   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define OWNHSP    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" 2 "2: Unsure"
                       3 "3: Main practice is a hosp or owned by a hosp" ;
label define COMPTYP   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Fixed salary"
                       2 "2: Salary adjusted for performance"
                       3 "3: Shift, hourly, other time-based pay"
                       4 "4: Share of practice billings/workload"
                       5 "5: Other Method (Describe)"
                       6 "6: Solo Practitioner" ;
label define BONUSR    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define SPROD     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Factor does not affect comp"
                       1 "1: Factor affects compensation" ;
label define IMPPROD   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define SSAT      -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Factor does not affect comp"
                       1 "1: Factor affects compensation" ;
label define IMPSAT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define SQUAL     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Factor does not affect comp"
                       1 "1: Factor affects compensation" ;
label define IMPQUAL   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define SPROF     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Factor does not affect comp"
                       1 "1: Factor affects compensation" ;
label define IMPPROF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define SPERF     -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       0 "0: Factor does not affect comp"
                       1 "1: Factor affects compensation" ;
label define IMPPERF   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Not at all important" 2 "2: Not very important"
                       3 "3: Moderately important" 4 "4: Very important" ;
label define FREEFD    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define FREERX    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define HNSPEAK   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define HNSRVY    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define PYCNSLT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define CSTTRVL   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define CMECRDT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define GFTOTHX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "No" 1 "Yes" ;
label define MRELCMPX  -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: $1 to $500" 2 "2: $501 to $1,000"
                       3 "3: $1,001 to $5,000" 4 "4: $5,001 or more" ;
label define INCCAT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable"
                       1 "1: Less than $100,000" 2 "2: $100,001 to $150,000"
                       3 "3: $150,001 to $200,000"
                       4 "4: $200,001 to $250,000"
                       5 "5: $250,001 to $300,000" 6 "6: More than $300,000" ;
label define INCPROD   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: None"
                       1 "1: 1 to 10 percent" 2 "2: 11 to 25 percent"
                       3 "3: 26 to 50 percent" 4 "4: 51 to 75 percent"
                       5 "5: 76 to 100 percent" ;
label define RACETHX   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 1 "1: Hispanic"
                       2 "2: White, non-Hispanic"
                       3 "3: Black/African American, non-Hispanic"
                       4 "4: Asian or Pacific Islander" 5 "5: Other/Mix" ;
label define ADM_PAT   -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" 0 "0: No"
                       1 "1: Yes" ;
label define WEIGHT    -9 "-9: Not Ascertained" .n "n: Not Ascertained" -8 "-8: Don't Know" .d "d: Don't Know"
                       -7 "-7: Refused" .r "r: Refused" -1 "-1: Inapplicable" .i "i: Inapplicable" ;

#delimit cr

/***************************************************************************

                       Missing Value Recodes

The following recode statement will recode responses of "don't know" (-8), 
"refused" (-7), "not ascertained" (-9), and "inapplicable" (-1) to the Stata 
missing value codes d, r, n, and i, respectively. Delete the statement if 
this recoding is not desired. The label statements above include labels for 
d, r, n, and i as well as for the original missing value codes.

****************************************************************************/

recode _all (-1 = .i) (-7 = .r) (-8 = .d) (-9 = .n)
