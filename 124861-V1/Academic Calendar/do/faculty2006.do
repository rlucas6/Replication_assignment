* Created: 8/27/2007 7:57:32 AM
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
clear
insheet using "$PATH\Academic Calendar\Data\sal2006_is_data_stata.csv", comma clear
label data "dct_sal2006_a"
label variable unitid "unitid"
label variable contract "Contract length"
label variable arank "Academic rank"
label variable xempcntm "Imputation field for EMPCNTM - Number of full time instructional faculty men"
label variable empcntm "Number of full time instructional faculty men"
label variable xoutlaym "Imputation field for OUTLAYM - Salary outlays of full time instructional faculty men"
label variable outlaym "Salary outlays of full time instructional faculty men"
label variable xavesalm "Imputation field for AVESALM - Average salary of full time instructional faculty men"
label variable avesalm "Average salary of full time instructional faculty men"
label variable xempcntw "Imputation field for EMPCNTW - Number of full time instructional faculty women"
label variable empcntw "Number of full time instructional faculty women"
label variable xoutlayw "Imputation field for OUTLAYW - Salary outlays of full time instructional faculty women"
label variable outlayw "Salary outlays of full time instructional faculty women"
label variable xavesalw "Imputation field for AVESALW - Average salary of full time instructional faculty women"
label variable avesalw "Average salary of full time instructional faculty women"
label variable xempcntt "Imputation field for EMPCNTT - Number of full time instructional faculty total"
label variable empcntt "Number of full time instructional faculty total"
label variable xoutlayt "Imputation field for OUTLAYT - Salary outlays of full time instructional faculty total"
label variable outlayt "Salary outlays of full time instructional faculty total"
label variable xavesalt "Imputation field for AVESALT - Average salary of full time instructional faculty total"
label variable avesalt "Average salary of full time instructional faculty total"
label define label_contract 1 "9/10-month contract" 
label define label_contract 2 "11/12-month contract", add 
label define label_contract 4 "Equated 9-month contract", add 
label values contract label_contract
label define label_arank 1 "Professor" 
label define label_arank 2 "Associate professor", add 
label define label_arank 3 "Assistant professor", add 
label define label_arank 4 "Instructor", add 
label define label_arank 5 "Lecturer", add 
label define label_arank 6 "No academic rank", add 
label define label_arank 7 "All faculty total", add 
label values arank label_arank

* RAINES EDIT

tab contract
tab arank
tab xempcntm
tab xoutlaym
tab xavesalm
tab xempcntw
tab xoutlayw
tab xavesalw
tab xempcntt
tab xoutlayt
tab xavesalt
summarize empcntm
summarize outlaym
summarize avesalm
summarize empcntw
summarize outlayw
summarize avesalw
summarize empcntt
summarize outlayt
summarize avesalt

drop if arank!=7
drop if contract!=4
keep unitid empcntt
rename empcntt faculty
gen year=2006

save "$PATH\Academic Calendar\Data\faculty2006.dta", replace

