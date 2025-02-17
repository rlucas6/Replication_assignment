* Created      May 26, 2017                                
*
* Modify the path below to point to your data file.
* The specified subdirectory was not created on
* your computer. You will need to do this.
*
* The stat program must be run against the specified
* data file. This file is specified in the program
* and must be saved separately.
*
* This program does not provide tab or summarize for all
* variables.
*
* There may be missing data for some institutions due
* to the merge used to create this file.
*
* This program does not include reserved values in its
* calculations for missing values.
*
* You may need to adjust your memory settings depending
* upon the number of variables and records.
*
* The save command may need to be modified per user
* requirements.
*
* For long lists of value labels, the titles may be
* shortened per program requirements.
*
insheet using "$PATH\Academic Calendar\Data\ic2017_ay_data_stata.csv", comma clear
label data "ic2017_ay"
label variable unitid   "Unique identification number of the institution"
label variable xtuit1 "Imputation field for tuition1 - In-district average tuition for full-time undergraduates"
label variable tuition1 "In-district average tuition for full-time undergraduates"
label variable xfee1 "Imputation field for fee1 - In-district required fees for full-time undergraduates"
label variable fee1     "In-district required fees for full-time undergraduates"
label variable xhrchg1 "Imputation field for hrchg1 - In-district per credit hour charge for part-time undergraduates"
label variable hrchg1   "In-district per credit hour charge for part-time undergraduates"
label variable xtuit2 "Imputation field for tuition2 - In-state average tuition for full-time undergraduates"
label variable tuition2 "In-state average tuition for full-time undergraduates"
label variable xfee2 "Imputation field for fee2 - In-state required fees for full-time undergraduates"
label variable fee2     "In-state required fees for full-time undergraduates"
label variable xhrchg2 "Imputation field for hrchg2 - In-state per credit hour charge for part-time undergraduates"
label variable hrchg2   "In-state per credit hour charge for part-time undergraduates"
label variable xtuit3 "Imputation field for tuition3 - Out-of-state average tuition for full-time undergraduates"
label variable tuition3 "Out-of-state average tuition for full-time undergraduates"
label variable xfee3 "Imputation field for fee3 - Out-of-state required fees for full-time undergraduates"
label variable fee3     "Out-of-state required fees for full-time undergraduates"
label variable xhrchg3 "Imputation field for hrchg3 - Out-of-state per credit hour charge for part-time undergraduates"
label variable hrchg3   "Out-of-state per credit hour charge for part-time undergraduates"
label variable xtuit5 "Imputation field for tuition5 - In-district average tuition full-time graduates"
label variable tuition5 "In-district average tuition full-time graduates"
label variable xfee5 "Imputation field for fee5 - In-district required fees for full-time graduates"
label variable fee5     "In-district required fees for full-time graduates"
label variable xhrchg5 "Imputation field for hrchg5 - In-district per credit hour charge part-time graduates"
label variable hrchg5   "In-district per credit hour charge part-time graduates"
label variable xtuit6 "Imputation field for tuition6 - In-state average tuition full-time graduates"
label variable tuition6 "In-state average tuition full-time graduates"
label variable xfee6 "Imputation field for fee6 - In-state required fees for full-time graduates"
label variable fee6     "In-state required fees for full-time graduates"
label variable xhrchg6 "Imputation field for hrchg6 - In-state per credit hour charge part-time graduates"
label variable hrchg6   "In-state per credit hour charge part-time graduates"
label variable xtuit7 "Imputation field for tuition7 - Out-of-state average tuition full-time graduates"
label variable tuition7 "Out-of-state average tuition full-time graduates"
label variable xfee7 "Imputation field for fee7 - Out-of-state required fees for full-time graduates"
label variable fee7     "Out-of-state required fees for full-time graduates"
label variable xhrchg7 "Imputation field for hrchg7 - Out-of-state per credit hour charge part-time graduates"
label variable hrchg7   "Out-of-state per credit hour charge part-time graduates"
label variable xispro1 "Imputation field for isprof1 - Chiropractic: In-state tuition"
label variable isprof1  "Chiropractic: In-state tuition"
label variable xispfe1 "Imputation field for ispfee1 - Chiropractic: In-state required fees"
label variable ispfee1  "Chiropractic: In-state required fees"
label variable xospro1 "Imputation field for osprof1 - Chiropractic: Out-of-state tuition"
label variable osprof1  "Chiropractic: Out-of-state tuition"
label variable xospfe1 "Imputation field for ospfee1 - Chiropractic: Out-of-state required fees"
label variable ospfee1  "Chiropractic: Out-of-state required fees"
label variable xispro2 "Imputation field for isprof2 - Dentistry: In-state tuition"
label variable isprof2  "Dentistry: In-state tuition"
label variable xispfe2 "Imputation field for ispfee2 - Dentistry: In-state required fees"
label variable ispfee2  "Dentistry: In-state required fees"
label variable xospro2 "Imputation field for osprof2 - Dentistry: Out-of-state tuition"
label variable osprof2  "Dentistry: Out-of-state tuition"
label variable xospfe2 "Imputation field for ospfee2 - Dentistry: Out-of-state required fees"
label variable ospfee2  "Dentistry: Out-of-state required fees"
label variable xispro3 "Imputation field for isprof3 - Medicine: In-state tuition"
label variable isprof3  "Medicine: In-state tuition"
label variable xispfe3 "Imputation field for ispfee3 - Medicine: In-state required fees"
label variable ispfee3  "Medicine: In-state required fees"
label variable xospro3 "Imputation field for osprof3 - Medicine: Out-of-state tuition"
label variable osprof3  "Medicine: Out-of-state tuition"
label variable xospfe3 "Imputation field for ospfee3 - Medicine: Out-of-state required fees"
label variable ospfee3  "Medicine: Out-of-state required fees"
label variable xispro4 "Imputation field for isprof4 - Optometry: In-state tuition"
label variable isprof4  "Optometry: In-state tuition"
label variable xispfe4 "Imputation field for ispfee4 - Optometry: In-state required fees"
label variable ispfee4  "Optometry: In-state required fees"
label variable xospro4 "Imputation field for osprof4 - Optometry: Out-of-state tuition"
label variable osprof4  "Optometry: Out-of-state tuition"
label variable xospfe4 "Imputation field for ospfee4 - Optometry: Out-of-state required fees"
label variable ospfee4  "Optometry: Out-of-state required fees"
label variable xispro5 "Imputation field for isprof5 - Osteopathic Medicine: In-state tuition"
label variable isprof5  "Osteopathic Medicine: In-state tuition"
label variable xispfe5 "Imputation field for ispfee5 - Osteopathic Medicine: In-state required fees"
label variable ispfee5  "Osteopathic Medicine: In-state required fees"
label variable xospro5 "Imputation field for osprof5 - Osteopathic Medicine: Out-of-state tuition"
label variable osprof5  "Osteopathic Medicine: Out-of-state tuition"
label variable xospfe5 "Imputation field for ospfee5 - Osteopathic Medicine: Out-of-state required fees"
label variable ospfee5  "Osteopathic Medicine: Out-of-state required fees"
label variable xispro6 "Imputation field for isprof6 - Pharmacy: In-state tuition"
label variable isprof6  "Pharmacy: In-state tuition"
label variable xispfe6 "Imputation field for ispfee6 - Pharmacy: In-state required fees"
label variable ispfee6  "Pharmacy: In-state required fees"
label variable xospro6 "Imputation field for osprof6 - Pharmacy: Out-of-state tuition"
label variable osprof6  "Pharmacy: Out-of-state tuition"
label variable xospfe6 "Imputation field for ospfee6 - Pharmacy: Out-of-state required fees"
label variable ospfee6  "Pharmacy: Out-of-state required fees"
label variable xispro7 "Imputation field for isprof7 - Podiatry: In-state tuition"
label variable isprof7  "Podiatry: In-state tuition"
label variable xispfe7 "Imputation field for ispfee7 - Podiatry: In-state required fees"
label variable ispfee7  "Podiatry: In-state required fees"
label variable xospro7 "Imputation field for osprof7 - Podiatry: Out-of-state tuition"
label variable osprof7  "Podiatry: Out-of-state tuition"
label variable xospfe7 "Imputation field for ospfee7 - Podiatry: Out-of-state required fees"
label variable ospfee7  "Podiatry: Out-of-state required fees"
label variable xispro8 "Imputation field for isprof8 - Veterinary Medicine: In-state tuition"
label variable isprof8  "Veterinary Medicine: In-state tuition"
label variable xispfe8 "Imputation field for ispfee8 - Veterinary Medicine: In-state required fees"
label variable ispfee8  "Veterinary Medicine: In-state required fees"
label variable xospro8 "Imputation field for osprof8 - Veterinary Medicine: Out-of-state tuition"
label variable osprof8  "Veterinary Medicine: Out-of-state tuition"
label variable xospfe8 "Imputation field for ospfee8 - Veterinary Medicine: Out-of-state required fees"
label variable ospfee8  "Veterinary Medicine: Out-of-state required fees"
label variable xispro9 "Imputation field for isprof9 - Law: In-state tuition"
label variable isprof9  "Law: In-state tuition"
label variable xispfe9 "Imputation field for ispfee9 - Law: In-state required fees"
label variable ispfee9  "Law: In-state required fees"
label variable xospro9 "Imputation field for osprof9 - Law: Out-of-state tuition"
label variable osprof9  "Law: Out-of-state tuition"
label variable xospfe9 "Imputation field for ospfee9 - Law: Out-of-state required fees"
label variable ospfee9  "Law: Out-of-state required fees"
label variable xchg1at0 "Imputation field for chg1at0 - Published in-district tuition 2013-14"
label variable chg1at0  "Published in-district tuition 2013-14"
label variable xchg1af0 "Imputation field for chg1af0 - Published in-district fees 2013-14"
label variable chg1af0  "Published in-district fees 2013-14"
label variable xchg1ay0 "Imputation field for chg1ay0 - Published in-district tuition and fees 2013-14"
label variable chg1ay0  "Published in-district tuition and fees 2013-14"
label variable xchg1at1 "Imputation field for chg1at1 - Published in-district tuition 2014-15"
label variable chg1at1  "Published in-district tuition 2014-15"
label variable xchg1af1 "Imputation field for chg1af1 - Published in-district fees 2014-15"
label variable chg1af1  "Published in-district fees 2014-15"
label variable xchg1ay1 "Imputation field for chg1ay1 - Published in-district tuition and fees 2014-15"
label variable chg1ay1  "Published in-district tuition and fees 2014-15"
label variable xchg1at2 "Imputation field for chg1at2 - Published in-district tuition 2015-16"
label variable chg1at2  "Published in-district tuition 2015-16"
label variable xchg1af2 "Imputation field for chg1af2 - Published in-district fees 2015-16"
label variable chg1af2  "Published in-district fees 2015-16"
label variable xchg1ay2 "Imputation field for chg1ay2 - Published in-district tuition and fees 2015-16"
label variable chg1ay2  "Published in-district tuition and fees 2015-16"
label variable xchg1at3 "Imputation field for chg1at3 - Published in-district tuition2017-18"
label variable chg1at3  "Published in-district tuition2017-18"
label variable xchg1af3 "Imputation field for chg1af3 - Published in-district fees 2017-18"
label variable chg1af3  "Published in-district fees 2017-18"
label variable xchg1ay3 "Imputation field for chg1ay3 - Published in-district tuition and fees 2017-18"
label variable chg1ay3  "Published in-district tuition and fees 2017-18"
label variable chg1tgtd "Published in-district tuition 2017-18 guaranteed percent increase (if applicable)"
label variable chg1fgtd "Published in-district fees 2017-18 guaranteed percent increase (if applicable)"
label variable xchg2at0 "Imputation field for chg2at0 - Published in-state tuition 2013-14"
label variable chg2at0  "Published in-state tuition 2013-14"
label variable xchg2af0 "Imputation field for chg2af0 - Published in-state fees 2013-14"
label variable chg2af0  "Published in-state fees 2013-14"
label variable xchg2ay0 "Imputation field for chg2ay0 - Published in-state tuition and fees 2013-14"
label variable chg2ay0  "Published in-state tuition and fees 2013-14"
label variable xchg2at1 "Imputation field for chg2at1 - Published in-state tuition 2014-15"
label variable chg2at1  "Published in-state tuition 2014-15"
label variable xchg2af1 "Imputation field for chg2af1 - Published in-state fees 2014-15"
label variable chg2af1  "Published in-state fees 2014-15"
label variable xchg2ay1 "Imputation field for chg2ay1 - Published in-state tuition and fees 2014-15"
label variable chg2ay1  "Published in-state tuition and fees 2014-15"
label variable xchg2at2 "Imputation field for chg2at2 - Published in-state tuition 2015-16"
label variable chg2at2  "Published in-state tuition 2015-16"
label variable xchg2af2 "Imputation field for chg2af2 - Published in-state fees 2015-16"
label variable chg2af2  "Published in-state fees 2015-16"
label variable xchg2ay2 "Imputation field for chg2ay2 - Published in-state tuition and fees 2015-16"
label variable chg2ay2  "Published in-state tuition and fees 2015-16"
label variable xchg2at3 "Imputation field for chg2at3 - Published in-state tuition 2017-18"
label variable chg2at3  "Published in-state tuition 2017-18"
label variable xchg2af3 "Imputation field for chg2af3 - Published in-state fees 2017-18"
label variable chg2af3  "Published in-state fees 2017-18"
label variable xchg2ay3 "Imputation field for chg2ay3 - Published in-state tuition and fees 2017-18"
label variable chg2ay3  "Published in-state tuition and fees 2017-18"
label variable chg2tgtd "Published in-state tuition 2017-18 guaranteed percent increase (if applicable)"
label variable chg2fgtd "Published in-state fees 2017-18 guaranteed percent increase (if applicable)"
label variable xchg3at0 "Imputation field for chg3at0 - Published out-of-state tuition 2013-14"
label variable chg3at0  "Published out-of-state tuition 2013-14"
label variable xchg3af0 "Imputation field for chg3af0 - Published out-of-state fees 2013-14"
label variable chg3af0  "Published out-of-state fees 2013-14"
label variable xchg3ay0 "Imputation field for chg3ay0 - Published out-of-state tuition and fees 2013-14"
label variable chg3ay0  "Published out-of-state tuition and fees 2013-14"
label variable xchg3at1 "Imputation field for chg3at1 - Published out-of-state tuition 2014-15"
label variable chg3at1  "Published out-of-state tuition 2014-15"
label variable xchg3af1 "Imputation field for chg3af1 - Published out-of-state fees 2014-15"
label variable chg3af1  "Published out-of-state fees 2014-15"
label variable xchg3ay1 "Imputation field for chg3ay1 - Published out-of-state tuition and fees 2014-15"
label variable chg3ay1  "Published out-of-state tuition and fees 2014-15"
label variable xchg3at2 "Imputation field for chg3at2 - Published out-of-state tuition 2015-16"
label variable chg3at2  "Published out-of-state tuition 2015-16"
label variable xchg3af2 "Imputation field for chg3af2 - Published out-of-state fees 2015-16"
label variable chg3af2  "Published out-of-state fees 2015-16"
label variable xchg3ay2 "Imputation field for chg3ay2 - Published out-of-state tuition and fees 2015-16"
label variable chg3ay2  "Published out-of-state tuition and fees 2015-16"
label variable xchg3at3 "Imputation field for chg3at3 - Published out-of-state tuition 2017-18"
label variable chg3at3  "Published out-of-state tuition 2017-18"
label variable xchg3af3 "Imputation field for chg3af3 - Published out-of-state fees 2017-18"
label variable chg3af3  "Published out-of-state fees 2017-18"
label variable xchg3ay3 "Imputation field for chg3ay3 - Published out-of-state tuition and fees 2017-18"
label variable chg3ay3  "Published out-of-state tuition and fees 2017-18"
label variable chg3tgtd "Published out-of-state tuition 2017-18 guaranteed percent increase (if applicable)"
label variable chg3fgtd "Published out-of-state fees 2017-18 guaranteed percent increase (if applicable)"
label variable xchg4ay0 "Imputation field for chg4ay0 - Books and supplies 2013-14"
label variable chg4ay0  "Books and supplies 2013-14"
label variable xchg4ay1 "Imputation field for chg4ay1 - Books and supplies 2014-15"
label variable chg4ay1  "Books and supplies 2014-15"
label variable xchg4ay2 "Imputation field for chg4ay2 - Books and supplies 2015-16"
label variable chg4ay2  "Books and supplies 2015-16"
label variable xchg4ay3 "Imputation field for chg4ay3 - Books and supplies 2017-18"
label variable chg4ay3  "Books and supplies 2017-18"
label variable xchg5ay0 "Imputation field for chg5ay0 - On campus, room and board 2013-14"
label variable chg5ay0  "On campus, room and board 2013-14"
label variable xchg5ay1 "Imputation field for chg5ay1 - On campus, room and board 2014-15"
label variable chg5ay1  "On campus, room and board 2014-15"
label variable xchg5ay2 "Imputation field for chg5ay2 - On campus, room and board 2015-16"
label variable chg5ay2  "On campus, room and board 2015-16"
label variable xchg5ay3 "Imputation field for chg5ay3 - On campus, room and board 2017-18"
label variable chg5ay3  "On campus, room and board 2017-18"
label variable xchg6ay0 "Imputation field for chg6ay0 - On campus, other expenses 2013-14"
label variable chg6ay0  "On campus, other expenses 2013-14"
label variable xchg6ay1 "Imputation field for chg6ay1 - On campus, other expenses 2014-15"
label variable chg6ay1  "On campus, other expenses 2014-15"
label variable xchg6ay2 "Imputation field for chg6ay2 - On campus, other expenses 2015-16"
label variable chg6ay2  "On campus, other expenses 2015-16"
label variable xchg6ay3 "Imputation field for chg6ay3 - On campus, other expenses 2017-18"
label variable chg6ay3  "On campus, other expenses 2017-18"
label variable xchg7ay0 "Imputation field for chg7ay0 - Off campus (not with family), room and board 2013-14"
label variable chg7ay0  "Off campus (not with family), room and board 2013-14"
label variable xchg7ay1 "Imputation field for chg7ay1 - Off campus (not with family), room and board 2014-15"
label variable chg7ay1  "Off campus (not with family), room and board 2014-15"
label variable xchg7ay2 "Imputation field for chg7ay2 - Off campus (not with family), room and board 2015-16"
label variable chg7ay2  "Off campus (not with family), room and board 2015-16"
label variable xchg7ay3 "Imputation field for chg7ay3 - Off campus (not with family), room and board 2017-18"
label variable chg7ay3  "Off campus (not with family), room and board 2017-18"
label variable xchg8ay0 "Imputation field for chg8ay0 - Off campus (not with family), other expenses 2013-14"
label variable chg8ay0  "Off campus (not with family), other expenses 2013-14"
label variable xchg8ay1 "Imputation field for chg8ay1 - Off campus (not with family), other expenses 2014-15"
label variable chg8ay1  "Off campus (not with family), other expenses 2014-15"
label variable xchg8ay2 "Imputation field for chg8ay2 - Off campus (not with family), other expenses 2015-16"
label variable chg8ay2  "Off campus (not with family), other expenses 2015-16"
label variable xchg8ay3 "Imputation field for chg8ay3 - Off campus (not with family), other expenses 2017-18"
label variable chg8ay3  "Off campus (not with family), other expenses 2017-18"
label variable xchg9ay0 "Imputation field for chg9ay0 - Off campus (with family), other expenses 2013-14"
label variable chg9ay0  "Off campus (with family), other expenses 2013-14"
label variable xchg9ay1 "Imputation field for chg9ay1 - Off campus (with family), other expenses 2014-15"
label variable chg9ay1  "Off campus (with family), other expenses 2014-15"
label variable xchg9ay2 "Imputation field for chg9ay2 - Off campus (with family), other expenses 2015-16"
label variable chg9ay2  "Off campus (with family), other expenses 2015-16"
label variable xchg9ay3 "Imputation field for chg9ay3 - Off campus (with family), other expenses 2017-18"
label variable chg9ay3  "Off campus (with family), other expenses 2017-18"
*The following are the possible values for the item imputation field variables
*A Not applicable
*B Institution left item blank
*C Analyst corrected reported value
*D Do not know
*G Data generated from other data values
*H Value not derived - data not usable
*J Logical imputation
*K Ratio adjustment
*L Imputed using the Group Median procedure
*N Imputed using Nearest Neighbor procedure
*P Imputed using Carry Forward procedure
*R Reported
*Z Implied zero
tab xtuit1
tab xfee1
tab xhrchg1
tab xtuit2
tab xfee2
tab xhrchg2
tab xtuit3
tab xfee3
tab xhrchg3
tab xtuit5
tab xfee5
tab xhrchg5
tab xtuit6
tab xfee6
tab xhrchg6
tab xtuit7
tab xfee7
tab xhrchg7
tab xispro1
tab xispfe1
tab xospro1
tab xospfe1
tab xispro2
tab xispfe2
tab xospro2
tab xospfe2
tab xispro3
tab xispfe3
tab xospro3
tab xospfe3
tab xispro4
tab xispfe4
tab xospro4
tab xospfe4
tab xispro5
tab xispfe5
tab xospro5
tab xospfe5
tab xispro6
tab xispfe6
tab xospro6
tab xospfe6
tab xispro7
tab xispfe7
tab xospro7
tab xospfe7
tab xispro8
tab xispfe8
tab xospro8
tab xospfe8
tab xispro9
tab xispfe9
tab xospro9
tab xospfe9
tab xchg1at0
tab xchg1af0
tab xchg1ay0
tab xchg1at1
tab xchg1af1
tab xchg1ay1
tab xchg1at2
tab xchg1af2
tab xchg1ay2
tab xchg1at3
tab xchg1af3
tab xchg1ay3
tab xchg2at0
tab xchg2af0
tab xchg2ay0
tab xchg2at1
tab xchg2af1
tab xchg2ay1
tab xchg2at2
tab xchg2af2
tab xchg2ay2
tab xchg2at3
tab xchg2af3
tab xchg2ay3
tab xchg3at0
tab xchg3af0
tab xchg3ay0
tab xchg3at1
tab xchg3af1
tab xchg3ay1
tab xchg3at2
tab xchg3af2
tab xchg3ay2
tab xchg3at3
tab xchg3af3
tab xchg3ay3
tab xchg4ay0
tab xchg4ay1
tab xchg4ay2
tab xchg4ay3
tab xchg5ay0
tab xchg5ay1
tab xchg5ay2
tab xchg5ay3
tab xchg6ay0
tab xchg6ay1
tab xchg6ay2
tab xchg6ay3
tab xchg7ay0
tab xchg7ay1
tab xchg7ay2
tab xchg7ay3
tab xchg8ay0
tab xchg8ay1
tab xchg8ay2
tab xchg8ay3
tab xchg9ay0
tab xchg9ay1
tab xchg9ay2
tab xchg9ay3
summarize tuition1
summarize fee1
summarize hrchg1
summarize tuition2
summarize fee2
summarize hrchg2
summarize tuition3
summarize fee3
summarize hrchg3
summarize tuition5
summarize fee5
summarize hrchg5
summarize tuition6
summarize fee6
summarize hrchg6
summarize tuition7
summarize fee7
summarize hrchg7
summarize isprof1
summarize ispfee1
summarize osprof1
summarize ospfee1
summarize isprof2
summarize ispfee2
summarize osprof2
summarize ospfee2
summarize isprof3
summarize ispfee3
summarize osprof3
summarize ospfee3
summarize isprof4
summarize ispfee4
summarize osprof4
summarize ospfee4
summarize isprof5
summarize ispfee5
summarize osprof5
summarize ospfee5
summarize isprof6
summarize ispfee6
summarize osprof6
summarize ospfee6
summarize isprof7
summarize ispfee7
summarize osprof7
summarize ospfee7
summarize isprof8
summarize ispfee8
summarize osprof8
summarize ospfee8
summarize isprof9
summarize ispfee9
summarize osprof9
summarize ospfee9
summarize chg1at0
summarize chg1af0
summarize chg1ay0
summarize chg1at1
summarize chg1af1
summarize chg1ay1
summarize chg1at2
summarize chg1af2
summarize chg1ay2
summarize chg1at3
summarize chg1af3
summarize chg1ay3
summarize chg1tgtd
summarize chg1fgtd
summarize chg2at0
summarize chg2af0
summarize chg2ay0
summarize chg2at1
summarize chg2af1
summarize chg2ay1
summarize chg2at2
summarize chg2af2
summarize chg2ay2
summarize chg2at3
summarize chg2af3
summarize chg2ay3
summarize chg2tgtd
summarize chg2fgtd
summarize chg3at0
summarize chg3af0
summarize chg3ay0
summarize chg3at1
summarize chg3af1
summarize chg3ay1
summarize chg3at2
summarize chg3af2
summarize chg3ay2
summarize chg3at3
summarize chg3af3
summarize chg3ay3
summarize chg3tgtd
summarize chg3fgtd
summarize chg4ay0
summarize chg4ay1
summarize chg4ay2
summarize chg4ay3
summarize chg5ay0
summarize chg5ay1
summarize chg5ay2
summarize chg5ay3
summarize chg6ay0
summarize chg6ay1
summarize chg6ay2
summarize chg6ay3
summarize chg7ay0
summarize chg7ay1
summarize chg7ay2
summarize chg7ay3
summarize chg8ay0
summarize chg8ay1
summarize chg8ay2
summarize chg8ay3
summarize chg9ay0
summarize chg9ay1
summarize chg9ay2
summarize chg9ay3


keep unitid tuition2 tuition3
rename tuition2 instatetuition
rename tuition3 outofstatetuition
gen year=2017
save "$PATH\Academic Calendar\Data\tuition2017.dta", replace
