* Created   January 8, 2018                                
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
insheet using "$PATH\Academic Calendar\Data\hd2016_data_stata.csv", comma clear
label data "dct_hd2016"
label variable unitid   "Unique identification number of the institution"
label variable instnm   "Institution (entity) name"
label variable ialias   "Institution name alias"
label variable addr     "Street address or post office box"
label variable city     "City location of institution"
label variable stabbr   "State abbreviation"
label variable zip      "ZIP code"
label variable fips     "FIPS state code"
label variable obereg   "Bureau of Economic Analysis (BEA) regions"
label variable chfnm    "Name of chief administrator"
label variable chftitle "Title of chief administrator"
label variable gentele  "General information telephone number"
label variable ein      "Employer Identification Number"
label variable duns     "Dun and Bradstreet numbers"
label variable opeid    "Office of Postsecondary Education (OPE) ID Number"
label variable opeflag  "OPE Title IV eligibility indicator code"
label variable webaddr  "Institution's internet website address"
label variable adminurl "Admissions office web address"
label variable faidurl  "Financial aid office web address"
label variable applurl  "Online application web address"
label variable npricurl "Net price calculator web address"
label variable veturl   "Veterans and Military Servicemembers tuition policies web address"
label variable athurl   "Student-Right-to-Know student athlete graduation rate web address"
label variable disaurl  "Disability Services Web Address"
label variable sector   "Sector of institution"
label variable iclevel  "Level of institution"
label variable control  "Control of institution"
label variable hloffer  "Highest level of offering"
label variable ugoffer  "Undergraduate offering"
label variable groffer  "Graduate offering"
label variable hdegofr1 "Highest degree offered"
label variable deggrant "Degree-granting status"
label variable hbcu     "Historically Black College or University"
label variable hospital "Institution has hospital"
label variable medical  "Institution grants a medical degree"
label variable tribal   "Tribal college"
label variable locale   "Degree of urbanization (Urban-centric locale)"
label variable openpubl "Institution open to the general public"
label variable act      "Status of institution"
label variable newid    "UNITID for merged schools"
label variable deathyr  "Year institution was deleted from IPEDS"
label variable closedat "Date institution closed"
label variable cyactive "Institution is active in current year"
label variable postsec  "Primarily postsecondary indicator"
label variable pseflag  "Postsecondary institution indicator"
label variable pset4flg "Postsecondary and Title IV institution indicator"
label variable rptmth   "Reporting method for student charges, graduation rates, retention rates and student financial aid"
label variable instcat  "Institutional category"
label variable c15basic "Carnegie Classification 2015: Basic"
label variable c15ipug  "Carnegie Classification 2015: Undergraduate Instructional Program"
label variable c15ipgrd "Carnegie Classification 2015: Graduate Instructional Program"
label variable c15ugprf "Carnegie Classification 2015: Undergraduate Profile"
label variable c15enprf "Carnegie Classification 2015: Enrollment Profile"
label variable c15szset "Carnegie Classification 2015: Size and Setting"
label variable ccbasic  "Carnegie Classification 2005/2010: Basic"
label variable carnegie "Carnegie Classification 2000"
label variable landgrnt "Land Grant Institution"
label variable instsize "Institution size category"
label variable f1systyp "Multi-institution or multi-campus organization"
label variable f1sysnam "Name of multi-institution or multi-campus organization"
label variable f1syscod "Identification number of multi-institution or multi-campus organization"
label variable cbsa     "Core Based Statistical Area (CBSA)"
label variable cbsatype "CBSA Type Metropolitan or Micropolitan"
label variable csa      "Combined Statistical Area (CSA)"
label variable necta    "New England City and Town Area (NECTA)"
label variable countycd "Fips County code"
label variable countynm "County name"
label variable cngdstcd "State and 114TH Congressional District ID"
label variable longitud "Longitude location of institution"
label variable latitude "Latitude location of institution"
label variable dfrcgid  "Data Feedback Report comparison group category created by NCES"
label variable dfrcuscg "Data Feedback Report - Institution submitted a custom comparison group"
*label define label_stabbr AL "Alabama"
*label define label_stabbr AK "Alaska",add
*label define label_stabbr AZ "Arizona",add
*label define label_stabbr AR "Arkansas",add
*label define label_stabbr CA "California",add
*label define label_stabbr CO "Colorado",add
*label define label_stabbr CT "Connecticut",add
*label define label_stabbr DE "Delaware",add
*label define label_stabbr DC "District of Columbia",add
*label define label_stabbr FL "Florida",add
*label define label_stabbr GA "Georgia",add
*label define label_stabbr HI "Hawaii",add
*label define label_stabbr ID "Idaho",add
*label define label_stabbr IL "Illinois",add
*label define label_stabbr IN "Indiana",add
*label define label_stabbr IA "Iowa",add
*label define label_stabbr KS "Kansas",add
*label define label_stabbr KY "Kentucky",add
*label define label_stabbr LA "Louisiana",add
*label define label_stabbr ME "Maine",add
*label define label_stabbr MD "Maryland",add
*label define label_stabbr MA "Massachusetts",add
*label define label_stabbr MI "Michigan",add
*label define label_stabbr MN "Minnesota",add
*label define label_stabbr MS "Mississippi",add
*label define label_stabbr MO "Missouri",add
*label define label_stabbr MT "Montana",add
*label define label_stabbr NE "Nebraska",add
*label define label_stabbr NV "Nevada",add
*label define label_stabbr NH "New Hampshire",add
*label define label_stabbr NJ "New Jersey",add
*label define label_stabbr NM "New Mexico",add
*label define label_stabbr NY "New York",add
*label define label_stabbr NC "North Carolina",add
*label define label_stabbr ND "North Dakota",add
*label define label_stabbr OH "Ohio",add
*label define label_stabbr OK "Oklahoma",add
*label define label_stabbr OR "Oregon",add
*label define label_stabbr PA "Pennsylvania",add
*label define label_stabbr RI "Rhode Island",add
*label define label_stabbr SC "South Carolina",add
*label define label_stabbr SD "South Dakota",add
*label define label_stabbr TN "Tennessee",add
*label define label_stabbr TX "Texas",add
*label define label_stabbr UT "Utah",add
*label define label_stabbr VT "Vermont",add
*label define label_stabbr VA "Virginia",add
*label define label_stabbr WA "Washington",add
*label define label_stabbr WV "West Virginia",add
*label define label_stabbr WI "Wisconsin",add
*label define label_stabbr WY "Wyoming",add
*label define label_stabbr AS "American Samoa",add
*label define label_stabbr FM "Federated States of Micronesia",add
*label define label_stabbr GU "Guam",add
*label define label_stabbr MH "Marshall Islands",add
*label define label_stabbr MP "Northern Marianas",add
*label define label_stabbr PW "Palau",add
*label define label_stabbr PR "Puerto Rico",add
*label define label_stabbr VI "Virgin Islands",add
*label values stabbr label_stabbr
label define label_fips 1 "Alabama"
label define label_fips 2 "Alaska",add
label define label_fips 4 "Arizona",add
label define label_fips 5 "Arkansas",add
label define label_fips 6 "California",add
label define label_fips 8 "Colorado",add
label define label_fips 9 "Connecticut",add
label define label_fips 10 "Delaware",add
label define label_fips 11 "District of Columbia",add
label define label_fips 12 "Florida",add
label define label_fips 13 "Georgia",add
label define label_fips 15 "Hawaii",add
label define label_fips 16 "Idaho",add
label define label_fips 17 "Illinois",add
label define label_fips 18 "Indiana",add
label define label_fips 19 "Iowa",add
label define label_fips 20 "Kansas",add
label define label_fips 21 "Kentucky",add
label define label_fips 22 "Louisiana",add
label define label_fips 23 "Maine",add
label define label_fips 24 "Maryland",add
label define label_fips 25 "Massachusetts",add
label define label_fips 26 "Michigan",add
label define label_fips 27 "Minnesota",add
label define label_fips 28 "Mississippi",add
label define label_fips 29 "Missouri",add
label define label_fips 30 "Montana",add
label define label_fips 31 "Nebraska",add
label define label_fips 32 "Nevada",add
label define label_fips 33 "New Hampshire",add
label define label_fips 34 "New Jersey",add
label define label_fips 35 "New Mexico",add
label define label_fips 36 "New York",add
label define label_fips 37 "North Carolina",add
label define label_fips 38 "North Dakota",add
label define label_fips 39 "Ohio",add
label define label_fips 40 "Oklahoma",add
label define label_fips 41 "Oregon",add
label define label_fips 42 "Pennsylvania",add
label define label_fips 44 "Rhode Island",add
label define label_fips 45 "South Carolina",add
label define label_fips 46 "South Dakota",add
label define label_fips 47 "Tennessee",add
label define label_fips 48 "Texas",add
label define label_fips 49 "Utah",add
label define label_fips 50 "Vermont",add
label define label_fips 51 "Virginia",add
label define label_fips 53 "Washington",add
label define label_fips 54 "West Virginia",add
label define label_fips 55 "Wisconsin",add
label define label_fips 56 "Wyoming",add
label define label_fips 60 "American Samoa",add
label define label_fips 64 "Federated States of Micronesia",add
label define label_fips 66 "Guam",add
label define label_fips 68 "Marshall Islands",add
label define label_fips 69 "Northern Marianas",add
label define label_fips 70 "Palau",add
label define label_fips 72 "Puerto Rico",add
label define label_fips 78 "Virgin Islands",add
label values fips label_fips
label define label_obereg 0 "US Service schools"
label define label_obereg 1 "New England CT ME MA NH RI VT",add
label define label_obereg 2 "Mid East DE DC MD NJ NY PA",add
label define label_obereg 3 "Great Lakes IL IN MI OH WI",add
label define label_obereg 4 "Plains IA KS MN MO NE ND SD",add
label define label_obereg 5 "Southeast AL AR FL GA KY LA MS NC SC TN VA WV",add
label define label_obereg 6 "Southwest AZ NM OK TX",add
label define label_obereg 7 "Rocky Mountains CO ID MT UT WY",add
label define label_obereg 8 "Far West AK CA HI NV OR WA",add
label define label_obereg 9 "Outlying areas AS FM GU MH MP PR PW VI",add
label values obereg label_obereg
label define label_opeflag 1 "Participates in Title IV federal financial aid programs"
label define label_opeflag 2 "Branch campus of a main campus that participates in Title IV",add
label define label_opeflag 3 "Deferment only - limited participation",add
label define label_opeflag 5 "Not currently participating in Title IV, has an OPE ID number",add
label define label_opeflag 6 "Not currently participating in Title IV, does not have OPE ID number",add
label define label_opeflag 7 "Stopped participating during the survey year",add
label values opeflag label_opeflag
label define label_sector 0 "Administrative Unit"
label define label_sector 1 "Public, 4-year or above",add
label define label_sector 2 "Private not-for-profit, 4-year or above",add
label define label_sector 3 "Private for-profit, 4-year or above",add
label define label_sector 4 "Public, 2-year",add
label define label_sector 5 "Private not-for-profit, 2-year",add
label define label_sector 6 "Private for-profit, 2-year",add
label define label_sector 7 "Public, less-than 2-year",add
label define label_sector 8 "Private not-for-profit, less-than 2-year",add
label define label_sector 9 "Private for-profit, less-than 2-year",add
label define label_sector 99 "Sector unknown (not active)",add
label values sector label_sector
label define label_iclevel 1 "Four or more years"
label define label_iclevel 2 "At least 2 but less than 4 years",add
label define label_iclevel 3 "Less than 2 years (below associate)",add
label define label_iclevel -3 "{Not available}",add
label values iclevel label_iclevel
label define label_control 1 "Public"
label define label_control 2 "Private not-for-profit",add
label define label_control 3 "Private for-profit",add
label define label_control -3 "{Not available}",add
label values control label_control
label define label_hloffer 1 "Award of less than one academic year"
label define label_hloffer 2 "At least 1, but less than 2 academic yrs",add
label define label_hloffer 3 "Associate^s degree",add
label define label_hloffer 4 "At least 2, but less than 4 academic yrs",add
label define label_hloffer 5 "Bachelor^s degree",add
label define label_hloffer 6 "Postbaccalaureate certificate",add
label define label_hloffer 7 "Master^s degree",add
label define label_hloffer 8 "Post-master^s certificate",add
label define label_hloffer 9 "Doctor^s degree",add
label define label_hloffer -3 "{Not available}",add
label values hloffer label_hloffer
label define label_ugoffer 1 "Undergraduate degree or certificate offering"
label define label_ugoffer 2 "No undergraduate offering",add
label define label_ugoffer -3 "{Not available}",add
label values ugoffer label_ugoffer
label define label_groffer 1 "Graduate degree or certificate offering"
label define label_groffer 2 "No graduate offering",add
label define label_groffer -3 "{Not available}",add
label values groffer label_groffer
label define label_hdegofr1 11 "Doctor^s degree - research/scholarship and professional practice"
label define label_hdegofr1 12 "Doctor^s degree - research/scholarship",add
label define label_hdegofr1 13 "Doctor^s degree -  professional practice",add
label define label_hdegofr1 14 "Doctor^s degree - other",add
label define label_hdegofr1 20 "Master^s degree",add
label define label_hdegofr1 30 "Bachelor^s degree",add
label define label_hdegofr1 40 "Associate^s degree",add
label define label_hdegofr1 0 "Non-degree granting",add
label define label_hdegofr1 -3 "{Not available}",add
label values hdegofr1 label_hdegofr1
label define label_deggrant 1 "Degree-granting"
label define label_deggrant 2 "Nondegree-granting, primarily postsecondary",add
label define label_deggrant -3 "{Not available}",add
label values deggrant label_deggrant
label define label_hbcu 1 "Yes"
label define label_hbcu 2 "No",add
label values hbcu label_hbcu
label define label_hospital 1 "Yes"
label define label_hospital 2 "No",add
label define label_hospital -1 "Not reported",add
label define label_hospital -2 "Not applicable",add
label values hospital label_hospital
label define label_medical 1 "Yes"
label define label_medical 2 "No",add
label define label_medical -1 "Not reported",add
label define label_medical -2 "Not applicable",add
label values medical label_medical
label define label_tribal 1 "Yes"
label define label_tribal 2 "No",add
label values tribal label_tribal
label define label_locale 11 "City: Large"
label define label_locale 12 "City: Midsize",add
label define label_locale 13 "City: Small",add
label define label_locale 21 "Suburb: Large",add
label define label_locale 22 "Suburb: Midsize",add
label define label_locale 23 "Suburb: Small",add
label define label_locale 31 "Town: Fringe",add
label define label_locale 32 "Town: Distant",add
label define label_locale 33 "Town: Remote",add
label define label_locale 41 "Rural: Fringe",add
label define label_locale 42 "Rural: Distant",add
label define label_locale 43 "Rural: Remote",add
label define label_locale -3 "{Not available}",add
label values locale label_locale
label define label_openpubl 1 "Institution is open to the public"
label define label_openpubl 0 "Institution is not open to the public",add
label values openpubl label_openpubl
*label define label_act A "Active - institution active"
*label define label_act N "New (active) - added during the current year",add
*label define label_act R "Restore (active) - restored to the current universe",add
*label define label_act M "Closed in current year (active has data)",add
*label define label_act C "Combined with other institution",add
*label define label_act D "Delete out of business",add
*label define label_act G "Perfect child campus - data reported with main campus, but is listed on college navigator",add
*label values act label_act
label define label_deathyr 2016 " "
label define label_deathyr -2 "Not applicable",add
label values deathyr label_deathyr
label define label_cyactive 1 "Yes"
label define label_cyactive 3 "No, closed, combined, or out-of-scope",add
label values cyactive label_cyactive
label define label_postsec 1 "Primarily postsecondary institution"
label define label_postsec 2 "Not primarily postsecondary",add
label values postsec label_postsec
label define label_pseflag 1 "Active postsecondary institution"
label define label_pseflag 2 "Not primarily postsecondary or open to public",add
label define label_pseflag 3 "Not active",add
label values pseflag label_pseflag
label define label_pset4flg 1 "Title IV postsecondary institution"
label define label_pset4flg 2 "Non-Title IV postsecondary institution",add
label define label_pset4flg 3 "Title IV NOT primarily postsecondary institution",add
label define label_pset4flg 4 "Non-Title IV NOT primarily postsecondary institution",add
label define label_pset4flg 5 "Title IV postsecondary institution that is NOT open to the public",add
label define label_pset4flg 6 "Non-Title IV postsecondary institution that is NOT open to the public",add
label define label_pset4flg 9 "Institution is not active in current universe",add
label values pset4flg label_pset4flg
label define label_rptmth 1 "Student charges for full academic year and fall GR/SFA/retention rate cohort"
label define label_rptmth 3 "Student charges for full academic year and full-year GR/SFA/retention rate cohort",add
label define label_rptmth 2 "Student charges by program and full-year GR/SFA/retention rate cohort",add
label define label_rptmth -1 "Not reported",add
label define label_rptmth -2 "Not applicable",add
label values rptmth label_rptmth
label define label_instcat 1 "Degree-granting, graduate with no undergraduate degrees"
label define label_instcat 2 "Degree-granting, primarily baccalaureate or above",add
label define label_instcat 3 "Degree-granting, not primarily baccalaureate or above",add
label define label_instcat 4 "Degree-granting, associate^s and certificates",add
label define label_instcat 5 "Nondegree-granting, above the baccalaureate",add
label define label_instcat 6 "Nondegree-granting, sub-baccalaureate",add
label define label_instcat -1 "Not reported",add
label define label_instcat -2 "Not applicable",add
label values instcat label_instcat
label define label_c15basic 1 "Associate^s Colleges: High Transfer-High Traditional"
label define label_c15basic 2 "Associate^s Colleges: High Transfer-Mixed Traditional/Nontraditional",add
label define label_c15basic 3 "Associate^s Colleges: High Transfer-High Nontraditional",add
label define label_c15basic 4 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Traditional",add
label define label_c15basic 5 "Associate^s Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional",add
label define label_c15basic 6 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Nontraditional",add
label define label_c15basic 7 "Associate^s Colleges: High Career & Technical-High Traditional",add
label define label_c15basic 8 "Associate^s Colleges: High Career & Technical-Mixed Traditional/Nontraditional",add
label define label_c15basic 9 "Associate^s Colleges: High Career & Technical-High Nontraditional",add
label define label_c15basic 10 "Special Focus Two-Year: Health Professions",add
label define label_c15basic 11 "Special Focus Two-Year: Technical Professions",add
label define label_c15basic 12 "Special Focus Two-Year: Arts & Design",add
label define label_c15basic 13 "Special Focus Two-Year: Other Fields",add
label define label_c15basic 14 "Baccalaureate/Associate^s Colleges: Associate^s Dominant",add
label define label_c15basic 15 "Doctoral Universities: Highest Research Activity",add
label define label_c15basic 16 "Doctoral Universities: Higher Research Activity",add
label define label_c15basic 17 "Doctoral Universities: Moderate Research Activity",add
label define label_c15basic 18 "Master^s Colleges & Universities: Larger Programs",add
label define label_c15basic 19 "Master^s Colleges & Universities: Medium Programs",add
label define label_c15basic 20 "Master^s Colleges & Universities: Small Programs",add
label define label_c15basic 21 "Baccalaureate Colleges: Arts & Sciences Focus",add
label define label_c15basic 22 "Baccalaureate Colleges: Diverse Fields",add
label define label_c15basic 23 "Baccalaureate/Associate^s Colleges: Mixed Baccalaureate/Associate^s",add
label define label_c15basic 24 "Special Focus Four-Year: Faith-Related Institutions",add
label define label_c15basic 25 "Special Focus Four-Year: Medical Schools & Centers",add
label define label_c15basic 26 "Special Focus Four-Year: Other Health Professions Schools",add
label define label_c15basic 27 "Special Focus Four-Year: Engineering Schools",add
label define label_c15basic 28 "Special Focus Four-Year: Other Technology-Related Schools",add
label define label_c15basic 29 "Special Focus Four-Year: Business & Management Schools",add
label define label_c15basic 30 "Special Focus Four-Year: Arts, Music & Design Schools",add
label define label_c15basic 31 "Special Focus Four-Year: Law Schools",add
label define label_c15basic 32 "Special Focus Four-Year: Other Special Focus Institutions",add
label define label_c15basic 33 "Tribal Colleges",add
label define label_c15basic -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15basic label_c15basic
label define label_c15ipug 1 "Associate^s Colleges: High Transfer"
label define label_c15ipug 2 "Associate^s Colleges: Mixed Transfer/Vocational & Technical",add
label define label_c15ipug 3 "Associate^s Colleges: High Vocational & Technical",add
label define label_c15ipug 4 "Special Focus: Two-Year Institution",add
label define label_c15ipug 5 "Baccalaureate/Associates Colleges",add
label define label_c15ipug 6 "Arts & sciences focus, no graduate coexistence",add
label define label_c15ipug 7 "Arts & sciences focus, some graduate coexistence",add
label define label_c15ipug 8 "Arts & sciences focus, high graduate coexistence",add
label define label_c15ipug 9 "Arts & sciences plus professions, no graduate coexistence",add
label define label_c15ipug 10 "Arts & sciences plus professions, some graduate coexistence",add
label define label_c15ipug 11 "Arts & sciences plus professions, high graduate coexistence",add
label define label_c15ipug 12 "Balanced arts & sciences/professions, no graduate coexistence",add
label define label_c15ipug 13 "Balanced arts & sciences/professions, some graduate coexistence",add
label define label_c15ipug 14 "Balanced arts & sciences/professions, high graduate coexistence",add
label define label_c15ipug 15 "Professions plus arts & sciences, no graduate coexistence",add
label define label_c15ipug 16 "Professions plus arts & sciences, some graduate coexistence",add
label define label_c15ipug 17 "Professions plus arts & sciences, high graduate coexistence",add
label define label_c15ipug 18 "Professions focus, no graduate coexistence",add
label define label_c15ipug 19 "Professions focus, some graduate coexistence",add
label define label_c15ipug 20 "Professions focus, high graduate coexistence",add
label define label_c15ipug 0 "Not Classified (Exclusively Graduate Programs)",add
label define label_c15ipug -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15ipug label_c15ipug
label define label_c15ipgrd 1 "Postbaccalaureate: Single program-Education"
label define label_c15ipgrd 2 "Postbaccalaureate: Single program-Business",add
label define label_c15ipgrd 3 "Postbaccalaureate: Single program-Other",add
label define label_c15ipgrd 4 "Postbaccalaureate: Comprehensive programs",add
label define label_c15ipgrd 5 "Postbaccalaureate: Arts & sciences-dominant",add
label define label_c15ipgrd 6 "Postbaccalaureate: Education-dominant, with Arts & Sciences",add
label define label_c15ipgrd 7 "Postbaccalaureate: Business-dominant, with Arts & Sciences",add
label define label_c15ipgrd 8 "Postbaccalaureate: Other-dominant, with Arts & Sciences",add
label define label_c15ipgrd 9 "Postbaccalaureate: Education-dominant, with other professional programs",add
label define label_c15ipgrd 10 "Postbaccalaureate: Business-dominant, with other professional programs",add
label define label_c15ipgrd 11 "Postbaccalaureate: Other-dominant, with other professional programs",add
label define label_c15ipgrd 12 "Research Doctoral: Single program-Education",add
label define label_c15ipgrd 13 "Research Doctoral: Single program-Other",add
label define label_c15ipgrd 14 "Research Doctoral: Comprehensive programs, with medical/veterinary school",add
label define label_c15ipgrd 15 "Research Doctoral: Comprehensive programs, no medical/veterinary school",add
label define label_c15ipgrd 16 "Research Doctoral: Humanities/social sciences-dominant",add
label define label_c15ipgrd 17 "Research Doctoral: STEM-dominant",add
label define label_c15ipgrd 18 "Research Doctoral: Professional-dominant",add
label define label_c15ipgrd 0 "Not classified (Exclusively Undergraduate)",add
label define label_c15ipgrd -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15ipgrd label_c15ipgrd
label define label_c15ugprf 1 "Two-year, higher part-time"
label define label_c15ugprf 2 "Two-year, mixed part/full-time",add
label define label_c15ugprf 3 "Two-year, medium full-time",add
label define label_c15ugprf 4 "Two-year, higher full-time",add
label define label_c15ugprf 5 "Four-year, higher part-time",add
label define label_c15ugprf 6 "Four-year, medium full-time, inclusive, lower transfer-in",add
label define label_c15ugprf 7 "Four-year, medium full-time, inclusive, higher transfer-in",add
label define label_c15ugprf 8 "Four-year, medium full-time, selective, lower transfer-in",add
label define label_c15ugprf 9 "Four-year, medium full-time , selective, higher transfer-in",add
label define label_c15ugprf 10 "Four-year, full-time, inclusive, lower transfer-in",add
label define label_c15ugprf 11 "Four-year, full-time, inclusive, higher transfer-in",add
label define label_c15ugprf 12 "Four-year, full-time, selective, lower transfer-in",add
label define label_c15ugprf 13 "Four-year, full-time, selective, higher transfer-in",add
label define label_c15ugprf 14 "Four-year, full-time, more selective, lower transfer-in",add
label define label_c15ugprf 15 "Four-year, full-time, more selective, higher transfer-in",add
label define label_c15ugprf 0 "Not classified (Exclusively Graduate)",add
label define label_c15ugprf -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15ugprf label_c15ugprf
label define label_c15enprf 1 "Exclusively undergraduate two-year"
label define label_c15enprf 2 "Exclusively undergraduate four-year",add
label define label_c15enprf 3 "Very high undergraduate",add
label define label_c15enprf 4 "High undergraduate",add
label define label_c15enprf 5 "Majority undergraduate",add
label define label_c15enprf 6 "Majority graduate",add
label define label_c15enprf 7 "Exclusively graduate",add
label define label_c15enprf -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15enprf label_c15enprf
label define label_c15szset 1 "Two-year, very small"
label define label_c15szset 2 "Two-year, small",add
label define label_c15szset 3 "Two-year, medium",add
label define label_c15szset 4 "Two-year, large",add
label define label_c15szset 5 "Two-year, very large",add
label define label_c15szset 6 "Four-year, very small, primarily nonresidential",add
label define label_c15szset 7 "Four-year, very small, primarily residential",add
label define label_c15szset 8 "Four-year, very small, highly residential",add
label define label_c15szset 9 "Four-year, small, primarily nonresidential",add
label define label_c15szset 10 "Four-year, small, primarily residential",add
label define label_c15szset 11 "Four-year, small, highly residential",add
label define label_c15szset 12 "Four-year, medium, primarily nonresidential",add
label define label_c15szset 13 "Four-year, medium, primarily residential",add
label define label_c15szset 14 "Four-year, medium, highly residential",add
label define label_c15szset 15 "Four-year, large, primarily nonresidential",add
label define label_c15szset 16 "Four-year, large, primarily residential",add
label define label_c15szset 17 "Four-year, large, highly residential",add
label define label_c15szset 18 "Exclusively graduate/professional",add
label define label_c15szset -2 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values c15szset label_c15szset
label define label_ccbasic 1 "Associate^s--Public Rural-serving Small"
label define label_ccbasic 2 "Associate^s--Public Rural-serving Medium",add
label define label_ccbasic 3 "Associate^s--Public Rural-serving Large",add
label define label_ccbasic 4 "Associate^s--Public Suburban-serving Single Campus",add
label define label_ccbasic 5 "Associate^s--Public Suburban-serving Multicampus",add
label define label_ccbasic 6 "Associate^s--Public Urban-serving Single Campus",add
label define label_ccbasic 7 "Associate^s--Public Urban-serving Multicampus",add
label define label_ccbasic 8 "Associate^s--Public Special Use",add
label define label_ccbasic 9 "Associate^s--Private Not-for-profit",add
label define label_ccbasic 10 "Associate^s--Private For-profit",add
label define label_ccbasic 11 "Associate^s--Public 2-year colleges under 4-year universities",add
label define label_ccbasic 12 "Associate^s--Public 4-year Primarily Associate^s",add
label define label_ccbasic 13 "Associate^s--Private Not-for-profit 4-year Primarily Associate^s",add
label define label_ccbasic 14 "Associate^s--Private For-profit 4-year Primarily Associate^s",add
label define label_ccbasic 15 "Research Universities (very high research activity)",add
label define label_ccbasic 16 "Research Universities (high research activity)",add
label define label_ccbasic 17 "Doctoral/Research Universities",add
label define label_ccbasic 18 "Master^s Colleges and Universities (larger programs)",add
label define label_ccbasic 19 "Master^s Colleges and Universities (medium programs)",add
label define label_ccbasic 20 "Master^s Colleges and Universities (smaller programs)",add
label define label_ccbasic 21 "Baccalaureate Colleges--Arts & Sciences",add
label define label_ccbasic 22 "Baccalaureate Colleges--Diverse Fields",add
label define label_ccbasic 23 "Baccalaureate/Associate^s Colleges",add
label define label_ccbasic 24 "Theological seminaries, Bible colleges, and other faith-related institutions",add
label define label_ccbasic 25 "Medical schools and medical centers",add
label define label_ccbasic 26 "Other health professions schools",add
label define label_ccbasic 27 "Schools of engineering",add
label define label_ccbasic 28 "Other technology-related schools",add
label define label_ccbasic 29 "Schools of business and management",add
label define label_ccbasic 30 "Schools of art, music, and design",add
label define label_ccbasic 31 "Schools of law",add
label define label_ccbasic 32 "Other special-focus institutions",add
label define label_ccbasic 33 "Tribal Colleges",add
label define label_ccbasic -3 "Not applicable, not in Carnegie universe (not accredited or nondegree-granting)",add
label values ccbasic label_ccbasic
label define label_carnegie 15 "Doctoral/Research Universities--Extensive"
label define label_carnegie 16 "Doctoral/Research Universities--Intensive",add
label define label_carnegie 21 "Masters Colleges and Universities I",add
label define label_carnegie 22 "Masters Colleges and Universities II",add
label define label_carnegie 31 "Baccalaureate Colleges--Liberal Arts",add
label define label_carnegie 32 "Baccalaureate Colleges--General",add
label define label_carnegie 33 "Baccalaureate/Associates Colleges",add
label define label_carnegie 40 "Associates Colleges",add
label define label_carnegie 51 "Theological seminaries and other specialized faith-related institutions",add
label define label_carnegie 52 "Medical schools and medical centers",add
label define label_carnegie 53 "Other separate health profession schools",add
label define label_carnegie 54 "Schools of engineering and technology",add
label define label_carnegie 55 "Schools of business and management",add
label define label_carnegie 56 "Schools of art, music, and design",add
label define label_carnegie 57 "Schools of law",add
label define label_carnegie 58 "Teachers colleges",add
label define label_carnegie 59 "Other specialized institutions",add
label define label_carnegie 60 "Tribal colleges",add
label define label_carnegie -3 "{Item not available}",add
label values carnegie label_carnegie
label define label_landgrnt 1 "Land Grant Institution"
label define label_landgrnt 2 "Not a Land Grant Institution",add
label values landgrnt label_landgrnt
label define label_instsize 1 "Under 1,000"
label define label_instsize 2 "1,000 - 4,999",add
label define label_instsize 3 "5,000 - 9,999",add
label define label_instsize 4 "10,000 - 19,999",add
label define label_instsize 5 "20,000 and above",add
label define label_instsize -1 "Not reported",add
label define label_instsize -2 "Not applicable",add
label values instsize label_instsize
label define label_f1systyp 1 "Institution is part of a multi-institution or multi-campus organization"
label define label_f1systyp 2 "Institution is NOT part of a multi-institution or multi-campus organization",add
label define label_f1systyp -1 "Not reported",add
label define label_f1systyp -2 "Not applicable",add
label values f1systyp label_f1systyp
label define label_f1syscod 101030 "AL - Alabama Community College System"
label define label_f1syscod 101040 "AL - Auburn University",add
label define label_f1syscod 101050 "AL - The University of Alabama System",add
label define label_f1syscod 102010 "AK - University of Alaska System of Higher Education",add
label define label_f1syscod 104010 "AZ - Arizona Board of Regents",add
label define label_f1syscod 104020 "AZ - Maricopa Community College District",add
label define label_f1syscod 105010 "AR - Arkansas State University System",add
label define label_f1syscod 105020 "AR - Southern Arkansas University System",add
label define label_f1syscod 105030 "AR - University of Arkansas System",add
label define label_f1syscod 106010 "CA - California Community College System",add
label define label_f1syscod 106020 "CA - California State University",add
label define label_f1syscod 106030 "CA - Clovis Unified School District",add
label define label_f1syscod 106040 "CA - Downey Unified School District",add
label define label_f1syscod 106050 "CA - Los Angeles Community College District",add
label define label_f1syscod 106060 "CA - San Bernardino Community College District",add
label define label_f1syscod 106070 "CA - San Mateo County Community College District",add
label define label_f1syscod 106080 "CA - University of California",add
label define label_f1syscod 106090 "CA - West Valley Mission Community College District",add
label define label_f1syscod 108010 "CO - Colorado Community College System",add
label define label_f1syscod 108020 "CO - Colorado State University System",add
label define label_f1syscod 108030 "CO - Delta County School District 50-J",add
label define label_f1syscod 108040 "CO - University of Colorado",add
label define label_f1syscod 109010 "CT - Connecticut State Colleges and Universities",add
label define label_f1syscod 109030 "CT - Connecticut Technical High School System",add
label define label_f1syscod 110010 "DE - Delaware Technical and Community Colleges",add
label define label_f1syscod 111010 "DC - University of the District of Columbia",add
label define label_f1syscod 112010 "FL - Broward County Public Schools",add
label define label_f1syscod 112020 "FL - Collier County Public School District, Florida",add
label define label_f1syscod 112030 "FL - Florida State Board of Education",add
label define label_f1syscod 112040 "FL - Hillsborough Technical Colleges",add
label define label_f1syscod 112050 "FL - Leon County School Board",add
label define label_f1syscod 112060 "FL - Miami-Dade County Public Schools",add
label define label_f1syscod 112070 "FL - Orange County Public Schools",add
label define label_f1syscod 112080 "FL - Pasco County Schools",add
label define label_f1syscod 112090 "FL - State University System of Florida",add
label define label_f1syscod 113010 "GA - Technical College System of Georgia",add
label define label_f1syscod 113020 "GA - University System of Georgia",add
label define label_f1syscod 115010 "HI - University of Hawaii Board of Regents",add
label define label_f1syscod 116010 "ID - Idaho State Board of Education",add
label define label_f1syscod 117010 "IL - City Colleges of Chicago",add
label define label_f1syscod 117020 "IL - Illinois Community College System",add
label define label_f1syscod 117030 "IL - Southern Illinois University",add
label define label_f1syscod 117040 "IL - University of Illinois Board of Trustees",add
label define label_f1syscod 118020 "IN - Indiana University",add
label define label_f1syscod 118030 "IN - Indiana University-Purdue University",add
label define label_f1syscod 118070 "IN - Purdue University",add
label define label_f1syscod 119010 "IA - Board of Regents, State of Iowa",add
label define label_f1syscod 119020 "IA - Iowa Valley Community College District",add
label define label_f1syscod 120010 "KS - Kansas State University System",add
label define label_f1syscod 121010 "KY - Kentucky Community and Technical College System",add
label define label_f1syscod 122010 "LA - Louisiana Community and Technical College System",add
label define label_f1syscod 122020 "LA - Louisiana State University System",add
label define label_f1syscod 122030 "LA - Southern University System",add
label define label_f1syscod 122040 "LA - The University of Louisiana System",add
label define label_f1syscod 123010 "ME - Maine Community College System",add
label define label_f1syscod 123020 "ME - University of Maine System",add
label define label_f1syscod 124010 "MD - University System of Maryland",add
label define label_f1syscod 125010 "MA - Massachusetts Community Colleges",add
label define label_f1syscod 125020 "MA - Southern Worcester County Regional Vocational School District",add
label define label_f1syscod 125030 "MA - University of Massachusetts",add
label define label_f1syscod 126010 "MI - University of Michigan",add
label define label_f1syscod 127010 "MN - Minnesota State Colleges and Universities",add
label define label_f1syscod 127020 "MN - University of Minnesota",add
label define label_f1syscod 128010 "MS - Mississippi Institutions of Higher Learning",add
label define label_f1syscod 128020 "MS - Mississippi State Board for Community and Junior Colleges",add
label define label_f1syscod 129020 "MO - Coordinating Board for Higher Education",add
label define label_f1syscod 129030 "MO - Harrisonville Cass R-IX School District",add
label define label_f1syscod 129050 "MO - Marshall Public School System",add
label define label_f1syscod 129070 "MO - Metropolitan Community Colleges",add
label define label_f1syscod 129080 "MO - Missouri State University",add
label define label_f1syscod 129090 "MO - Pike County R-3 School District",add
label define label_f1syscod 129100 "MO - Platte County R3 School District",add
label define label_f1syscod 129120 "MO - Rolla Public School District",add
label define label_f1syscod 129130 "MO - Warrensburg School District",add
label define label_f1syscod 129140 "MO - St Louis Community College District",add
label define label_f1syscod 129160 "MO - University of Missouri System",add
label define label_f1syscod 129170 "MO - Washington School District",add
label define label_f1syscod 130010 "MT - Chippewa-Cree Tribal Ordinance",add
label define label_f1syscod 130020 "MT - Montana University System",add
label define label_f1syscod 131010 "NE - Nebraska State College System",add
label define label_f1syscod 131020 "NE - University of Nebraska",add
label define label_f1syscod 132010 "NV - Nevada System of Higher Education",add
label define label_f1syscod 133010 "NH - Community College System of New Hampshire",add
label define label_f1syscod 133020 "NH - University System of New Hampshire",add
label define label_f1syscod 134010 "NJ - Bergen County Technical Schools",add
label define label_f1syscod 134020 "NJ - State of New Jersey",add
label define label_f1syscod 135010 "NM - Eastern New Mexico University",add
label define label_f1syscod 135020 "NM - New Mexico State University System",add
label define label_f1syscod 135030 "NM - University of New Mexico",add
label define label_f1syscod 136010 "NY - City University of New York",add
label define label_f1syscod 136020 "NY - New York State Education Department",add
label define label_f1syscod 136040 "NY - State University of New York System",add
label define label_f1syscod 136050 "NY - Syracuse City School District",add
label define label_f1syscod 137010 "NC - Carolinas HealthCare System",add
label define label_f1syscod 137020 "NC - North Carolina Community College System",add
label define label_f1syscod 137030 "NC - University of North Carolina",add
label define label_f1syscod 138010 "ND - North Dakota University System",add
label define label_f1syscod 139010 "OH - Akron Public School System",add
label define label_f1syscod 139020 "OH - Cuyahoga Valley Career Center",add
label define label_f1syscod 139030 "OH - Eastland-Fairfield Career and Technical Schools",add
label define label_f1syscod 139050 "OH - Knox County Career County School Board",add
label define label_f1syscod 139060 "OH - Ohio University",add
label define label_f1syscod 139065 "OH - The Ohio State University-Main Campus",add
label define label_f1syscod 139090 "OH - The University System of Ohio",add
label define label_f1syscod 139100 "OH - Tri-Rivers JVSD",add
label define label_f1syscod 139110 "OH - Vanguard-Sentinel Career Centers",add
label define label_f1syscod 139130 "OH - Wayne County Joint Vocational School District",add
label define label_f1syscod 139140 "OH - Willoughby-Eastlake City Schools",add
label define label_f1syscod 140020 "OK - Oklahoma Department of Career and Technology Education",add
label define label_f1syscod 140030 "OK - Oklahoma State System of Higher Education",add
label define label_f1syscod 140050 "OK - Regional University System of Oklahoma",add
label define label_f1syscod 141010 "OR - Community Colleges and Workforce Development",add
label define label_f1syscod 142020 "PA - Joint Operating Committee for the ICTC",add
label define label_f1syscod 142030 "PA - Joint Operating Committee of the Somerset County Technology",add
label define label_f1syscod 142050 "PA - Pennsylvania State System of Higher Education",add
label define label_f1syscod 142060 "PA - The Pennsylvania State University",add
label define label_f1syscod 142070 "PA - University of Pittsburgh",add
label define label_f1syscod 144010 "RI - Rhode Island Board of Education",add
label define label_f1syscod 145010 "SC - South Carolina Commission of Higher Education",add
label define label_f1syscod 145020 "SC - South Carolina Technical College System",add
label define label_f1syscod 145030 "SC - University of South Carolina",add
label define label_f1syscod 146010 "SD - South Dakota Board of Education",add
label define label_f1syscod 146020 "SD - South Dakota Board of Regents",add
label define label_f1syscod 147010 "TN - The State University and Community College System of Tennessee",add
label define label_f1syscod 147020 "TN - The University of Tennessee System",add
label define label_f1syscod 148010 "TX - Alamo Colleges",add
label define label_f1syscod 148020 "TX - Texas A&M University System",add
label define label_f1syscod 148030 "TX - Texas State Technical College System",add
label define label_f1syscod 148040 "TX - Texas State University System",add
label define label_f1syscod 148050 "TX - Texas Tech University System",add
label define label_f1syscod 148060 "TX - The University of Texas System",add
label define label_f1syscod 148070 "TX - University of Houston System",add
label define label_f1syscod 148080 "TX - University of North Texas System",add
label define label_f1syscod 149010 "UT - Utah College of Applied Technology",add
label define label_f1syscod 149020 "UT - Utah System of Higher Education",add
label define label_f1syscod 150010 "VT - Vermont State Colleges",add
label define label_f1syscod 151020 "VA - Virginia Beach City Public Schools",add
label define label_f1syscod 151030 "VA - Virginia Community College System",add
label define label_f1syscod 153010 "WA - University of Washington",add
label define label_f1syscod 153020 "WA - Washington State Board for Community and Technical Colleges",add
label define label_f1syscod 154010 "WV - Cabell County School System",add
label define label_f1syscod 154020 "WV - Mercer County Schools",add
label define label_f1syscod 154030 "WV - Mineral County Schools",add
label define label_f1syscod 154040 "WV - Monongalia County Board of Education",add
label define label_f1syscod 154050 "WV - Raleigh County Board of Education",add
label define label_f1syscod 154060 "WV - West Virginia Community and Technical College System",add
label define label_f1syscod 154070 "WV - West Virginia Department of Education, Fayette County Schools",add
label define label_f1syscod 154080 "WV - West Virginia Higher Education Policy Commission",add
label define label_f1syscod 155010 "WI - University of Wisconsin System",add
label define label_f1syscod 155020 "WI - Wisconsin Technical College System",add
label define label_f1syscod 172010 "PR - Puerto Rico State Department of Education",add
label define label_f1syscod 172020 "PR - University of Puerto Rico",add
label define label_f1syscod 200010 "Abington Memorial Hospital",add
label define label_f1syscod 200030 "Albany Medical Center",add
label define label_f1syscod 200040 "Alegent Health",add
label define label_f1syscod 200060 "American Academy of Dramatic Arts",add
label define label_f1syscod 200070 "American Indian OIC",add
label define label_f1syscod 200080 "Antioch University",add
label define label_f1syscod 200090 "Archdiocese of New Orleans",add
label define label_f1syscod 200100 "Arnot Ogden Medical Center",add
label define label_f1syscod 200110 "Association for Research and Enlightenment",add
label define label_f1syscod 200120 "Augustana College Association",add
label define label_f1syscod 200130 "Averett University",add
label define label_f1syscod 200140 "Baker College System",add
label define label_f1syscod 200150 "Baptist Health",add
label define label_f1syscod 200160 "Baptist Memorial Health Care Corporation",add
label define label_f1syscod 200170 "Bard College",add
label define label_f1syscod 200180 "Barnes-Jewish Hospital",add
label define label_f1syscod 200190 "Bellin Health Systems",add
label define label_f1syscod 200200 "Beth Israel Medical Center",add
label define label_f1syscod 200220 "Bethel University",add
label define label_f1syscod 200230 "Bon Secours Health System",add
label define label_f1syscod 200260 "Caney Creek Community Center Inc.",add
label define label_f1syscod 200290 "Casa Loma College Inc.",add
label define label_f1syscod 200320 "Catholic Health Initiatives",add
label define label_f1syscod 200330 "Center for Employment Training",add
label define label_f1syscod 200333 "Center for Excellence in Higher Education",add
label define label_f1syscod 200340 "Centra Health",add
label define label_f1syscod 200350 "Central Methodist University",add
label define label_f1syscod 200380 "Chapman University",add
label define label_f1syscod 200390 "Church of God Mission Board of Puerto Rico",add
label define label_f1syscod 200410 "City College Inc.",add
label define label_f1syscod 200420 "Cleveland Clinic",add
label define label_f1syscod 200430 "Columbia International University",add
label define label_f1syscod 200440 "Columbus College of Art and Design Board of Trustees",add
label define label_f1syscod 200445 "Community HigherEd Institute",add
label define label_f1syscod 200450 "Concordia University System",add
label define label_f1syscod 200480 "CoxHealth",add
label define label_f1syscod 200490 "Cranbrook Educational Community",add
label define label_f1syscod 200500 "Crouse Health Hospital Inc.",add
label define label_f1syscod 200510 "Dominican University",add
label define label_f1syscod 200530 "EDP College of Puerto Rico Inc.",add
label define label_f1syscod 200540 "Ecclesia Inc.",add
label define label_f1syscod 200550 "Elizabethtown College",add
label define label_f1syscod 200554 "Embry-Riddle Aeronautical University Inc.",add
label define label_f1syscod 200560 "Frank Lloyd Wright Foundation",add
label define label_f1syscod 200570 "General Health System",add
label define label_f1syscod 200580 "Geneva General Hospital",add
label define label_f1syscod 200590 "Goddard College Corporation",add
label define label_f1syscod 200600 "Graceland University",add
label define label_f1syscod 200610 "Graham Hospital",add
label define label_f1syscod 200620 "Hallmark Health Systems Inc.",add
label define label_f1syscod 200630 "Hazelden Foundation Board of Governors",add
label define label_f1syscod 200640 "Hebrew Union College",add
label define label_f1syscod 200650 "Hellenic College Inc.",add
label define label_f1syscod 200670 "Holy Name Hospital",add
label define label_f1syscod 200680 "Hood Theological Seminary Board of Trustees",add
label define label_f1syscod 200740 "Iowa Health System",add
label define label_f1syscod 200750 "JEVS Human Services",add
label define label_f1syscod 200760 "JFK Health",add
label define label_f1syscod 200770 "Jefferson Regional Medical System",add
label define label_f1syscod 200780 "Johnson & Wales University",add
label define label_f1syscod 200783 "Johnson University",add
label define label_f1syscod 200790 "Kettering Health Network",add
label define label_f1syscod 200800 "Knights of Columbus Family Life Bureau Inc.",add
label define label_f1syscod 200810 "Lewistown Hospital",add
label define label_f1syscod 200815 "Linfield College",add
label define label_f1syscod 200820 "Los Angeles Jewish Home",add
label define label_f1syscod 200850 "Marlboro College",add
label define label_f1syscod 200860 "Mayo Clinic",add
label define label_f1syscod 200880 "Mercy",add
label define label_f1syscod 200890 "Methodist Health System",add
label define label_f1syscod 200900 "Methodist Medical Center of Illinois",add
label define label_f1syscod 200910 "LECOM Health System",add
label define label_f1syscod 200913 "Middlebury College",add
label define label_f1syscod 200930 "National University System",add
label define label_f1syscod 200960 "New England School of Law Corporation",add
label define label_f1syscod 200970 "New York Botanical Garden",add
label define label_f1syscod 200980 "New York Methodist Hospital",add
label define label_f1syscod 200990 "Northwood University",add
label define label_f1syscod 201010 "OSF Healthcare",add
label define label_f1syscod 201020 "Ohio Valley General Hospital",add
label define label_f1syscod 201030 "Palm Beach Atlantic University Inc.",add
label define label_f1syscod 201040 "Palmer College Foundation",add
label define label_f1syscod 201050 "Partners Health Care",add
label define label_f1syscod 201070 "Pierce Mortuary Colleges Inc.",add
label define label_f1syscod 201080 "Pittsburgh Mercy Health System",add
label define label_f1syscod 201090 "Polytechnic University",add
label define label_f1syscod 201100 "Pontifical Catholic University of Puerto Rico Inc.",add
label define label_f1syscod 201110 "Private Industry Council of Westmorland/Fayette Inc.",add
label define label_f1syscod 201140 "Providence Health and Services",add
label define label_f1syscod 201150 "Reading Hospital and Medical Center",add
label define label_f1syscod 201160 "Regis Corporation",add
label define label_f1syscod 201170 "Remington College Inc.",add
label define label_f1syscod 201200 "Resurrection Health Care",add
label define label_f1syscod 201210 "Reynolds Memorial Hospital Board of Directors",add
label define label_f1syscod 201220 "Riverside Health System",add
label define label_f1syscod 201250 "Saint Vincent College Corporation",add
label define label_f1syscod 201260 "Sanford Health",add
label define label_f1syscod 201290 "Shadow Mountain Ministries",add
label define label_f1syscod 201310 "Shorter College",add
label define label_f1syscod 201320 "Sistema Universitario Ana G. Mendez",add
label define label_f1syscod 201330 "Sor Isolina Ferre Centers Inc.",add
label define label_f1syscod 201350 "Southeast Missouri Hospital",add
label define label_f1syscod 201390 "Saint Joseph Hospital",add
label define label_f1syscod 201400 "Saint Joseph^s Hospital Health Center",add
label define label_f1syscod 201410 "Saint Francis Medical Center",add
label define label_f1syscod 201420 "Saint John^s College",add
label define label_f1syscod 201430 "Sutter Health",add
label define label_f1syscod 201440 "TechMission",add
label define label_f1syscod 201460 "The Chicago School of Professional Psychology",add
label define label_f1syscod 201470 "The Claremont Colleges",add
label define label_f1syscod 201480 "The RAND Corporation",add
label define label_f1syscod 201490 "The Santa Barbara and Ventura Colleges of Law",add
label define label_f1syscod 201500 "Touro College and University System",add
label define label_f1syscod 201510 "Tri-City Baptist Ministries",add
label define label_f1syscod 201525 "Ultimate Medical Academy",add
label define label_f1syscod 201530 "Universidad Interamericana de Puerto Rico",add
label define label_f1syscod 201540 "Universidad Politecnica",add
label define label_f1syscod 201550 "University of Pittsburgh Medical Center",add
label define label_f1syscod 201570 "Whitworth University",add
label define label_f1syscod 201590 "Word of Life Fellowship Inc.",add
label define label_f1syscod 201620 "Zenith Group",add
label define label_f1syscod 300010 "A Technological Advantage Inc.",add
label define label_f1syscod 300015 "American Academy of Personal Training",add
label define label_f1syscod 300032 "American National University",add
label define label_f1syscod 300070 "STVT-AAI Education Inc.",add
label define label_f1syscod 300100 "Academy of Hair Design Inc.",add
label define label_f1syscod 300120 "Acupuncture Center Inc.",add
label define label_f1syscod 300130 "Adcon Technical Institute Inc.",add
label define label_f1syscod 300160 "Allen School",add
label define label_f1syscod 300165 "Alliant International University, Inc.",add
label define label_f1syscod 300210 "American Career College Inc.",add
label define label_f1syscod 300230 "American Colleges of Hairstyling Inc.",add
label define label_f1syscod 300260 "American Educational College Inc.",add
label define label_f1syscod 300280 "American Higher Education Development Corporation",add
label define label_f1syscod 300290 "American Institute",add
label define label_f1syscod 300300 "American Institute of Medical Dental Technology Inc.",add
label define label_f1syscod 300310 "American Institute of Technology Inc.",add
label define label_f1syscod 300320 "American Public Education Inc.",add
label define label_f1syscod 300340 "Apollo Education Group, Inc",add
label define label_f1syscod 300350 "Arthur^s Beauty College Inc.",add
label define label_f1syscod 300370 "Atlanta^s John Marshall Law School",add
label define label_f1syscod 300380 "Automeca Technical College Inc.",add
label define label_f1syscod 300390 "Automotive Training Center Inc.",add
label define label_f1syscod 300400 "Aveda Institute",add
label define label_f1syscod 300420 "BARBEC Inc.",add
label define label_f1syscod 300430 "Babylon Beauty School of Smithtown Inc.",add
label define label_f1syscod 300440 "Baptist Health System VHS San Antonio Partners LLC",add
label define label_f1syscod 300450 "Bayshire Academy of Beauty Craft Inc.",add
label define label_f1syscod 300470 "Beauty Boutique Inc.",add
label define label_f1syscod 300490 "Beauty Careers Institute Inc.",add
label define label_f1syscod 300500 "Beauty First joint corporation",add
label define label_f1syscod 300510 "Beauty World Corporation",add
label define label_f1syscod 300530 "Berkeley College/Berkeley Education Services",add
label define label_f1syscod 300550 "Bradford Schools Inc.",add
label define label_f1syscod 300570 "Bridgepoint Education",add
label define label_f1syscod 300580 "Select Education Group",add
label define label_f1syscod 300590 "Broadview Institute Inc.",add
label define label_f1syscod 300610 "Broken Arrow Beauty College Inc.",add
label define label_f1syscod 300620 "Brookline College, LLC",add
label define label_f1syscod 300623 "Brown Aveda",add
label define label_f1syscod 300630 "Bryan Career College Inc.",add
label define label_f1syscod 300650 "Bryant & Stratton College",add
label define label_f1syscod 300660 "Buchanan Beauty College",add
label define label_f1syscod 300670 "Bullen and Wilson LLC",add
label define label_f1syscod 300680 "Burnikel Inc.",add
label define label_f1syscod 300690 "Clido Inc.",add
label define label_f1syscod 300700 "CNT CORPORATION",add
label define label_f1syscod 300710 "CSI Career College",add
label define label_f1syscod 300720 "CTM Enterprises Inc.",add
label define label_f1syscod 300740 "California School of Court Reporting - Riverside Inc.",add
label define label_f1syscod 300760 "Campus Hollywood",add
label define label_f1syscod 300800 "Capri Schools of Beauty Culture Inc.",add
label define label_f1syscod 300810 "Capri Training Centers Inc.",add
label define label_f1syscod 300820 "Career Care Institute Inc.",add
label define label_f1syscod 300840 "Career Education Corporation",add
label define label_f1syscod 300870 "Career Management Systems",add
label define label_f1syscod 300890 "Career Training Academy Inc.",add
label define label_f1syscod 300910 "Career Training Specialists LLC",add
label define label_f1syscod 300920 "Carrington Colleges Group Inc.",add
label define label_f1syscod 300930 "Carsten Institute of Cosmetology",add
label define label_f1syscod 300940 "Center for Professional Studies Inc.",add
label define label_f1syscod 300960 "Central Career School Inc.",add
label define label_f1syscod 300970 "Central State Beauty Academy",add
label define label_f1syscod 300980 "Chamberlain College of Nursing & Health Sciences Inc.",add
label define label_f1syscod 301000 "Cleveland Institute of Dental-Medical Assistants Inc.",add
label define label_f1syscod 301005 "Coachella Valley Beauty College Inc",add
label define label_f1syscod 301040 "College of Business and Technology Inc.",add
label define label_f1syscod 301080 "Columbia College Corporation",add
label define label_f1syscod 301090 "Columbia College Inc.",add
label define label_f1syscod 301100 "Columbia Greene Beauty School Inc.",add
label define label_f1syscod 301110 "Columbia Southern Education Group Inc.",add
label define label_f1syscod 301120 "Command Concept Company Inc.",add
label define label_f1syscod 301140 "Community Health Systems",add
label define label_f1syscod 301150 "Compass Rose Foundation",add
label define label_f1syscod 301160 "Compu-Med Vocational Careers Corp",add
label define label_f1syscod 301180 "Concorde Career Colleges Inc.",add
label define label_f1syscod 301200 "Consolidated School of Business Inc.",add
label define label_f1syscod 301210 "Coral Springs Schools Inc.",add
label define label_f1syscod 301290 "Cosmetology Careers Unlimited Inc.",add
label define label_f1syscod 301300 "Coyne American Institute Inc.",add
label define label_f1syscod 301310 "Crystal Lake Academy Inc.",add
label define label_f1syscod 301320 "D & L Academy of Hair Design Inc.",add
label define label_f1syscod 301330 "D^Mart Institute Inc.",add
label define label_f1syscod 301350 "Dlorah Inc.",add
label define label_f1syscod 301370 "Darrobe Inc.",add
label define label_f1syscod 301390 "Daymar Colleges Group",add
label define label_f1syscod 301420 "DeVry University Inc.",add
label define label_f1syscod 301440 "Delta Career Education Corporation",add
label define label_f1syscod 301460 "Design Academy Inc.",add
label define label_f1syscod 301470 "Design^s School of Cosmetology Inc.",add
label define label_f1syscod 301475 "Diesel Driving Academy",add
label define label_f1syscod 301480 "Digipen Corporation",add
label define label_f1syscod 301490 "Toni & Guy Hairdressing Academy",add
label define label_f1syscod 301500 "Diversified Education Company",add
label define label_f1syscod 301520 "Dorsey School of Business Holdings Inc.",add
label define label_f1syscod 301570 "Dudley Nwani The School LLC",add
label define label_f1syscod 301580 "Duran Rubero Beauty Center Inc.",add
label define label_f1syscod 301590 "EA Education Inc.",add
label define label_f1syscod 301600 "Novateur Education",add
label define label_f1syscod 301620 "EduK Group",add
label define label_f1syscod 301640 "EEG Inc.",add
label define label_f1syscod 301650 "EFC Trade",add
label define label_f1syscod 301680 "Edco Systems LP",add
label define label_f1syscod 301720 "Education Affiliates Inc.",add
label define label_f1syscod 301770 "Education Corporation of America",add
label define label_f1syscod 301780 "Education Futures Group LLC",add
label define label_f1syscod 301790 "Education Management Corporation",add
label define label_f1syscod 301810 "Education Management Inc.",add
label define label_f1syscod 301840 "Educational Management Corporation",add
label define label_f1syscod 301850 "Educational Technical College",add
label define label_f1syscod 301870 "Elaine Steven Beauty College Inc.",add
label define label_f1syscod 301880 "Elizabeth Grady Face First Inc.",add
label define label_f1syscod 301890 "Empire Education Corporation",add
label define label_f1syscod 301910 "Employment Services Inc.",add
label define label_f1syscod 301920 "Empowerment Healthcare Schools",add
label define label_f1syscod 301950 "Escuela de Peritos Electricistas de Isabela Inc.",add
label define label_f1syscod 301970 "Ethos Educational Services, LLC",add
label define label_f1syscod 301975 "European Message Therapy Schools",add
label define label_f1syscod 301980 "Evans Hairstyling College of Cedar City Inc.",add
label define label_f1syscod 301990 "Evergreen Cosmo Inc.",add
label define label_f1syscod 301995 "Excel Salon Products Incorporated",add
label define label_f1syscod 302010 "Fiegen & Bisenius Inc.",add
label define label_f1syscod 302030 "Finger Lakes Massage Group Inc.",add
label define label_f1syscod 302060 "Fox Institute of Business Inc.",add
label define label_f1syscod 302090 "GFH Inc.",add
label define label_f1syscod 302120 "Galloway Enterprises Inc.",add
label define label_f1syscod 302140 "Gem City College",add
label define label_f1syscod 302150 "Gene Juarez Beauty Schools LLC",add
label define label_f1syscod 302160 "Globe University Inc",add
label define label_f1syscod 302200 "HMR Enterprises Inc.",add
label define label_f1syscod 302240 "Hays Academy of Hair Design",add
label define label_f1syscod 302245 "HCA Healthcare",add
label define label_f1syscod 302280 "Herzing Inc.",add
label define label_f1syscod 302335 "Houghton Lake Institute of Cosmetology",add
label define label_f1syscod 302340 "House of Heavilin of Blue Springs Inc.",add
label define label_f1syscod 302360 "Houston Training Schools Inc.",add
label define label_f1syscod 302365 "Human Capital Incorporated",add
label define label_f1syscod 302370 "Hunter Business School Inc.",add
label define label_f1syscod 302380 "Hussian School of Art Inc.",add
label define label_f1syscod 302390 "IABC Inc.",add
label define label_f1syscod 302410 "ITT Educational Services Inc.",add
label define label_f1syscod 302460 "Institute of Cosmetology LTD",add
label define label_f1syscod 302470 "Instituto de Educacion Inc.",add
label define label_f1syscod 302480 "Interactive Learning Systems Inc.",add
label define label_f1syscod 302490 "International Business College Inc.",add
label define label_f1syscod 302520 "International Culinary Center - New York",add
label define label_f1syscod 302530 "International Education Corporation",add
label define label_f1syscod 302540 "International Institute for the Advancement of Aesthetics Inc.",add
label define label_f1syscod 302550 "Iowa School of Beauty Inc.",add
label define label_f1syscod 302570 "J2D LLC",add
label define label_f1syscod 302590 "JTC Education Inc.",add
label define label_f1syscod 302600 "John Jay Beauty College Inc.",add
label define label_f1syscod 302620 "Joseph^s Colleges of Beauty and Barbering",add
label define label_f1syscod 302630 "Kansas School of Barbering",add
label define label_f1syscod 302640 "Kaplan Higher Education Corporation",add
label define label_f1syscod 302680 "Kenlew Inc.",add
label define label_f1syscod 302690 "Kensington College Inc.",add
label define label_f1syscod 302700 "Kip Siu LLC",add
label define label_f1syscod 302730 "LIBI Corporation",add
label define label_f1syscod 302740 "LTT Enterprises Inc.",add
label define label_f1syscod 302750 "La James International College",add
label define label_f1syscod 302760 "LaLaak Corporation",add
label define label_f1syscod 302780 "Latress Beauty Academy Inc.",add
label define label_f1syscod 302810 "Laureate Education Inc.",add
label define label_f1syscod 302820 "Laurel Business Institute",add
label define label_f1syscod 302840 "Leighann holdings Inc.",add
label define label_f1syscod 302850 "Liberatoscioli Inc.",add
label define label_f1syscod 302860 "Liberty Group",add
label define label_f1syscod 302880 "Lincoln Barber College",add
label define label_f1syscod 302900 "Lincoln Educational Services",add
label define label_f1syscod 302910 "Loretta Paganini School of Cooking Inc.",add
label define label_f1syscod 302930 "M & S Media Inc.",add
label define label_f1syscod 302980 "Make-up Designory Inc.",add
label define label_f1syscod 303000 "Mansfield Beauty Schools Inc.",add
label define label_f1syscod 303010 "Manuel and Theresa^s School of Hair Design",add
label define label_f1syscod 303040 "Marian Health Careers Center",add
label define label_f1syscod 303050 "Mayfield College Inc.",add
label define label_f1syscod 303085 "Med-Life Enterprises, Inc.",add
label define label_f1syscod 303090 "MediaTech Institute",add
label define label_f1syscod 303100 "Medical Dynamics Inc.",add
label define label_f1syscod 303110 "Medical Professional Services Inc.",add
label define label_f1syscod 303120 "Mellie^s Inc.",add
label define label_f1syscod 303130 "Metro Business College",add
label define label_f1syscod 303180 "Midwest Technical Institute Inc.",add
label define label_f1syscod 303190 "Mikhail Education Corporation",add
label define label_f1syscod 303200 "Milan Institute",add
label define label_f1syscod 303240 "Minnesota School of Business Inc",add
label define label_f1syscod 303250 "Minnesota School of Cosmetology Inc.",add
label define label_f1syscod 303260 "Mississippi Institute of Aesthetics, Nails, & Cosmetology Inc.",add
label define label_f1syscod 303270 "Mitchell^s Hair Styling Inc.",add
label define label_f1syscod 303275 "MJ^s Beauty Academy, Inc.",add
label define label_f1syscod 303280 "Montano Pabon and Associates",add
label define label_f1syscod 303290 "Moored Associates LLC",add
label define label_f1syscod 303300 "Ms Beau Monde Inc.",add
label define label_f1syscod 303320 "MyComputerCareer.com Inc.",add
label define label_f1syscod 303330 "NPTI Colorado",add
label define label_f1syscod 303340 "National Aviation Academy",add
label define label_f1syscod 303350 "National College",add
label define label_f1syscod 303380 "National Education Seminars Inc.",add
label define label_f1syscod 303390 "National Tractor Trailer School Inc.",add
label define label_f1syscod 303400 "New England Tractor Trailer Training of Massachusetts Inc.",add
label define label_f1syscod 303410 "New York Film Academy",add
label define label_f1syscod 303460 "North American Trade Schools Inc.",add
label define label_f1syscod 303470 "North Penn Business & Technical Institute Inc.",add
label define label_f1syscod 303480 "North-West College",add
label define label_f1syscod 303500 "Northwestern College",add
label define label_f1syscod 303520 "Oceanside College of Beauty Inc.",add
label define label_f1syscod 303530 "Ohio State School of Cosmetology Corporation",add
label define label_f1syscod 303540 "Olympus Inc.",add
label define label_f1syscod 303550 "P & A Scholars Inc.",add
label define label_f1syscod 303580 "PJ^s College of Cosmetology Inc.",add
label define label_f1syscod 303590 "Pacific College of Oriental Medicine",add
label define label_f1syscod 303610 "Paul Mitchell Schools",add
label define label_f1syscod 303620 "Paul Mitchell The School",add
label define label_f1syscod 303650 "Pennco Institutes Inc.",add
label define label_f1syscod 303660 "Phagans Cosmetology Colleges",add
label define label_f1syscod 303680 "Pinnacle Ventures Inc.",add
label define label_f1syscod 303690 "Pioneer Education LLC",add
label define label_f1syscod 303700 "Pivot Point International Inc.",add
label define label_f1syscod 303710 "Platt College LLC.",add
label define label_f1syscod 303730 "Pocatello Beauty Academy Inc.",add
label define label_f1syscod 303740 "Porter and Chester",add
label define label_f1syscod 303745 "Poway Academy of Hair Design Inc.",add
label define label_f1syscod 303770 "Premier Education Group LP",add
label define label_f1syscod 303790 "Prince Careers Inc.",add
label define label_f1syscod 303800 "Prism Education Group",add
label define label_f1syscod 303810 "Professional Skills Inc.",add
label define label_f1syscod 303820 "Professional^s Choice Hair Design Academy",add
label define label_f1syscod 303830 "Prospect Education",add
label define label_f1syscod 303840 "Qe2 Systems Inc.",add
label define label_f1syscod 303850 "Quest Education Corporation",add
label define label_f1syscod 303860 "R & M Beauty",add
label define label_f1syscod 303880 "RTP Hispanic American College Inc.",add
label define label_f1syscod 303890 "RWH Inc.",add
label define label_f1syscod 303900 "Raphaels School of Beauty Culture Inc.",add
label define label_f1syscod 303910 "Rasmussen College Inc.",add
label define label_f1syscod 303920 "Reed Jackson Holdings Inc.",add
label define label_f1syscod 303950 "Rembrandt Group",add
label define label_f1syscod 303970 "Resource Productivity Management Inc.",add
label define label_f1syscod 303980 "Ridley-Lowell School of Business Inc.",add
label define label_f1syscod 304000 "Rob Roy Academy Inc.",add
label define label_f1syscod 304010 "Rockhurst University",add
label define label_f1syscod 304050 "Ross Education, LLC",add
label define label_f1syscod 304070 "Rosslyn Training Academy of Cosmetology Inc.",add
label define label_f1syscod 304080 "Rudae^s Inc.",add
label define label_f1syscod 304120 "SAE Institute Group Inc.",add
label define label_f1syscod 304130 "Southern Technical Holdings, LLC",add
label define label_f1syscod 304150 "SSS Education Inc.",add
label define label_f1syscod 304180 "San Joaquin Valley College Inc.",add
label define label_f1syscod 304190 "Sanbarcollbuscom Inc.",add
label define label_f1syscod 304200 "Sapientis Educational Group Inc.",add
label define label_f1syscod 304210 "Schwarzkopf Professional.",add
label define label_f1syscod 304230 "Silva and Lopez Associates Inc.",add
label define label_f1syscod 304250 "Southern California Education Corporation",add
label define label_f1syscod 304270 "Steiner Education Group",add
label define label_f1syscod 304290 "Stenograph LLC",add
label define label_f1syscod 304320 "Sterling School of Beauty Culture Inc.",add
label define label_f1syscod 304370 "Strayer Education Inc.",add
label define label_f1syscod 304400 "Studio Production Inc.",add
label define label_f1syscod 304410 "Stylemaster^s Beauty Academy Inc.",add
label define label_f1syscod 304420 "Sullivan University System",add
label define label_f1syscod 304430 "Summer Street Capital II LP",add
label define label_f1syscod 304440 "Syllan Careers Inc.",add
label define label_f1syscod 304450 "TBES Inc.",add
label define label_f1syscod 304460 "TDDS Inc.",add
label define label_f1syscod 304470 "TechSkills LLC",add
label define label_f1syscod 304480 "Technical Education Services, Inc",add
label define label_f1syscod 304500 "Technology Training Systems Inc.",add
label define label_f1syscod 304520 "The Fashion Institute of Design and Merchandising",add
label define label_f1syscod 304530 "The Infilaw System",add
label define label_f1syscod 304550 "The Salon Professional Academy",add
label define label_f1syscod 304580 "The Taft University System Inc.",add
label define label_f1syscod 304590 "Tint School of Makeup & Cosmetology",add
label define label_f1syscod 304600 "Total Looks Corporation",add
label define label_f1syscod 304630 "Tri-County Schools of Beauty Culture Inc.",add
label define label_f1syscod 304650 "Tri-State Educational Systems Inc.",add
label define label_f1syscod 304660 "Triangle Tech Inc.",add
label define label_f1syscod 304670 "Tricoci University of Beauty Culture LLC",add
label define label_f1syscod 304690 "Triumph Higher Education Group",add
label define label_f1syscod 304700 "Tulsa Welding School Inc.",add
label define label_f1syscod 304730 "UCAS Inc.",add
label define label_f1syscod 304760 "Unitech Training Academy Inc.",add
label define label_f1syscod 304770 "United Investments of Illinois Inc.",add
label define label_f1syscod 304780 "Unitek Information Systems",add
label define label_f1syscod 304790 "Universal College of Beauty Inc.",add
label define label_f1syscod 304800 "Universal Technical Institute Inc.",add
label define label_f1syscod 304810 "University of Northwestern Ohio",add
label define label_f1syscod 304820 "University of Phoenix",add
label define label_f1syscod 304840 "VCC Management LLC",add
label define label_f1syscod 304850 "Valley Training Centers Inc.",add
label define label_f1syscod 304860 "Vatterott Educational Centers Inc.",add
label define label_f1syscod 304880 "Venus Schools Inc.",add
label define label_f1syscod 304905 "Vocational Training Institute",add
label define label_f1syscod 304910 "Volunteer Beauty Inc.",add
label define label_f1syscod 304930 "WellSpring Resources Inc.",add
label define label_f1syscod 304950 "West Coast University Inc.",add
label define label_f1syscod 304970 "West Virginia Junior College Inc.",add
label define label_f1syscod 304980 "Weston Educational Inc.",add
label define label_f1syscod 305010 "WorkForce Training Solutions Inc.",add
label define label_f1syscod 305020 "Xenon International Academy",add
label define label_f1syscod 305040 "York Technical Institute LLC",add
label define label_f1syscod 305060 "professional hands institute inc.",add
label define label_f1syscod 400010 "Institute of Allied Medical Professions",add
label define label_f1syscod -1 "Not reported",add
label define label_f1syscod -2 "Not applicable",add
label values f1syscod label_f1syscod
label define label_cbsa 10100 "Aberdeen, SD"
label define label_cbsa 10140 "Aberdeen, WA",add
label define label_cbsa 10180 "Abilene, TX",add
label define label_cbsa 10220 "Ada, OK",add
label define label_cbsa 10300 "Adrian, MI",add
label define label_cbsa 10380 "Aguadilla-Isabela, PR",add
label define label_cbsa 10420 "Akron, OH",add
label define label_cbsa 10460 "Alamogordo, NM",add
label define label_cbsa 10500 "Albany, GA",add
label define label_cbsa 10540 "Albany, OR",add
label define label_cbsa 10580 "Albany-Schenectady-Troy, NY",add
label define label_cbsa 10620 "Albemarle, NC",add
label define label_cbsa 10700 "Albertville, AL",add
label define label_cbsa 10740 "Albuquerque, NM",add
label define label_cbsa 10760 "Alexander City, AL",add
label define label_cbsa 10780 "Alexandria, LA",add
label define label_cbsa 10820 "Alexandria, MN",add
label define label_cbsa 10900 "Allentown-Bethlehem-Easton, PA-NJ",add
label define label_cbsa 10940 "Alma, MI",add
label define label_cbsa 10980 "Alpena, MI",add
label define label_cbsa 11020 "Altoona, PA",add
label define label_cbsa 11060 "Altus, OK",add
label define label_cbsa 11100 "Amarillo, TX",add
label define label_cbsa 11140 "Americus, GA",add
label define label_cbsa 11180 "Ames, IA",add
label define label_cbsa 11220 "Amsterdam, NY",add
label define label_cbsa 11260 "Anchorage, AK",add
label define label_cbsa 11420 "Angola, IN",add
label define label_cbsa 11460 "Ann Arbor, MI",add
label define label_cbsa 11500 "Anniston-Oxford-Jacksonville, AL",add
label define label_cbsa 11540 "Appleton, WI",add
label define label_cbsa 11620 "Ardmore, OK",add
label define label_cbsa 11640 "Arecibo, PR",add
label define label_cbsa 11660 "Arkadelphia, AR",add
label define label_cbsa 11680 "Arkansas City-Winfield, KS",add
label define label_cbsa 11700 "Asheville, NC",add
label define label_cbsa 11740 "Ashland, OH",add
label define label_cbsa 11780 "Ashtabula, OH",add
label define label_cbsa 11820 "Astoria, OR",add
label define label_cbsa 11860 "Atchison, KS",add
label define label_cbsa 11900 "Athens, OH",add
label define label_cbsa 11940 "Athens, TN",add
label define label_cbsa 11980 "Athens, TX",add
label define label_cbsa 12020 "Athens-Clarke County, GA",add
label define label_cbsa 12060 "Atlanta-Sandy Springs-Roswell, GA",add
label define label_cbsa 12100 "Atlantic City-Hammonton, NJ",add
label define label_cbsa 12120 "Atmore, AL",add
label define label_cbsa 12180 "Auburn, NY",add
label define label_cbsa 12220 "Auburn-Opelika, AL",add
label define label_cbsa 12260 "Augusta-Richmond County, GA-SC",add
label define label_cbsa 12300 "Augusta-Waterville, ME",add
label define label_cbsa 12380 "Austin, MN",add
label define label_cbsa 12420 "Austin-Round Rock, TX",add
label define label_cbsa 12460 "Bainbridge, GA",add
label define label_cbsa 12540 "Bakersfield, CA",add
label define label_cbsa 12580 "Baltimore-Columbia-Towson, MD",add
label define label_cbsa 12620 "Bangor, ME",add
label define label_cbsa 12660 "Baraboo, WI",add
label define label_cbsa 12700 "Barnstable Town, MA",add
label define label_cbsa 12740 "Barre, VT",add
label define label_cbsa 12780 "Bartlesville, OK",add
label define label_cbsa 12860 "Batavia, NY",add
label define label_cbsa 12900 "Batesville, AR",add
label define label_cbsa 12940 "Baton Rouge, LA",add
label define label_cbsa 12980 "Battle Creek, MI",add
label define label_cbsa 13020 "Bay City, MI",add
label define label_cbsa 13140 "Beaumont-Port Arthur, TX",add
label define label_cbsa 13180 "Beaver Dam, WI",add
label define label_cbsa 13220 "Beckley, WV",add
label define label_cbsa 13300 "Beeville, TX",add
label define label_cbsa 13380 "Bellingham, WA",add
label define label_cbsa 13420 "Bemidji, MN",add
label define label_cbsa 13460 "Bend-Redmond, OR",add
label define label_cbsa 13540 "Bennington, VT",add
label define label_cbsa 13620 "Berlin, NH-VT",add
label define label_cbsa 13660 "Big Rapids, MI",add
label define label_cbsa 13700 "Big Spring, TX",add
label define label_cbsa 13720 "Big Stone Gap, VA",add
label define label_cbsa 13740 "Billings, MT",add
label define label_cbsa 13780 "Binghamton, NY",add
label define label_cbsa 13820 "Birmingham-Hoover, AL",add
label define label_cbsa 13900 "Bismarck, ND",add
label define label_cbsa 13940 "Blackfoot, ID",add
label define label_cbsa 13980 "Blacksburg-Christiansburg-Radford, VA",add
label define label_cbsa 14010 "Bloomington, IL",add
label define label_cbsa 14020 "Bloomington, IN",add
label define label_cbsa 14100 "Bloomsburg-Berwick, PA",add
label define label_cbsa 14140 "Bluefield, WV-VA",add
label define label_cbsa 14180 "Blytheville, AR",add
label define label_cbsa 14220 "Bogalusa, LA",add
label define label_cbsa 14260 "Boise City, ID",add
label define label_cbsa 14380 "Boone, NC",add
label define label_cbsa 14420 "Borger, TX",add
label define label_cbsa 14460 "Boston-Cambridge-Newton, MA-NH",add
label define label_cbsa 14500 "Boulder, CO",add
label define label_cbsa 14540 "Bowling Green, KY",add
label define label_cbsa 14580 "Bozeman, MT",add
label define label_cbsa 14620 "Bradford, PA",add
label define label_cbsa 14660 "Brainerd, MN",add
label define label_cbsa 14700 "Branson, MO",add
label define label_cbsa 14740 "Bremerton-Silverdale, WA",add
label define label_cbsa 14780 "Brenham, TX",add
label define label_cbsa 14820 "Brevard, NC",add
label define label_cbsa 14860 "Bridgeport-Stamford-Norwalk, CT",add
label define label_cbsa 15100 "Brookings, SD",add
label define label_cbsa 15180 "Brownsville-Harlingen, TX",add
label define label_cbsa 15220 "Brownwood, TX",add
label define label_cbsa 15260 "Brunswick, GA",add
label define label_cbsa 15380 "Buffalo-Cheektowaga-Niagara Falls, NY",add
label define label_cbsa 15420 "Burley, ID",add
label define label_cbsa 15460 "Burlington, IA-IL",add
label define label_cbsa 15500 "Burlington, NC",add
label define label_cbsa 15540 "Burlington-South Burlington, VT",add
label define label_cbsa 15580 "Butte-Silver Bow, MT",add
label define label_cbsa 15620 "Cadillac, MI",add
label define label_cbsa 15680 "California-Lexington Park, MD",add
label define label_cbsa 15780 "Camden, AR",add
label define label_cbsa 15820 "Campbellsville, KY",add
label define label_cbsa 15900 "Canton, IL",add
label define label_cbsa 15940 "Canton-Massillon, OH",add
label define label_cbsa 15980 "Cape Coral-Fort Myers, FL",add
label define label_cbsa 16020 "Cape Girardeau, MO-IL",add
label define label_cbsa 16060 "Carbondale-Marion, IL",add
label define label_cbsa 16100 "Carlsbad-Artesia, NM",add
label define label_cbsa 16180 "Carson City, NV",add
label define label_cbsa 16220 "Casper, WY",add
label define label_cbsa 16260 "Cedar City, UT",add
label define label_cbsa 16300 "Cedar Rapids, IA",add
label define label_cbsa 16380 "Celina, OH",add
label define label_cbsa 16500 "Centralia, WA",add
label define label_cbsa 16540 "Chambersburg-Waynesboro, PA",add
label define label_cbsa 16580 "Champaign-Urbana, IL",add
label define label_cbsa 16620 "Charleston, WV",add
label define label_cbsa 16660 "Charleston-Mattoon, IL",add
label define label_cbsa 16700 "Charleston-North Charleston, SC",add
label define label_cbsa 16740 "Charlotte-Concord-Gastonia, NC-SC",add
label define label_cbsa 16820 "Charlottesville, VA",add
label define label_cbsa 16860 "Chattanooga, TN-GA",add
label define label_cbsa 16940 "Cheyenne, WY",add
label define label_cbsa 16980 "Chicago-Naperville-Elgin, IL-IN-WI",add
label define label_cbsa 17020 "Chico, CA",add
label define label_cbsa 17060 "Chillicothe, OH",add
label define label_cbsa 17140 "Cincinnati, OH-KY-IN",add
label define label_cbsa 17200 "Claremont-Lebanon, NH-VT",add
label define label_cbsa 17220 "Clarksburg, WV",add
label define label_cbsa 17260 "Clarksdale, MS",add
label define label_cbsa 17300 "Clarksville, TN-KY",add
label define label_cbsa 17380 "Cleveland, MS",add
label define label_cbsa 17420 "Cleveland, TN",add
label define label_cbsa 17460 "Cleveland-Elyria, OH",add
label define label_cbsa 17580 "Clovis, NM",add
label define label_cbsa 17620 "Coamo, PR",add
label define label_cbsa 17660 "Coeur d^Alene, ID",add
label define label_cbsa 17700 "Coffeyville, KS",add
label define label_cbsa 17740 "Coldwater, MI",add
label define label_cbsa 17780 "College Station-Bryan, TX",add
label define label_cbsa 17820 "Colorado Springs, CO",add
label define label_cbsa 17860 "Columbia, MO",add
label define label_cbsa 17900 "Columbia, SC",add
label define label_cbsa 17980 "Columbus, GA-AL",add
label define label_cbsa 18060 "Columbus, MS",add
label define label_cbsa 18140 "Columbus, OH",add
label define label_cbsa 18180 "Concord, NH",add
label define label_cbsa 18260 "Cookeville, TN",add
label define label_cbsa 18300 "Coos Bay, OR",add
label define label_cbsa 18420 "Corinth, MS",add
label define label_cbsa 18460 "Cornelia, GA",add
label define label_cbsa 18500 "Corning, NY",add
label define label_cbsa 18580 "Corpus Christi, TX",add
label define label_cbsa 18620 "Corsicana, TX",add
label define label_cbsa 18660 "Cortland, NY",add
label define label_cbsa 18700 "Corvallis, OR",add
label define label_cbsa 18820 "Crawfordsville, IN",add
label define label_cbsa 18880 "Crestview-Fort Walton Beach-Destin, FL",add
label define label_cbsa 18900 "Crossville, TN",add
label define label_cbsa 18980 "Cullman, AL",add
label define label_cbsa 19000 "Cullowhee, NC",add
label define label_cbsa 19060 "Cumberland, MD-WV",add
label define label_cbsa 19100 "Dallas-Fort Worth-Arlington, TX",add
label define label_cbsa 19140 "Dalton, GA",add
label define label_cbsa 19180 "Danville, IL",add
label define label_cbsa 19220 "Danville, KY",add
label define label_cbsa 19260 "Danville, VA",add
label define label_cbsa 19300 "Daphne-Fairhope-Foley, AL",add
label define label_cbsa 19340 "Davenport-Moline-Rock Island, IA-IL",add
label define label_cbsa 19380 "Dayton, OH",add
label define label_cbsa 19420 "Dayton, TN",add
label define label_cbsa 19500 "Decatur, IL",add
label define label_cbsa 19580 "Defiance, OH",add
label define label_cbsa 19660 "Deltona-Daytona Beach-Ormond Beach, FL",add
label define label_cbsa 19740 "Denver-Aurora-Lakewood, CO",add
label define label_cbsa 19780 "Des Moines-West Des Moines, IA",add
label define label_cbsa 19820 "Detroit-Warren-Dearborn, MI",add
label define label_cbsa 19860 "Dickinson, ND",add
label define label_cbsa 19940 "Dixon, IL",add
label define label_cbsa 19980 "Dodge City, KS",add
label define label_cbsa 20020 "Dothan, AL",add
label define label_cbsa 20060 "Douglas, GA",add
label define label_cbsa 20100 "Dover, DE",add
label define label_cbsa 20180 "DuBois, PA",add
label define label_cbsa 20220 "Dubuque, IA",add
label define label_cbsa 20260 "Duluth, MN-WI",add
label define label_cbsa 20340 "Duncan, OK",add
label define label_cbsa 20380 "Dunn, NC",add
label define label_cbsa 20420 "Durango, CO",add
label define label_cbsa 20460 "Durant, OK",add
label define label_cbsa 20500 "Durham-Chapel Hill, NC",add
label define label_cbsa 20540 "Dyersburg, TN",add
label define label_cbsa 20580 "Eagle Pass, TX",add
label define label_cbsa 20700 "East Stroudsburg, PA",add
label define label_cbsa 20740 "Eau Claire, WI",add
label define label_cbsa 20900 "El Campo, TX",add
label define label_cbsa 20940 "El Centro, CA",add
label define label_cbsa 20980 "El Dorado, AR",add
label define label_cbsa 21020 "Elizabeth City, NC",add
label define label_cbsa 21060 "Elizabethtown-Fort Knox, KY",add
label define label_cbsa 21140 "Elkhart-Goshen, IN",add
label define label_cbsa 21180 "Elkins, WV",add
label define label_cbsa 21220 "Elko, NV",add
label define label_cbsa 21260 "Ellensburg, WA",add
label define label_cbsa 21300 "Elmira, NY",add
label define label_cbsa 21340 "El Paso, TX",add
label define label_cbsa 21380 "Emporia, KS",add
label define label_cbsa 21420 "Enid, OK",add
label define label_cbsa 21460 "Enterprise, AL",add
label define label_cbsa 21500 "Erie, PA",add
label define label_cbsa 21540 "Escanaba, MI",add
label define label_cbsa 21580 "EspaÃ±ola, NM",add
label define label_cbsa 21660 "Eugene, OR",add
label define label_cbsa 21700 "Eureka-Arcata-Fortuna, CA",add
label define label_cbsa 21780 "Evansville, IN-KY",add
label define label_cbsa 21820 "Fairbanks, AK",add
label define label_cbsa 21840 "Fairfield, IA",add
label define label_cbsa 21900 "Fairmont, WV",add
label define label_cbsa 22020 "Fargo, ND-MN",add
label define label_cbsa 22060 "Faribault-Northfield, MN",add
label define label_cbsa 22100 "Farmington, MO",add
label define label_cbsa 22140 "Farmington, NM",add
label define label_cbsa 22180 "Fayetteville, NC",add
label define label_cbsa 22220 "Fayetteville-Springdale-Rogers, AR-MO",add
label define label_cbsa 22260 "Fergus Falls, MN",add
label define label_cbsa 22300 "Findlay, OH",add
label define label_cbsa 22380 "Flagstaff, AZ",add
label define label_cbsa 22420 "Flint, MI",add
label define label_cbsa 22500 "Florence, SC",add
label define label_cbsa 22520 "Florence-Muscle Shoals, AL",add
label define label_cbsa 22540 "Fond du Lac, WI",add
label define label_cbsa 22580 "Forest City, NC",add
label define label_cbsa 22620 "Forrest City, AR",add
label define label_cbsa 22660 "Fort Collins, CO",add
label define label_cbsa 22700 "Fort Dodge, IA",add
label define label_cbsa 22780 "Fort Leonard Wood, MO",add
label define label_cbsa 22820 "Fort Morgan, CO",add
label define label_cbsa 22900 "Fort Smith, AR-OK",add
label define label_cbsa 23060 "Fort Wayne, IN",add
label define label_cbsa 23180 "Frankfort, KY",add
label define label_cbsa 23300 "Freeport, IL",add
label define label_cbsa 23340 "Fremont, NE",add
label define label_cbsa 23380 "Fremont, OH",add
label define label_cbsa 23420 "Fresno, CA",add
label define label_cbsa 23460 "Gadsden, AL",add
label define label_cbsa 23500 "Gaffney, SC",add
label define label_cbsa 23540 "Gainesville, FL",add
label define label_cbsa 23580 "Gainesville, GA",add
label define label_cbsa 23620 "Gainesville, TX",add
label define label_cbsa 23660 "Galesburg, IL",add
label define label_cbsa 23700 "Gallup, NM",add
label define label_cbsa 23780 "Garden City, KS",add
label define label_cbsa 23900 "Gettysburg, PA",add
label define label_cbsa 23980 "Glasgow, KY",add
label define label_cbsa 24020 "Glens Falls, NY",add
label define label_cbsa 24060 "Glenwood Springs, CO",add
label define label_cbsa 24140 "Goldsboro, NC",add
label define label_cbsa 24220 "Grand Forks, ND-MN",add
label define label_cbsa 24260 "Grand Island, NE",add
label define label_cbsa 24300 "Grand Junction, CO",add
label define label_cbsa 24330 "Grand Rapids, MN",add
label define label_cbsa 24340 "Grand Rapids-Wyoming, MI",add
label define label_cbsa 24380 "Grants, NM",add
label define label_cbsa 24420 "Grants Pass, OR",add
label define label_cbsa 24460 "Great Bend, KS",add
label define label_cbsa 24500 "Great Falls, MT",add
label define label_cbsa 24540 "Greeley, CO",add
label define label_cbsa 24580 "Green Bay, WI",add
label define label_cbsa 24620 "Greeneville, TN",add
label define label_cbsa 24640 "Greenfield Town, MA",add
label define label_cbsa 24660 "Greensboro-High Point, NC",add
label define label_cbsa 24740 "Greenville, MS",add
label define label_cbsa 24780 "Greenville, NC",add
label define label_cbsa 24860 "Greenville-Anderson-Mauldin, SC",add
label define label_cbsa 24900 "Greenwood, MS",add
label define label_cbsa 24940 "Greenwood, SC",add
label define label_cbsa 24980 "Grenada, MS",add
label define label_cbsa 25020 "Guayama, PR",add
label define label_cbsa 25060 "Gulfport-Biloxi-Pascagoula, MS",add
label define label_cbsa 25100 "Guymon, OK",add
label define label_cbsa 25180 "Hagerstown-Martinsburg, MD-WV",add
label define label_cbsa 25220 "Hammond, LA",add
label define label_cbsa 25260 "Hanford-Corcoran, CA",add
label define label_cbsa 25300 "Hannibal, MO",add
label define label_cbsa 25420 "Harrisburg-Carlisle, PA",add
label define label_cbsa 25460 "Harrison, AR",add
label define label_cbsa 25500 "Harrisonburg, VA",add
label define label_cbsa 25540 "Hartford-West Hartford-East Hartford, CT",add
label define label_cbsa 25580 "Hastings, NE",add
label define label_cbsa 25620 "Hattiesburg, MS",add
label define label_cbsa 25700 "Hays, KS",add
label define label_cbsa 25720 "Heber, UT",add
label define label_cbsa 25740 "Helena, MT",add
label define label_cbsa 25760 "Helena-West Helena, AR",add
label define label_cbsa 25780 "Henderson, NC",add
label define label_cbsa 25840 "Hermiston-Pendleton, OR",add
label define label_cbsa 25860 "Hickory-Lenoir-Morganton, NC",add
label define label_cbsa 25880 "Hillsdale, MI",add
label define label_cbsa 25900 "Hilo, HI",add
label define label_cbsa 25940 "Hilton Head Island-Bluffton-Beaufort, SC",add
label define label_cbsa 25980 "Hinesville, GA",add
label define label_cbsa 26020 "Hobbs, NM",add
label define label_cbsa 26140 "Homosassa Springs, FL",add
label define label_cbsa 26260 "Hope, AR",add
label define label_cbsa 26300 "Hot Springs, AR",add
label define label_cbsa 26340 "Houghton, MI",add
label define label_cbsa 26380 "Houma-Thibodaux, LA",add
label define label_cbsa 26420 "Houston-The Woodlands-Sugar Land, TX",add
label define label_cbsa 26460 "Hudson, NY",add
label define label_cbsa 26500 "Huntingdon, PA",add
label define label_cbsa 26540 "Huntington, IN",add
label define label_cbsa 26580 "Huntington-Ashland, WV-KY-OH",add
label define label_cbsa 26620 "Huntsville, AL",add
label define label_cbsa 26660 "Huntsville, TX",add
label define label_cbsa 26740 "Hutchinson, KS",add
label define label_cbsa 26820 "Idaho Falls, ID",add
label define label_cbsa 26860 "Indiana, PA",add
label define label_cbsa 26900 "Indianapolis-Carmel-Anderson, IN",add
label define label_cbsa 26940 "Indianola, MS",add
label define label_cbsa 26960 "Ionia, MI",add
label define label_cbsa 26980 "Iowa City, IA",add
label define label_cbsa 27060 "Ithaca, NY",add
label define label_cbsa 27100 "Jackson, MI",add
label define label_cbsa 27140 "Jackson, MS",add
label define label_cbsa 27160 "Jackson, OH",add
label define label_cbsa 27180 "Jackson, TN",add
label define label_cbsa 27260 "Jacksonville, FL",add
label define label_cbsa 27300 "Jacksonville, IL",add
label define label_cbsa 27340 "Jacksonville, NC",add
label define label_cbsa 27380 "Jacksonville, TX",add
label define label_cbsa 27420 "Jamestown, ND",add
label define label_cbsa 27460 "Jamestown-Dunkirk-Fredonia, NY",add
label define label_cbsa 27500 "Janesville-Beloit, WI",add
label define label_cbsa 27620 "Jefferson City, MO",add
label define label_cbsa 27740 "Johnson City, TN",add
label define label_cbsa 27780 "Johnstown, PA",add
label define label_cbsa 27860 "Jonesboro, AR",add
label define label_cbsa 27900 "Joplin, MO",add
label define label_cbsa 27940 "Juneau, AK",add
label define label_cbsa 27980 "Kahului-Wailuku-Lahaina, HI",add
label define label_cbsa 28020 "Kalamazoo-Portage, MI",add
label define label_cbsa 28060 "Kalispell, MT",add
label define label_cbsa 28100 "Kankakee, IL",add
label define label_cbsa 28140 "Kansas City, MO-KS",add
label define label_cbsa 28180 "Kapaa, HI",add
label define label_cbsa 28260 "Kearney, NE",add
label define label_cbsa 28300 "Keene, NH",add
label define label_cbsa 28420 "Kennewick-Richland, WA",add
label define label_cbsa 28500 "Kerrville, TX",add
label define label_cbsa 28580 "Key West, FL",add
label define label_cbsa 28660 "Killeen-Temple, TX",add
label define label_cbsa 28700 "Kingsport-Bristol-Bristol, TN-VA",add
label define label_cbsa 28740 "Kingston, NY",add
label define label_cbsa 28780 "Kingsville, TX",add
label define label_cbsa 28820 "Kinston, NC",add
label define label_cbsa 28860 "Kirksville, MO",add
label define label_cbsa 28900 "Klamath Falls, OR",add
label define label_cbsa 28940 "Knoxville, TN",add
label define label_cbsa 29020 "Kokomo, IN",add
label define label_cbsa 29060 "Laconia, NH",add
label define label_cbsa 29100 "La Crosse-Onalaska, WI-MN",add
label define label_cbsa 29180 "Lafayette, LA",add
label define label_cbsa 29200 "Lafayette-West Lafayette, IN",add
label define label_cbsa 29260 "La Grande, OR",add
label define label_cbsa 29300 "LaGrange, GA",add
label define label_cbsa 29340 "Lake Charles, LA",add
label define label_cbsa 29380 "Lake City, FL",add
label define label_cbsa 29420 "Lake Havasu City-Kingman, AZ",add
label define label_cbsa 29460 "Lakeland-Winter Haven, FL",add
label define label_cbsa 29540 "Lancaster, PA",add
label define label_cbsa 29620 "Lansing-East Lansing, MI",add
label define label_cbsa 29660 "Laramie, WY",add
label define label_cbsa 29700 "Laredo, TX",add
label define label_cbsa 29740 "Las Cruces, NM",add
label define label_cbsa 29780 "Las Vegas, NM",add
label define label_cbsa 29820 "Las Vegas-Henderson-Paradise, NV",add
label define label_cbsa 29860 "Laurel, MS",add
label define label_cbsa 29900 "Laurinburg, NC",add
label define label_cbsa 29940 "Lawrence, KS",add
label define label_cbsa 29980 "Lawrenceburg, TN",add
label define label_cbsa 30020 "Lawton, OK",add
label define label_cbsa 30060 "Lebanon, MO",add
label define label_cbsa 30140 "Lebanon, PA",add
label define label_cbsa 30220 "Levelland, TX",add
label define label_cbsa 30260 "Lewisburg, PA",add
label define label_cbsa 30300 "Lewiston, ID-WA",add
label define label_cbsa 30340 "Lewiston-Auburn, ME",add
label define label_cbsa 30380 "Lewistown, PA",add
label define label_cbsa 30460 "Lexington-Fayette, KY",add
label define label_cbsa 30580 "Liberal, KS",add
label define label_cbsa 30620 "Lima, OH",add
label define label_cbsa 30660 "Lincoln, IL",add
label define label_cbsa 30700 "Lincoln, NE",add
label define label_cbsa 30780 "Little Rock-North Little Rock-Conway, AR",add
label define label_cbsa 30820 "Lock Haven, PA",add
label define label_cbsa 30860 "Logan, UT-ID",add
label define label_cbsa 30880 "Logan, WV",add
label define label_cbsa 30940 "London, KY",add
label define label_cbsa 30980 "Longview, TX",add
label define label_cbsa 31020 "Longview, WA",add
label define label_cbsa 31060 "Los Alamos, NM",add
label define label_cbsa 31080 "Los Angeles-Long Beach-Anaheim, CA",add
label define label_cbsa 31140 "Louisville/Jefferson County, KY-IN",add
label define label_cbsa 31180 "Lubbock, TX",add
label define label_cbsa 31220 "Ludington, MI",add
label define label_cbsa 31260 "Lufkin, TX",add
label define label_cbsa 31300 "Lumberton, NC",add
label define label_cbsa 31340 "Lynchburg, VA",add
label define label_cbsa 31380 "Macomb, IL",add
label define label_cbsa 31420 "Macon-Bibb County, GA",add
label define label_cbsa 31460 "Madera, CA",add
label define label_cbsa 31500 "Madison, IN",add
label define label_cbsa 31540 "Madison, WI",add
label define label_cbsa 31580 "Madisonville, KY",add
label define label_cbsa 31620 "Magnolia, AR",add
label define label_cbsa 31660 "Malone, NY",add
label define label_cbsa 31680 "Malvern, AR",add
label define label_cbsa 31700 "Manchester-Nashua, NH",add
label define label_cbsa 31740 "Manhattan, KS",add
label define label_cbsa 31820 "Manitowoc, WI",add
label define label_cbsa 31860 "Mankato-North Mankato, MN",add
label define label_cbsa 31900 "Mansfield, OH",add
label define label_cbsa 31930 "Marietta, OH",add
label define label_cbsa 31940 "Marinette, WI-MI",add
label define label_cbsa 31980 "Marion, IN",add
label define label_cbsa 32000 "Marion, NC",add
label define label_cbsa 32020 "Marion, OH",add
label define label_cbsa 32100 "Marquette, MI",add
label define label_cbsa 32140 "Marshall, MN",add
label define label_cbsa 32180 "Marshall, MO",add
label define label_cbsa 32220 "Marshall, TX",add
label define label_cbsa 32260 "Marshalltown, IA",add
label define label_cbsa 32280 "Martin, TN",add
label define label_cbsa 32300 "Martinsville, VA",add
label define label_cbsa 32340 "Maryville, MO",add
label define label_cbsa 32380 "Mason City, IA",add
label define label_cbsa 32420 "MayagÃ¼ez, PR",add
label define label_cbsa 32500 "Maysville, KY",add
label define label_cbsa 32540 "McAlester, OK",add
label define label_cbsa 32580 "McAllen-Edinburg-Mission, TX",add
label define label_cbsa 32620 "McComb, MS",add
label define label_cbsa 32660 "McMinnville, TN",add
label define label_cbsa 32700 "McPherson, KS",add
label define label_cbsa 32740 "Meadville, PA",add
label define label_cbsa 32780 "Medford, OR",add
label define label_cbsa 32820 "Memphis, TN-MS-AR",add
label define label_cbsa 32860 "Menomonie, WI",add
label define label_cbsa 32900 "Merced, CA",add
label define label_cbsa 32940 "Meridian, MS",add
label define label_cbsa 33060 "Miami, OK",add
label define label_cbsa 33100 "Miami-Fort Lauderdale-West Palm Beach, FL",add
label define label_cbsa 33140 "Michigan City-La Porte, IN",add
label define label_cbsa 33180 "Middlesborough, KY",add
label define label_cbsa 33220 "Midland, MI",add
label define label_cbsa 33260 "Midland, TX",add
label define label_cbsa 33300 "Milledgeville, GA",add
label define label_cbsa 33340 "Milwaukee-Waukesha-West Allis, WI",add
label define label_cbsa 33460 "Minneapolis-St. Paul-Bloomington, MN-WI",add
label define label_cbsa 33500 "Minot, ND",add
label define label_cbsa 33540 "Missoula, MT",add
label define label_cbsa 33580 "Mitchell, SD",add
label define label_cbsa 33620 "Moberly, MO",add
label define label_cbsa 33660 "Mobile, AL",add
label define label_cbsa 33700 "Modesto, CA",add
label define label_cbsa 33740 "Monroe, LA",add
label define label_cbsa 33780 "Monroe, MI",add
label define label_cbsa 33860 "Montgomery, AL",add
label define label_cbsa 33980 "Morehead City, NC",add
label define label_cbsa 34020 "Morgan City, LA",add
label define label_cbsa 34060 "Morgantown, WV",add
label define label_cbsa 34100 "Morristown, TN",add
label define label_cbsa 34140 "Moscow, ID",add
label define label_cbsa 34180 "Moses Lake, WA",add
label define label_cbsa 34260 "Mountain Home, AR",add
label define label_cbsa 34340 "Mount Airy, NC",add
label define label_cbsa 34380 "Mount Pleasant, MI",add
label define label_cbsa 34420 "Mount Pleasant, TX",add
label define label_cbsa 34460 "Mount Sterling, KY",add
label define label_cbsa 34500 "Mount Vernon, IL",add
label define label_cbsa 34540 "Mount Vernon, OH",add
label define label_cbsa 34580 "Mount Vernon-Anacortes, WA",add
label define label_cbsa 34620 "Muncie, IN",add
label define label_cbsa 34660 "Murray, KY",add
label define label_cbsa 34740 "Muskegon, MI",add
label define label_cbsa 34780 "Muskogee, OK",add
label define label_cbsa 34820 "Myrtle Beach-Conway-North Myrtle Beach, SC-NC",add
label define label_cbsa 34860 "Nacogdoches, TX",add
label define label_cbsa 34900 "Napa, CA",add
label define label_cbsa 34940 "Naples-Immokalee-Marco Island, FL",add
label define label_cbsa 34980 "Nashville-Davidson--Murfreesboro--Franklin, TN",add
label define label_cbsa 35060 "Natchitoches, LA",add
label define label_cbsa 35100 "New Bern, NC",add
label define label_cbsa 35140 "Newberry, SC",add
label define label_cbsa 35260 "New Castle, PA",add
label define label_cbsa 35300 "New Haven-Milford, CT",add
label define label_cbsa 35380 "New Orleans-Metairie, LA",add
label define label_cbsa 35420 "New Philadelphia-Dover, OH",add
label define label_cbsa 35440 "Newport, OR",add
label define label_cbsa 35580 "New Ulm, MN",add
label define label_cbsa 35620 "New York-Newark-Jersey City, NY-NJ-PA",add
label define label_cbsa 35660 "Niles-Benton Harbor, MI",add
label define label_cbsa 35740 "Norfolk, NE",add
label define label_cbsa 35820 "North Platte, NE",add
label define label_cbsa 35840 "North Port-Sarasota-Bradenton, FL",add
label define label_cbsa 35900 "North Wilkesboro, NC",add
label define label_cbsa 35940 "Norwalk, OH",add
label define label_cbsa 35980 "Norwich-New London, CT",add
label define label_cbsa 36020 "Oak Harbor, WA",add
label define label_cbsa 36100 "Ocala, FL",add
label define label_cbsa 36220 "Odessa, TX",add
label define label_cbsa 36260 "Ogden-Clearfield, UT",add
label define label_cbsa 36300 "Ogdensburg-Massena, NY",add
label define label_cbsa 36340 "Oil City, PA",add
label define label_cbsa 36420 "Oklahoma City, OK",add
label define label_cbsa 36460 "Olean, NY",add
label define label_cbsa 36500 "Olympia-Tumwater, WA",add
label define label_cbsa 36540 "Omaha-Council Bluffs, NE-IA",add
label define label_cbsa 36580 "Oneonta, NY",add
label define label_cbsa 36620 "Ontario, OR-ID",add
label define label_cbsa 36660 "Opelousas, LA",add
label define label_cbsa 36700 "Orangeburg, SC",add
label define label_cbsa 36740 "Orlando-Kissimmee-Sanford, FL",add
label define label_cbsa 36780 "Oshkosh-Neenah, WI",add
label define label_cbsa 36820 "Oskaloosa, IA",add
label define label_cbsa 36840 "Ottawa, KS",add
label define label_cbsa 36860 "Ottawa-Peru, IL",add
label define label_cbsa 36900 "Ottumwa, IA",add
label define label_cbsa 36980 "Owensboro, KY",add
label define label_cbsa 37060 "Oxford, MS",add
label define label_cbsa 37100 "Oxnard-Thousand Oaks-Ventura, CA",add
label define label_cbsa 37120 "Ozark, AL",add
label define label_cbsa 37140 "Paducah, KY-IL",add
label define label_cbsa 37260 "Palatka, FL",add
label define label_cbsa 37340 "Palm Bay-Melbourne-Titusville, FL",add
label define label_cbsa 37460 "Panama City, FL",add
label define label_cbsa 37500 "Paragould, AR",add
label define label_cbsa 37540 "Paris, TN",add
label define label_cbsa 37580 "Paris, TX",add
label define label_cbsa 37620 "Parkersburg-Vienna, WV",add
label define label_cbsa 37660 "Parsons, KS",add
label define label_cbsa 37800 "Pella, IA",add
label define label_cbsa 37860 "Pensacola-Ferry Pass-Brent, FL",add
label define label_cbsa 37900 "Peoria, IL",add
label define label_cbsa 37980 "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",add
label define label_cbsa 38060 "Phoenix-Mesa-Scottsdale, AZ",add
label define label_cbsa 38100 "Picayune, MS",add
label define label_cbsa 38220 "Pine Bluff, AR",add
label define label_cbsa 38240 "Pinehurst-Southern Pines, NC",add
label define label_cbsa 38260 "Pittsburg, KS",add
label define label_cbsa 38300 "Pittsburgh, PA",add
label define label_cbsa 38340 "Pittsfield, MA",add
label define label_cbsa 38380 "Plainview, TX",add
label define label_cbsa 38420 "Platteville, WI",add
label define label_cbsa 38460 "Plattsburgh, NY",add
label define label_cbsa 38500 "Plymouth, IN",add
label define label_cbsa 38540 "Pocatello, ID",add
label define label_cbsa 38580 "Point Pleasant, WV-OH",add
label define label_cbsa 38620 "Ponca City, OK",add
label define label_cbsa 38660 "Ponce, PR",add
label define label_cbsa 38700 "Pontiac, IL",add
label define label_cbsa 38740 "Poplar Bluff, MO",add
label define label_cbsa 38780 "Portales, NM",add
label define label_cbsa 38820 "Port Angeles, WA",add
label define label_cbsa 38860 "Portland-South Portland, ME",add
label define label_cbsa 38900 "Portland-Vancouver-Hillsboro, OR-WA",add
label define label_cbsa 38940 "Port St. Lucie, FL",add
label define label_cbsa 39020 "Portsmouth, OH",add
label define label_cbsa 39060 "Pottsville, PA",add
label define label_cbsa 39140 "Prescott, AZ",add
label define label_cbsa 39300 "Providence-Warwick, RI-MA",add
label define label_cbsa 39340 "Provo-Orem, UT",add
label define label_cbsa 39380 "Pueblo, CO",add
label define label_cbsa 39420 "Pullman, WA",add
label define label_cbsa 39460 "Punta Gorda, FL",add
label define label_cbsa 39500 "Quincy, IL-MO",add
label define label_cbsa 39540 "Racine, WI",add
label define label_cbsa 39580 "Raleigh, NC",add
label define label_cbsa 39660 "Rapid City, SD",add
label define label_cbsa 39740 "Reading, PA",add
label define label_cbsa 39820 "Redding, CA",add
label define label_cbsa 39900 "Reno, NV",add
label define label_cbsa 39940 "Rexburg, ID",add
label define label_cbsa 39980 "Richmond, IN",add
label define label_cbsa 40060 "Richmond, VA",add
label define label_cbsa 40080 "Richmond-Berea, KY",add
label define label_cbsa 40140 "Riverside-San Bernardino-Ontario, CA",add
label define label_cbsa 40180 "Riverton, WY",add
label define label_cbsa 40220 "Roanoke, VA",add
label define label_cbsa 40260 "Roanoke Rapids, NC",add
label define label_cbsa 40340 "Rochester, MN",add
label define label_cbsa 40380 "Rochester, NY",add
label define label_cbsa 40420 "Rockford, IL",add
label define label_cbsa 40460 "Rockingham, NC",add
label define label_cbsa 40540 "Rock Springs, WY",add
label define label_cbsa 40580 "Rocky Mount, NC",add
label define label_cbsa 40620 "Rolla, MO",add
label define label_cbsa 40660 "Rome, GA",add
label define label_cbsa 40700 "Roseburg, OR",add
label define label_cbsa 40740 "Roswell, NM",add
label define label_cbsa 40760 "Ruidoso, NM",add
label define label_cbsa 40780 "Russellville, AR",add
label define label_cbsa 40820 "Ruston, LA",add
label define label_cbsa 40860 "Rutland, VT",add
label define label_cbsa 40900 "Sacramento--Roseville--Arden-Arcade, CA",add
label define label_cbsa 40940 "Safford, AZ",add
label define label_cbsa 40980 "Saginaw, MI",add
label define label_cbsa 41060 "St. Cloud, MN",add
label define label_cbsa 41100 "St. George, UT",add
label define label_cbsa 41140 "St. Joseph, MO-KS",add
label define label_cbsa 41180 "St. Louis, MO-IL",add
label define label_cbsa 41400 "Salem, OH",add
label define label_cbsa 41420 "Salem, OR",add
label define label_cbsa 41460 "Salina, KS",add
label define label_cbsa 41500 "Salinas, CA",add
label define label_cbsa 41540 "Salisbury, MD-DE",add
label define label_cbsa 41620 "Salt Lake City, UT",add
label define label_cbsa 41660 "San Angelo, TX",add
label define label_cbsa 41700 "San Antonio-New Braunfels, TX",add
label define label_cbsa 41740 "San Diego-Carlsbad, CA",add
label define label_cbsa 41780 "Sandusky, OH",add
label define label_cbsa 41820 "Sanford, NC",add
label define label_cbsa 41860 "San Francisco-Oakland-Hayward, CA",add
label define label_cbsa 41900 "San GermÃ¡n, PR",add
label define label_cbsa 41940 "San Jose-Sunnyvale-Santa Clara, CA",add
label define label_cbsa 41980 "San Juan-Carolina-Caguas, PR",add
label define label_cbsa 42020 "San Luis Obispo-Paso Robles-Arroyo Grande, CA",add
label define label_cbsa 42100 "Santa Cruz-Watsonville, CA",add
label define label_cbsa 42140 "Santa Fe, NM",add
label define label_cbsa 42200 "Santa Maria-Santa Barbara, CA",add
label define label_cbsa 42220 "Santa Rosa, CA",add
label define label_cbsa 42300 "Sault Ste. Marie, MI",add
label define label_cbsa 42340 "Savannah, GA",add
label define label_cbsa 42380 "Sayre, PA",add
label define label_cbsa 42420 "Scottsbluff, NE",add
label define label_cbsa 42460 "Scottsboro, AL",add
label define label_cbsa 42540 "Scranton--Wilkes-Barre--Hazleton, PA",add
label define label_cbsa 42620 "Searcy, AR",add
label define label_cbsa 42660 "Seattle-Tacoma-Bellevue, WA",add
label define label_cbsa 42680 "Sebastian-Vero Beach, FL",add
label define label_cbsa 42700 "Sebring, FL",add
label define label_cbsa 42740 "Sedalia, MO",add
label define label_cbsa 42780 "Selinsgrove, PA",add
label define label_cbsa 42820 "Selma, AL",add
label define label_cbsa 42900 "Seneca Falls, NY",add
label define label_cbsa 43020 "Shawano, WI",add
label define label_cbsa 43060 "Shawnee, OK",add
label define label_cbsa 43100 "Sheboygan, WI",add
label define label_cbsa 43140 "Shelby, NC",add
label define label_cbsa 43180 "Shelbyville, TN",add
label define label_cbsa 43260 "Sheridan, WY",add
label define label_cbsa 43300 "Sherman-Denison, TX",add
label define label_cbsa 43320 "Show Low, AZ",add
label define label_cbsa 43340 "Shreveport-Bossier City, LA",add
label define label_cbsa 43420 "Sierra Vista-Douglas, AZ",add
label define label_cbsa 43460 "Sikeston, MO",add
label define label_cbsa 43500 "Silver City, NM",add
label define label_cbsa 43580 "Sioux City, IA-NE-SD",add
label define label_cbsa 43620 "Sioux Falls, SD",add
label define label_cbsa 43660 "Snyder, TX",add
label define label_cbsa 43700 "Somerset, KY",add
label define label_cbsa 43740 "Somerset, PA",add
label define label_cbsa 43760 "Sonora, CA",add
label define label_cbsa 43780 "South Bend-Mishawaka, IN-MI",add
label define label_cbsa 43900 "Spartanburg, SC",add
label define label_cbsa 43940 "Spearfish, SD",add
label define label_cbsa 44020 "Spirit Lake, IA",add
label define label_cbsa 44060 "Spokane-Spokane Valley, WA",add
label define label_cbsa 44100 "Springfield, IL",add
label define label_cbsa 44140 "Springfield, MA",add
label define label_cbsa 44180 "Springfield, MO",add
label define label_cbsa 44220 "Springfield, OH",add
label define label_cbsa 44260 "Starkville, MS",add
label define label_cbsa 44300 "State College, PA",add
label define label_cbsa 44340 "Statesboro, GA",add
label define label_cbsa 44420 "Staunton-Waynesboro, VA",add
label define label_cbsa 44500 "Stephenville, TX",add
label define label_cbsa 44540 "Sterling, CO",add
label define label_cbsa 44580 "Sterling, IL",add
label define label_cbsa 44620 "Stevens Point, WI",add
label define label_cbsa 44660 "Stillwater, OK",add
label define label_cbsa 44700 "Stockton-Lodi, CA",add
label define label_cbsa 44740 "Storm Lake, IA",add
label define label_cbsa 44780 "Sturgis, MI",add
label define label_cbsa 44940 "Sumter, SC",add
label define label_cbsa 44980 "Sunbury, PA",add
label define label_cbsa 45000 "Susanville, CA",add
label define label_cbsa 45060 "Syracuse, NY",add
label define label_cbsa 45140 "Tahlequah, OK",add
label define label_cbsa 45180 "Talladega-Sylacauga, AL",add
label define label_cbsa 45220 "Tallahassee, FL",add
label define label_cbsa 45300 "Tampa-St. Petersburg-Clearwater, FL",add
label define label_cbsa 45340 "Taos, NM",add
label define label_cbsa 45460 "Terre Haute, IN",add
label define label_cbsa 45500 "Texarkana, TX-AR",add
label define label_cbsa 45520 "The Dalles, OR",add
label define label_cbsa 45540 "The Villages, FL",add
label define label_cbsa 45620 "Thomasville, GA",add
label define label_cbsa 45660 "Tiffin, OH",add
label define label_cbsa 45700 "Tifton, GA",add
label define label_cbsa 45740 "Toccoa, GA",add
label define label_cbsa 45780 "Toledo, OH",add
label define label_cbsa 45820 "Topeka, KS",add
label define label_cbsa 45860 "Torrington, CT",add
label define label_cbsa 45900 "Traverse City, MI",add
label define label_cbsa 45940 "Trenton, NJ",add
label define label_cbsa 45980 "Troy, AL",add
label define label_cbsa 46060 "Tucson, AZ",add
label define label_cbsa 46100 "Tullahoma-Manchester, TN",add
label define label_cbsa 46140 "Tulsa, OK",add
label define label_cbsa 46180 "Tupelo, MS",add
label define label_cbsa 46220 "Tuscaloosa, AL",add
label define label_cbsa 46300 "Twin Falls, ID",add
label define label_cbsa 46340 "Tyler, TX",add
label define label_cbsa 46380 "Ukiah, CA",add
label define label_cbsa 46500 "Urbana, OH",add
label define label_cbsa 46520 "Urban Honolulu, HI",add
label define label_cbsa 46540 "Utica-Rome, NY",add
label define label_cbsa 46620 "Uvalde, TX",add
label define label_cbsa 46660 "Valdosta, GA",add
label define label_cbsa 46700 "Vallejo-Fairfield, CA",add
label define label_cbsa 46780 "Van Wert, OH",add
label define label_cbsa 46820 "Vermillion, SD",add
label define label_cbsa 46860 "Vernal, UT",add
label define label_cbsa 46900 "Vernon, TX",add
label define label_cbsa 46980 "Vicksburg, MS",add
label define label_cbsa 47020 "Victoria, TX",add
label define label_cbsa 47080 "Vidalia, GA",add
label define label_cbsa 47180 "Vincennes, IN",add
label define label_cbsa 47220 "Vineland-Bridgeton, NJ",add
label define label_cbsa 47260 "Virginia Beach-Norfolk-Newport News, VA-NC",add
label define label_cbsa 47300 "Visalia-Porterville, CA",add
label define label_cbsa 47340 "Wabash, IN",add
label define label_cbsa 47380 "Waco, TX",add
label define label_cbsa 47420 "Wahpeton, ND-MN",add
label define label_cbsa 47460 "Walla Walla, WA",add
label define label_cbsa 47580 "Warner Robins, GA",add
label define label_cbsa 47660 "Warrensburg, MO",add
label define label_cbsa 47700 "Warsaw, IN",add
label define label_cbsa 47820 "Washington, NC",add
label define label_cbsa 47900 "Washington-Arlington-Alexandria, DC-VA-MD-WV",add
label define label_cbsa 47940 "Waterloo-Cedar Falls, IA",add
label define label_cbsa 47980 "Watertown, SD",add
label define label_cbsa 48020 "Watertown-Fort Atkinson, WI",add
label define label_cbsa 48060 "Watertown-Fort Drum, NY",add
label define label_cbsa 48140 "Wausau, WI",add
label define label_cbsa 48180 "Waycross, GA",add
label define label_cbsa 48220 "Weatherford, OK",add
label define label_cbsa 48260 "Weirton-Steubenville, WV-OH",add
label define label_cbsa 48300 "Wenatchee, WA",add
label define label_cbsa 48460 "West Plains, MO",add
label define label_cbsa 48540 "Wheeling, WV-OH",add
label define label_cbsa 48580 "Whitewater-Elkhorn, WI",add
label define label_cbsa 48620 "Wichita, KS",add
label define label_cbsa 48660 "Wichita Falls, TX",add
label define label_cbsa 48700 "Williamsport, PA",add
label define label_cbsa 48780 "Williston, ND",add
label define label_cbsa 48820 "Willmar, MN",add
label define label_cbsa 48900 "Wilmington, NC",add
label define label_cbsa 48940 "Wilmington, OH",add
label define label_cbsa 48980 "Wilson, NC",add
label define label_cbsa 49020 "Winchester, VA-WV",add
label define label_cbsa 49100 "Winona, MN",add
label define label_cbsa 49180 "Winston-Salem, NC",add
label define label_cbsa 49220 "Wisconsin Rapids-Marshfield, WI",add
label define label_cbsa 49260 "Woodward, OK",add
label define label_cbsa 49300 "Wooster, OH",add
label define label_cbsa 49340 "Worcester, MA-CT",add
label define label_cbsa 49380 "Worthington, MN",add
label define label_cbsa 49420 "Yakima, WA",add
label define label_cbsa 49460 "Yankton, SD",add
label define label_cbsa 49620 "York-Hanover, PA",add
label define label_cbsa 49660 "Youngstown-Warren-Boardman, OH-PA",add
label define label_cbsa 49700 "Yuba City, CA",add
label define label_cbsa 49740 "Yuma, AZ",add
label define label_cbsa 49780 "Zanesville, OH",add
label define label_cbsa -2 "Not applicable",add
label values cbsa label_cbsa
label define label_cbsatype 1 "Metropolitan Statistical Area"
label define label_cbsatype 2 "Micropolitan Statistical Area",add
label define label_cbsatype -2 "Not applicable",add
label values cbsatype label_cbsatype
label define label_csa 104 "Albany-Schenectady, NY"
label define label_csa 106 "Albuquerque-Santa Fe-Las Vegas, NM",add
label define label_csa 108 "Amarillo-Borger, TX",add
label define label_csa 118 "Appleton-Oshkosh-Neenah, WI",add
label define label_csa 120 "Asheville-Brevard, NC",add
label define label_csa 122 "Atlanta--Athens-Clarke County--Sandy Springs, GA",add
label define label_csa 140 "Bend-Redmond-Prineville, OR",add
label define label_csa 142 "Birmingham-Hoover-Talladega, AL",add
label define label_csa 144 "Bloomington-Bedford, IN",add
label define label_csa 145 "Bloomington-Pontiac, IL",add
label define label_csa 146 "Bloomsburg-Berwick-Sunbury, PA",add
label define label_csa 147 "Boise City-Mountain Home-Ontario, ID-OR",add
label define label_csa 148 "Boston-Worcester-Providence, MA-RI-NH-CT",add
label define label_csa 150 "Bowling Green-Glasgow, KY",add
label define label_csa 154 "Brownsville-Harlingen-Raymondville, TX",add
label define label_csa 160 "Buffalo-Cheektowaga, NY",add
label define label_csa 162 "Cape Coral-Fort Myers-Naples, FL",add
label define label_csa 164 "Cape Girardeau-Sikeston, MO-IL",add
label define label_csa 168 "Cedar Rapids-Iowa City, IA",add
label define label_csa 170 "Charleston-Huntington-Ashland, WV-OH-KY",add
label define label_csa 172 "Charlotte-Concord, NC-SC",add
label define label_csa 174 "Chattanooga-Cleveland-Dalton, TN-GA-AL",add
label define label_csa 176 "Chicago-Naperville, IL-IN-WI",add
label define label_csa 178 "Cincinnati-Wilmington-Maysville, OH-KY-IN",add
label define label_csa 184 "Cleveland-Akron-Canton, OH",add
label define label_csa 185 "Cleveland-Indianola, MS",add
label define label_csa 188 "Clovis-Portales, NM",add
label define label_csa 190 "Columbia-Moberly-Mexico, MO",add
label define label_csa 192 "Columbia-Orangeburg-Newberry, SC",add
label define label_csa 194 "Columbus-Auburn-Opelika, GA-AL",add
label define label_csa 198 "Columbus-Marion-Zanesville, OH",add
label define label_csa 200 "Columbus-West Point, MS",add
label define label_csa 204 "Corpus Christi-Kingsville-Alice, TX",add
label define label_csa 206 "Dallas-Fort Worth, TX-OK",add
label define label_csa 209 "Davenport-Moline, IA-IL",add
label define label_csa 212 "Dayton-Springfield-Sidney, OH",add
label define label_csa 216 "Denver-Aurora, CO",add
label define label_csa 218 "Des Moines-Ames-West Des Moines, IA",add
label define label_csa 220 "Detroit-Warren-Ann Arbor, MI",add
label define label_csa 221 "Dixon-Sterling, IL",add
label define label_csa 222 "Dothan-Enterprise-Ozark, AL",add
label define label_csa 232 "Eau Claire-Menomonie, WI",add
label define label_csa 233 "Edwards-Glenwood Springs, CO",add
label define label_csa 236 "Elmira-Corning, NY",add
label define label_csa 238 "El Paso-Las Cruces, TX-NM",add
label define label_csa 240 "Erie-Meadville, PA",add
label define label_csa 244 "Fargo-Wahpeton, ND-MN",add
label define label_csa 246 "Fayetteville-Lumberton-Laurinburg, NC",add
label define label_csa 248 "Findlay-Tiffin, OH",add
label define label_csa 258 "Fort Wayne-Huntington-Auburn, IN",add
label define label_csa 260 "Fresno-Madera, CA",add
label define label_csa 264 "Gainesville-Lake City, FL",add
label define label_csa 266 "Grand Rapids-Wyoming-Muskegon, MI",add
label define label_csa 267 "Green Bay-Shawano, WI",add
label define label_csa 268 "Greensboro--Winston-Salem--High Point, NC",add
label define label_csa 273 "Greenville-Spartanburg-Anderson, SC",add
label define label_csa 274 "Greenville-Washington, NC",add
label define label_csa 276 "Harrisburg-York-Lebanon, PA",add
label define label_csa 277 "Harrisonburg-Staunton-Waynesboro, VA",add
label define label_csa 278 "Hartford-West Hartford, CT",add
label define label_csa 280 "Hickory-Lenoir, NC",add
label define label_csa 284 "Hot Springs-Malvern, AR",add
label define label_csa 288 "Houston-The Woodlands, TX",add
label define label_csa 290 "Huntsville-Decatur-Albertville, AL",add
label define label_csa 292 "Idaho Falls-Rexburg-Blackfoot, ID",add
label define label_csa 294 "Indianapolis-Carmel-Muncie, IN",add
label define label_csa 296 "Ithaca-Cortland, NY",add
label define label_csa 297 "Jackson-Brownsville, TN",add
label define label_csa 298 "Jackson-Vicksburg-Brookhaven, MS",add
label define label_csa 300 "Jacksonville-St. Marys-Palatka, FL-GA",add
label define label_csa 304 "Johnson City-Kingsport-Bristol, TN-VA",add
label define label_csa 306 "Johnstown-Somerset, PA",add
label define label_csa 308 "Jonesboro-Paragould, AR",add
label define label_csa 309 "Joplin-Miami, MO-OK",add
label define label_csa 310 "Kalamazoo-Battle Creek-Portage, MI",add
label define label_csa 312 "Kansas City-Overland Park-Kansas City, MO-KS",add
label define label_csa 314 "Knoxville-Morristown-Sevierville, TN",add
label define label_csa 316 "Kokomo-Peru, IN",add
label define label_csa 318 "Lafayette-Opelousas-Morgan City, LA",add
label define label_csa 320 "Lafayette-West Lafayette-Frankfort, IN",add
label define label_csa 324 "Lake Charles-Jennings, LA",add
label define label_csa 330 "Lansing-East Lansing-Owosso, MI",add
label define label_csa 332 "Las Vegas-Henderson, NV-AZ",add
label define label_csa 336 "Lexington-Fayette--Richmond--Frankfort, KY",add
label define label_csa 338 "Lima-Van Wert-Celina, OH",add
label define label_csa 339 "Lincoln-Beatrice, NE",add
label define label_csa 340 "Little Rock-North Little Rock, AR",add
label define label_csa 346 "Longview-Marshall, TX",add
label define label_csa 348 "Los Angeles-Long Beach, CA",add
label define label_csa 350 "Louisville/Jefferson County--Elizabethtown--Madison, KY-IN",add
label define label_csa 352 "Lubbock-Levelland, TX",add
label define label_csa 356 "Macon-Bibb County--Warner Robins, GA",add
label define label_csa 357 "Madison-Janesville-Beloit, WI",add
label define label_csa 358 "Manhattan-Junction City, KS",add
label define label_csa 359 "Mankato-New Ulm-North Mankato, MN",add
label define label_csa 360 "Mansfield-Ashland-Bucyrus, OH",add
label define label_csa 362 "Martin-Union City, TN-KY",add
label define label_csa 364 "MayagÃ¼ez-San GermÃ¡n, PR",add
label define label_csa 365 "McAllen-Edinburg, TX",add
label define label_csa 366 "Medford-Grants Pass, OR",add
label define label_csa 368 "Memphis-Forrest City, TN-MS-AR",add
label define label_csa 370 "Miami-Fort Lauderdale-Port St. Lucie, FL",add
label define label_csa 372 "Midland-Odessa, TX",add
label define label_csa 376 "Milwaukee-Racine-Waukesha, WI",add
label define label_csa 378 "Minneapolis-St. Paul, MN-WI",add
label define label_csa 380 "Mobile-Daphne-Fairhope, AL",add
label define label_csa 382 "Modesto-Merced, CA",add
label define label_csa 384 "Monroe-Ruston-Bastrop, LA",add
label define label_csa 390 "Morgantown-Fairmont, WV",add
label define label_csa 393 "Moses Lake-Othello, WA",add
label define label_csa 394 "Mount Pleasant-Alma, MI",add
label define label_csa 396 "Myrtle Beach-Conway, SC-NC",add
label define label_csa 400 "Nashville-Davidson--Murfreesboro, TN",add
label define label_csa 404 "New Bern-Morehead City, NC",add
label define label_csa 406 "New Orleans-Metairie-Hammond, LA-MS",add
label define label_csa 408 "New York-Newark, NY-NJ-CT-PA",add
label define label_csa 412 "North Port-Sarasota, FL",add
label define label_csa 416 "Oklahoma City-Shawnee, OK",add
label define label_csa 420 "Omaha-Council Bluffs-Fremont, NE-IA",add
label define label_csa 422 "Orlando-Deltona-Daytona Beach, FL",add
label define label_csa 423 "Oskaloosa-Pella, IA",add
label define label_csa 424 "Paducah-Mayfield, KY-IL",add
label define label_csa 425 "Parkersburg-Marietta-Vienna, WV-OH",add
label define label_csa 426 "Pensacola-Ferry Pass, FL-AL",add
label define label_csa 427 "Peoria-Canton, IL",add
label define label_csa 428 "Philadelphia-Reading-Camden, PA-NJ-DE-MD",add
label define label_csa 430 "Pittsburgh-New Castle-Weirton, PA-OH-WV",add
label define label_csa 434 "Ponce-Coamo-Santa Isabel, PR",add
label define label_csa 438 "Portland-Lewiston-South Portland, ME",add
label define label_csa 440 "Portland-Vancouver-Salem, OR-WA",add
label define label_csa 444 "Pueblo-CaÃ±on City, CO",add
label define label_csa 446 "Pullman-Moscow, WA-ID",add
label define label_csa 448 "Quincy-Hannibal, IL-MO",add
label define label_csa 450 "Raleigh-Durham-Chapel Hill, NC",add
label define label_csa 452 "Rapid City-Spearfish, SD",add
label define label_csa 454 "Redding-Red Bluff, CA",add
label define label_csa 456 "Reno-Carson City-Fernley, NV",add
label define label_csa 458 "Richmond-Connersville, IN",add
label define label_csa 462 "Rochester-Austin, MN",add
label define label_csa 464 "Rochester-Batavia-Seneca Falls, NY",add
label define label_csa 466 "Rockford-Freeport-Rochelle, IL",add
label define label_csa 468 "Rocky Mount-Wilson-Roanoke Rapids, NC",add
label define label_csa 470 "Rome-Summerville, GA",add
label define label_csa 472 "Sacramento-Roseville, CA",add
label define label_csa 474 "Saginaw-Midland-Bay City, MI",add
label define label_csa 476 "St. Louis-St. Charles-Farmington, MO-IL",add
label define label_csa 482 "Salt Lake City-Provo-Orem, UT",add
label define label_csa 488 "San Jose-San Francisco-Oakland, CA",add
label define label_csa 490 "San Juan-Carolina, PR",add
label define label_csa 496 "Savannah-Hinesville-Statesboro, GA",add
label define label_csa 500 "Seattle-Tacoma, WA",add
label define label_csa 512 "Sioux City-Vermillion, IA-SD-NE",add
label define label_csa 515 "South Bend-Elkhart-Mishawaka, IN-MI",add
label define label_csa 518 "Spokane-Spokane Valley-Coeur d^Alene, WA-ID",add
label define label_csa 520 "Springfield-Branson, MO",add
label define label_csa 521 "Springfield-Greenfield Town, MA",add
label define label_csa 522 "Springfield-Jacksonville-Lincoln, IL",add
label define label_csa 524 "State College-DuBois, PA",add
label define label_csa 532 "Syracuse-Auburn, NY",add
label define label_csa 533 "Tallahassee-Bainbridge, FL-GA",add
label define label_csa 534 "Toledo-Port Clinton, OH",add
label define label_csa 536 "Tucson-Nogales, AZ",add
label define label_csa 538 "Tulsa-Muskogee-Bartlesville, OK",add
label define label_csa 540 "Tyler-Jacksonville, TX",add
label define label_csa 544 "Victoria-Port Lavaca, TX",add
label define label_csa 545 "Virginia Beach-Norfolk, VA-NC",add
label define label_csa 546 "Visalia-Porterville-Hanford, CA",add
label define label_csa 548 "Washington-Baltimore-Arlington, DC-MD-VA-WV-PA",add
label define label_csa 554 "Wausau-Stevens Point-Wisconsin Rapids, WI",add
label define label_csa 556 "Wichita-Arkansas City-Winfield, KS",add
label define label_csa 558 "Williamsport-Lock Haven, PA",add
label define label_csa 566 "Youngstown-Warren, OH-PA",add
label define label_csa -2 "Not applicable",add
label values csa label_csa
label define label_necta 70600 "Augusta, ME"
label define label_necta 70750 "Bangor, ME",add
label define label_necta 70900 "Barnstable Town, MA",add
label define label_necta 71050 "Barre, VT",add
label define label_necta 71350 "Bennington, VT",add
label define label_necta 71500 "Berlin, NH",add
label define label_necta 71650 "Boston-Cambridge-Nashua, MA-NH",add
label define label_necta 71950 "Bridgeport-Stamford-Norwalk, CT",add
label define label_necta 72250 "Brunswick, ME",add
label define label_necta 72400 "Burlington-South Burlington, VT",add
label define label_necta 72500 "Claremont, NH",add
label define label_necta 72700 "Concord, NH",add
label define label_necta 72850 "Danbury, CT",add
label define label_necta 73050 "Dover-Durham, NH-ME",add
label define label_necta 73300 "Greenfield Town, MA",add
label define label_necta 73450 "Hartford-West Hartford-East Hartford, CT",add
label define label_necta 73750 "Keene, NH",add
label define label_necta 73900 "Laconia, NH",add
label define label_necta 74350 "Lebanon, NH-VT",add
label define label_necta 74500 "Leominster-Gardner, MA",add
label define label_necta 74650 "Lewiston-Auburn, ME",add
label define label_necta 74950 "Manchester, NH",add
label define label_necta 75550 "New Bedford, MA",add
label define label_necta 75700 "New Haven, CT",add
label define label_necta 76150 "North Adams, MA-VT",add
label define label_necta 76450 "Norwich-New London-Westerly, CT-RI",add
label define label_necta 76600 "Pittsfield, MA",add
label define label_necta 76750 "Portland-South Portland, ME",add
label define label_necta 76900 "Portsmouth, NH-ME",add
label define label_necta 77200 "Providence-Warwick, RI-MA",add
label define label_necta 77650 "Rutland, VT",add
label define label_necta 77950 "Sanford, ME",add
label define label_necta 78100 "Springfield, MA-CT",add
label define label_necta 78400 "Torrington, CT",add
label define label_necta 78700 "Waterbury, CT",add
label define label_necta 78850 "Waterville, ME",add
label define label_necta 79600 "Worcester, MA-CT",add
label define label_necta -2 "Not applicable",add
label values necta label_necta
label define label_countycd 1003 "Baldwin County, AL"
label define label_countycd 1015 "Calhoun County, AL",add
label define label_countycd 1025 "Clarke County, AL",add
label define label_countycd 1031 "Coffee County, AL",add
label define label_countycd 1033 "Colbert County, AL",add
label define label_countycd 1035 "Conecuh County, AL",add
label define label_countycd 1039 "Covington County, AL",add
label define label_countycd 1043 "Cullman County, AL",add
label define label_countycd 1045 "Dale County, AL",add
label define label_countycd 1047 "Dallas County, AL",add
label define label_countycd 1051 "Elmore County, AL",add
label define label_countycd 1053 "Escambia County, AL",add
label define label_countycd 1055 "Etowah County, AL",add
label define label_countycd 1069 "Houston County, AL",add
label define label_countycd 1071 "Jackson County, AL",add
label define label_countycd 1073 "Jefferson County, AL",add
label define label_countycd 1077 "Lauderdale County, AL",add
label define label_countycd 1081 "Lee County, AL",add
label define label_countycd 1083 "Limestone County, AL",add
label define label_countycd 1087 "Macon County, AL",add
label define label_countycd 1089 "Madison County, AL",add
label define label_countycd 1095 "Marshall County, AL",add
label define label_countycd 1097 "Mobile County, AL",add
label define label_countycd 1099 "Monroe County, AL",add
label define label_countycd 1101 "Montgomery County, AL",add
label define label_countycd 1105 "Perry County, AL",add
label define label_countycd 1109 "Pike County, AL",add
label define label_countycd 1111 "Randolph County, AL",add
label define label_countycd 1113 "Russell County, AL",add
label define label_countycd 1117 "Shelby County, AL",add
label define label_countycd 1119 "Sumter County, AL",add
label define label_countycd 1121 "Talladega County, AL",add
label define label_countycd 1123 "Tallapoosa County, AL",add
label define label_countycd 1125 "Tuscaloosa County, AL",add
label define label_countycd 1127 "Walker County, AL",add
label define label_countycd 2020 "Anchorage Municipality, AK",add
label define label_countycd 2090 "Fairbanks North Star Borough, AK",add
label define label_countycd 2110 "Juneau City And Borough, AK",add
label define label_countycd 2122 "Kenai Peninsula Borough, AK",add
label define label_countycd 2170 "Matanuska-Susitna Borough, AK",add
label define label_countycd 2185 "North Slope Borough, AK",add
label define label_countycd 4001 "Apache County, AZ",add
label define label_countycd 4003 "Cochise County, AZ",add
label define label_countycd 4005 "Coconino County, AZ",add
label define label_countycd 4009 "Graham County, AZ",add
label define label_countycd 4013 "Maricopa County, AZ",add
label define label_countycd 4015 "Mohave County, AZ",add
label define label_countycd 4017 "Navajo County, AZ",add
label define label_countycd 4019 "Pima County, AZ",add
label define label_countycd 4021 "Pinal County, AZ",add
label define label_countycd 4025 "Yavapai County, AZ",add
label define label_countycd 4027 "Yuma County, AZ",add
label define label_countycd 5003 "Ashley County, AR",add
label define label_countycd 5005 "Baxter County, AR",add
label define label_countycd 5007 "Benton County, AR",add
label define label_countycd 5009 "Boone County, AR",add
label define label_countycd 5013 "Calhoun County, AR",add
label define label_countycd 5019 "Clark County, AR",add
label define label_countycd 5027 "Columbia County, AR",add
label define label_countycd 5029 "Conway County, AR",add
label define label_countycd 5031 "Craighead County, AR",add
label define label_countycd 5035 "Crittenden County, AR",add
label define label_countycd 5043 "Drew County, AR",add
label define label_countycd 5045 "Faulkner County, AR",add
label define label_countycd 5051 "Garland County, AR",add
label define label_countycd 5055 "Greene County, AR",add
label define label_countycd 5057 "Hempstead County, AR",add
label define label_countycd 5059 "Hot Spring County, AR",add
label define label_countycd 5063 "Independence County, AR",add
label define label_countycd 5065 "Izard County, AR",add
label define label_countycd 5067 "Jackson County, AR",add
label define label_countycd 5069 "Jefferson County, AR",add
label define label_countycd 5071 "Johnson County, AR",add
label define label_countycd 5075 "Lawrence County, AR",add
label define label_countycd 5093 "Mississippi County, AR",add
label define label_countycd 5107 "Phillips County, AR",add
label define label_countycd 5113 "Polk County, AR",add
label define label_countycd 5115 "Pope County, AR",add
label define label_countycd 5119 "Pulaski County, AR",add
label define label_countycd 5121 "Randolph County, AR",add
label define label_countycd 5123 "St. Francis County, AR",add
label define label_countycd 5131 "Sebastian County, AR",add
label define label_countycd 5133 "Sevier County, AR",add
label define label_countycd 5139 "Union County, AR",add
label define label_countycd 5143 "Washington County, AR",add
label define label_countycd 5145 "White County, AR",add
label define label_countycd 6001 "Alameda County, CA",add
label define label_countycd 6007 "Butte County, CA",add
label define label_countycd 6013 "Contra Costa County, CA",add
label define label_countycd 6017 "El Dorado County, CA",add
label define label_countycd 6019 "Fresno County, CA",add
label define label_countycd 6023 "Humboldt County, CA",add
label define label_countycd 6025 "Imperial County, CA",add
label define label_countycd 6029 "Kern County, CA",add
label define label_countycd 6031 "Kings County, CA",add
label define label_countycd 6035 "Lassen County, CA",add
label define label_countycd 6037 "Los Angeles County, CA",add
label define label_countycd 6039 "Madera County, CA",add
label define label_countycd 6041 "Marin County, CA",add
label define label_countycd 6045 "Mendocino County, CA",add
label define label_countycd 6047 "Merced County, CA",add
label define label_countycd 6053 "Monterey County, CA",add
label define label_countycd 6055 "Napa County, CA",add
label define label_countycd 6059 "Orange County, CA",add
label define label_countycd 6061 "Placer County, CA",add
label define label_countycd 6063 "Plumas County, CA",add
label define label_countycd 6065 "Riverside County, CA",add
label define label_countycd 6067 "Sacramento County, CA",add
label define label_countycd 6071 "San Bernardino County, CA",add
label define label_countycd 6073 "San Diego County, CA",add
label define label_countycd 6075 "San Francisco County, CA",add
label define label_countycd 6077 "San Joaquin County, CA",add
label define label_countycd 6079 "San Luis Obispo County, CA",add
label define label_countycd 6081 "San Mateo County, CA",add
label define label_countycd 6083 "Santa Barbara County, CA",add
label define label_countycd 6085 "Santa Clara County, CA",add
label define label_countycd 6087 "Santa Cruz County, CA",add
label define label_countycd 6089 "Shasta County, CA",add
label define label_countycd 6093 "Siskiyou County, CA",add
label define label_countycd 6095 "Solano County, CA",add
label define label_countycd 6097 "Sonoma County, CA",add
label define label_countycd 6099 "Stanislaus County, CA",add
label define label_countycd 6101 "Sutter County, CA",add
label define label_countycd 6107 "Tulare County, CA",add
label define label_countycd 6109 "Tuolumne County, CA",add
label define label_countycd 6111 "Ventura County, CA",add
label define label_countycd 6113 "Yolo County, CA",add
label define label_countycd 6115 "Yuba County, CA",add
label define label_countycd 8001 "Adams County, CO",add
label define label_countycd 8003 "Alamosa County, CO",add
label define label_countycd 8005 "Arapahoe County, CO",add
label define label_countycd 8013 "Boulder County, CO",add
label define label_countycd 8014 "Broomfield County, CO",add
label define label_countycd 8029 "Delta County, CO",add
label define label_countycd 8031 "Denver County, CO",add
label define label_countycd 8035 "Douglas County, CO",add
label define label_countycd 8041 "El Paso County, CO",add
label define label_countycd 8045 "Garfield County, CO",add
label define label_countycd 8051 "Gunnison County, CO",add
label define label_countycd 8059 "Jefferson County, CO",add
label define label_countycd 8067 "La Plata County, CO",add
label define label_countycd 8069 "Larimer County, CO",add
label define label_countycd 8071 "Las Animas County, CO",add
label define label_countycd 8075 "Logan County, CO",add
label define label_countycd 8077 "Mesa County, CO",add
label define label_countycd 8087 "Morgan County, CO",add
label define label_countycd 8089 "Otero County, CO",add
label define label_countycd 8099 "Prowers County, CO",add
label define label_countycd 8101 "Pueblo County, CO",add
label define label_countycd 8103 "Rio Blanco County, CO",add
label define label_countycd 8123 "Weld County, CO",add
label define label_countycd 9001 "Fairfield County, CT",add
label define label_countycd 9003 "Hartford County, CT",add
label define label_countycd 9005 "Litchfield County, CT",add
label define label_countycd 9007 "Middlesex County, CT",add
label define label_countycd 9009 "New Haven County, CT",add
label define label_countycd 9011 "New London County, CT",add
label define label_countycd 9013 "Tolland County, CT",add
label define label_countycd 9015 "Windham County, CT",add
label define label_countycd 10001 "Kent County, DE",add
label define label_countycd 10003 "New Castle County, DE",add
label define label_countycd 10005 "Sussex County, DE",add
label define label_countycd 11001 "District Of Columbia, DC",add
label define label_countycd 12001 "Alachua County, FL",add
label define label_countycd 12005 "Bay County, FL",add
label define label_countycd 12007 "Bradford County, FL",add
label define label_countycd 12009 "Brevard County, FL",add
label define label_countycd 12011 "Broward County, FL",add
label define label_countycd 12015 "Charlotte County, FL",add
label define label_countycd 12017 "Citrus County, FL",add
label define label_countycd 12019 "Clay County, FL",add
label define label_countycd 12021 "Collier County, FL",add
label define label_countycd 12023 "Columbia County, FL",add
label define label_countycd 12031 "Duval County, FL",add
label define label_countycd 12033 "Escambia County, FL",add
label define label_countycd 12035 "Flagler County, FL",add
label define label_countycd 12053 "Hernando County, FL",add
label define label_countycd 12055 "Highlands County, FL",add
label define label_countycd 12057 "Hillsborough County, FL",add
label define label_countycd 12061 "Indian River County, FL",add
label define label_countycd 12063 "Jackson County, FL",add
label define label_countycd 12069 "Lake County, FL",add
label define label_countycd 12071 "Lee County, FL",add
label define label_countycd 12073 "Leon County, FL",add
label define label_countycd 12079 "Madison County, FL",add
label define label_countycd 12081 "Manatee County, FL",add
label define label_countycd 12083 "Marion County, FL",add
label define label_countycd 12085 "Martin County, FL",add
label define label_countycd 12086 "Miami-Dade County, FL",add
label define label_countycd 12087 "Monroe County, FL",add
label define label_countycd 12091 "Okaloosa County, FL",add
label define label_countycd 12095 "Orange County, FL",add
label define label_countycd 12097 "Osceola County, FL",add
label define label_countycd 12099 "Palm Beach County, FL",add
label define label_countycd 12101 "Pasco County, FL",add
label define label_countycd 12103 "Pinellas County, FL",add
label define label_countycd 12105 "Polk County, FL",add
label define label_countycd 12107 "Putnam County, FL",add
label define label_countycd 12109 "St. Johns County, FL",add
label define label_countycd 12111 "St. Lucie County, FL",add
label define label_countycd 12113 "Santa Rosa County, FL",add
label define label_countycd 12115 "Sarasota County, FL",add
label define label_countycd 12117 "Seminole County, FL",add
label define label_countycd 12119 "Sumter County, FL",add
label define label_countycd 12121 "Suwannee County, FL",add
label define label_countycd 12123 "Taylor County, FL",add
label define label_countycd 12127 "Volusia County, FL",add
label define label_countycd 12131 "Walton County, FL",add
label define label_countycd 12133 "Washington County, FL",add
label define label_countycd 13009 "Baldwin County, GA",add
label define label_countycd 13013 "Barrow County, GA",add
label define label_countycd 13021 "Bibb County, GA",add
label define label_countycd 13031 "Bulloch County, GA",add
label define label_countycd 13045 "Carroll County, GA",add
label define label_countycd 13051 "Chatham County, GA",add
label define label_countycd 13053 "Chattahoochee County, GA",add
label define label_countycd 13057 "Cherokee County, GA",add
label define label_countycd 13059 "Clarke County, GA",add
label define label_countycd 13063 "Clayton County, GA",add
label define label_countycd 13067 "Cobb County, GA",add
label define label_countycd 13069 "Coffee County, GA",add
label define label_countycd 13073 "Columbia County, GA",add
label define label_countycd 13083 "Dade County, GA",add
label define label_countycd 13087 "Decatur County, GA",add
label define label_countycd 13089 "Dekalb County, GA",add
label define label_countycd 13095 "Dougherty County, GA",add
label define label_countycd 13097 "Douglas County, GA",add
label define label_countycd 13107 "Emanuel County, GA",add
label define label_countycd 13113 "Fayette County, GA",add
label define label_countycd 13115 "Floyd County, GA",add
label define label_countycd 13119 "Franklin County, GA",add
label define label_countycd 13121 "Fulton County, GA",add
label define label_countycd 13127 "Glynn County, GA",add
label define label_countycd 13135 "Gwinnett County, GA",add
label define label_countycd 13137 "Habersham County, GA",add
label define label_countycd 13139 "Hall County, GA",add
label define label_countycd 13143 "Haralson County, GA",add
label define label_countycd 13153 "Houston County, GA",add
label define label_countycd 13171 "Lamar County, GA",add
label define label_countycd 13179 "Liberty County, GA",add
label define label_countycd 13185 "Lowndes County, GA",add
label define label_countycd 13187 "Lumpkin County, GA",add
label define label_countycd 13209 "Montgomery County, GA",add
label define label_countycd 13215 "Muscogee County, GA",add
label define label_countycd 13217 "Newton County, GA",add
label define label_countycd 13223 "Paulding County, GA",add
label define label_countycd 13225 "Peach County, GA",add
label define label_countycd 13243 "Randolph County, GA",add
label define label_countycd 13245 "Richmond County, GA",add
label define label_countycd 13247 "Rockdale County, GA",add
label define label_countycd 13255 "Spalding County, GA",add
label define label_countycd 13257 "Stephens County, GA",add
label define label_countycd 13261 "Sumter County, GA",add
label define label_countycd 13275 "Thomas County, GA",add
label define label_countycd 13277 "Tift County, GA",add
label define label_countycd 13279 "Toombs County, GA",add
label define label_countycd 13281 "Towns County, GA",add
label define label_countycd 13285 "Troup County, GA",add
label define label_countycd 13299 "Ware County, GA",add
label define label_countycd 13303 "Washington County, GA",add
label define label_countycd 13311 "White County, GA",add
label define label_countycd 13313 "Whitfield County, GA",add
label define label_countycd 15001 "Hawaii County, HI",add
label define label_countycd 15003 "Honolulu County, HI",add
label define label_countycd 15007 "Kauai County, HI",add
label define label_countycd 15009 "Maui County, HI",add
label define label_countycd 16001 "Ada County, ID",add
label define label_countycd 16005 "Bannock County, ID",add
label define label_countycd 16011 "Bingham County, ID",add
label define label_countycd 16019 "Bonneville County, ID",add
label define label_countycd 16027 "Canyon County, ID",add
label define label_countycd 16031 "Cassia County, ID",add
label define label_countycd 16053 "Jerome County, ID",add
label define label_countycd 16055 "Kootenai County, ID",add
label define label_countycd 16057 "Latah County, ID",add
label define label_countycd 16065 "Madison County, ID",add
label define label_countycd 16069 "Nez Perce County, ID",add
label define label_countycd 16083 "Twin Falls County, ID",add
label define label_countycd 17001 "Adams County, IL",add
label define label_countycd 17005 "Bond County, IL",add
label define label_countycd 17019 "Champaign County, IL",add
label define label_countycd 17027 "Clinton County, IL",add
label define label_countycd 17029 "Coles County, IL",add
label define label_countycd 17031 "Cook County, IL",add
label define label_countycd 17033 "Crawford County, IL",add
label define label_countycd 17037 "Dekalb County, IL",add
label define label_countycd 17043 "Dupage County, IL",add
label define label_countycd 17055 "Franklin County, IL",add
label define label_countycd 17057 "Fulton County, IL",add
label define label_countycd 17077 "Jackson County, IL",add
label define label_countycd 17081 "Jefferson County, IL",add
label define label_countycd 17083 "Jersey County, IL",add
label define label_countycd 17089 "Kane County, IL",add
label define label_countycd 17091 "Kankakee County, IL",add
label define label_countycd 17093 "Kendall County, IL",add
label define label_countycd 17095 "Knox County, IL",add
label define label_countycd 17097 "Lake County, IL",add
label define label_countycd 17099 "Lasalle County, IL",add
label define label_countycd 17103 "Lee County, IL",add
label define label_countycd 17105 "Livingston County, IL",add
label define label_countycd 17107 "Logan County, IL",add
label define label_countycd 17109 "Mcdonough County, IL",add
label define label_countycd 17111 "Mchenry County, IL",add
label define label_countycd 17113 "Mclean County, IL",add
label define label_countycd 17115 "Macon County, IL",add
label define label_countycd 17117 "Macoupin County, IL",add
label define label_countycd 17119 "Madison County, IL",add
label define label_countycd 17133 "Monroe County, IL",add
label define label_countycd 17135 "Montgomery County, IL",add
label define label_countycd 17137 "Morgan County, IL",add
label define label_countycd 17143 "Peoria County, IL",add
label define label_countycd 17153 "Pulaski County, IL",add
label define label_countycd 17159 "Richland County, IL",add
label define label_countycd 17161 "Rock Island County, IL",add
label define label_countycd 17163 "St. Clair County, IL",add
label define label_countycd 17165 "Saline County, IL",add
label define label_countycd 17167 "Sangamon County, IL",add
label define label_countycd 17177 "Stephenson County, IL",add
label define label_countycd 17179 "Tazewell County, IL",add
label define label_countycd 17183 "Vermilion County, IL",add
label define label_countycd 17185 "Wabash County, IL",add
label define label_countycd 17187 "Warren County, IL",add
label define label_countycd 17191 "Wayne County, IL",add
label define label_countycd 17195 "Whiteside County, IL",add
label define label_countycd 17197 "Will County, IL",add
label define label_countycd 17199 "Williamson County, IL",add
label define label_countycd 17201 "Winnebago County, IL",add
label define label_countycd 17203 "Woodford County, IL",add
label define label_countycd 18003 "Allen County, IN",add
label define label_countycd 18019 "Clark County, IN",add
label define label_countycd 18035 "Delaware County, IN",add
label define label_countycd 18039 "Elkhart County, IN",add
label define label_countycd 18043 "Floyd County, IN",add
label define label_countycd 18051 "Gibson County, IN",add
label define label_countycd 18053 "Grant County, IN",add
label define label_countycd 18057 "Hamilton County, IN",add
label define label_countycd 18063 "Hendricks County, IN",add
label define label_countycd 18067 "Howard County, IN",add
label define label_countycd 18069 "Huntington County, IN",add
label define label_countycd 18073 "Jasper County, IN",add
label define label_countycd 18077 "Jefferson County, IN",add
label define label_countycd 18081 "Johnson County, IN",add
label define label_countycd 18083 "Knox County, IN",add
label define label_countycd 18085 "Kosciusko County, IN",add
label define label_countycd 18089 "Lake County, IN",add
label define label_countycd 18091 "Laporte County, IN",add
label define label_countycd 18095 "Madison County, IN",add
label define label_countycd 18097 "Marion County, IN",add
label define label_countycd 18099 "Marshall County, IN",add
label define label_countycd 18105 "Monroe County, IN",add
label define label_countycd 18107 "Montgomery County, IN",add
label define label_countycd 18127 "Porter County, IN",add
label define label_countycd 18133 "Putnam County, IN",add
label define label_countycd 18141 "St. Joseph County, IN",add
label define label_countycd 18147 "Spencer County, IN",add
label define label_countycd 18149 "Starke County, IN",add
label define label_countycd 18151 "Steuben County, IN",add
label define label_countycd 18157 "Tippecanoe County, IN",add
label define label_countycd 18163 "Vanderburgh County, IN",add
label define label_countycd 18167 "Vigo County, IN",add
label define label_countycd 18169 "Wabash County, IN",add
label define label_countycd 18173 "Warrick County, IN",add
label define label_countycd 18177 "Wayne County, IN",add
label define label_countycd 19013 "Black Hawk County, IA",add
label define label_countycd 19017 "Bremer County, IA",add
label define label_countycd 19021 "Buena Vista County, IA",add
label define label_countycd 19033 "Cerro Gordo County, IA",add
label define label_countycd 19049 "Dallas County, IA",add
label define label_countycd 19053 "Decatur County, IA",add
label define label_countycd 19057 "Des Moines County, IA",add
label define label_countycd 19059 "Dickinson County, IA",add
label define label_countycd 19061 "Dubuque County, IA",add
label define label_countycd 19063 "Emmet County, IA",add
label define label_countycd 19065 "Fayette County, IA",add
label define label_countycd 19083 "Hardin County, IA",add
label define label_countycd 19087 "Henry County, IA",add
label define label_countycd 19089 "Howard County, IA",add
label define label_countycd 19101 "Jefferson County, IA",add
label define label_countycd 19103 "Johnson County, IA",add
label define label_countycd 19105 "Jones County, IA",add
label define label_countycd 19113 "Linn County, IA",add
label define label_countycd 19123 "Mahaska County, IA",add
label define label_countycd 19125 "Marion County, IA",add
label define label_countycd 19127 "Marshall County, IA",add
label define label_countycd 19153 "Polk County, IA",add
label define label_countycd 19155 "Pottawattamie County, IA",add
label define label_countycd 19157 "Poweshiek County, IA",add
label define label_countycd 19163 "Scott County, IA",add
label define label_countycd 19167 "Sioux County, IA",add
label define label_countycd 19169 "Story County, IA",add
label define label_countycd 19175 "Union County, IA",add
label define label_countycd 19179 "Wapello County, IA",add
label define label_countycd 19181 "Warren County, IA",add
label define label_countycd 19183 "Washington County, IA",add
label define label_countycd 19187 "Webster County, IA",add
label define label_countycd 19189 "Winnebago County, IA",add
label define label_countycd 19191 "Winneshiek County, IA",add
label define label_countycd 19193 "Woodbury County, IA",add
label define label_countycd 20001 "Allen County, KS",add
label define label_countycd 20005 "Atchison County, KS",add
label define label_countycd 20009 "Barton County, KS",add
label define label_countycd 20011 "Bourbon County, KS",add
label define label_countycd 20015 "Butler County, KS",add
label define label_countycd 20029 "Cloud County, KS",add
label define label_countycd 20035 "Cowley County, KS",add
label define label_countycd 20037 "Crawford County, KS",add
label define label_countycd 20043 "Doniphan County, KS",add
label define label_countycd 20045 "Douglas County, KS",add
label define label_countycd 20051 "Ellis County, KS",add
label define label_countycd 20055 "Finney County, KS",add
label define label_countycd 20057 "Ford County, KS",add
label define label_countycd 20059 "Franklin County, KS",add
label define label_countycd 20079 "Harvey County, KS",add
label define label_countycd 20091 "Johnson County, KS",add
label define label_countycd 20097 "Kiowa County, KS",add
label define label_countycd 20099 "Labette County, KS",add
label define label_countycd 20103 "Leavenworth County, KS",add
label define label_countycd 20111 "Lyon County, KS",add
label define label_countycd 20113 "Mcpherson County, KS",add
label define label_countycd 20115 "Marion County, KS",add
label define label_countycd 20123 "Mitchell County, KS",add
label define label_countycd 20125 "Montgomery County, KS",add
label define label_countycd 20133 "Neosho County, KS",add
label define label_countycd 20151 "Pratt County, KS",add
label define label_countycd 20155 "Reno County, KS",add
label define label_countycd 20159 "Rice County, KS",add
label define label_countycd 20161 "Riley County, KS",add
label define label_countycd 20169 "Saline County, KS",add
label define label_countycd 20173 "Sedgwick County, KS",add
label define label_countycd 20175 "Seward County, KS",add
label define label_countycd 20177 "Shawnee County, KS",add
label define label_countycd 20181 "Sherman County, KS",add
label define label_countycd 20193 "Thomas County, KS",add
label define label_countycd 20209 "Wyandotte County, KS",add
label define label_countycd 21001 "Adair County, KY",add
label define label_countycd 21009 "Barren County, KY",add
label define label_countycd 21013 "Bell County, KY",add
label define label_countycd 21015 "Boone County, KY",add
label define label_countycd 21019 "Boyd County, KY",add
label define label_countycd 21021 "Boyle County, KY",add
label define label_countycd 21025 "Breathitt County, KY",add
label define label_countycd 21029 "Bullitt County, KY",add
label define label_countycd 21035 "Calloway County, KY",add
label define label_countycd 21037 "Campbell County, KY",add
label define label_countycd 21043 "Carter County, KY",add
label define label_countycd 21047 "Christian County, KY",add
label define label_countycd 21059 "Daviess County, KY",add
label define label_countycd 21067 "Fayette County, KY",add
label define label_countycd 21071 "Floyd County, KY",add
label define label_countycd 21073 "Franklin County, KY",add
label define label_countycd 21089 "Greenup County, KY",add
label define label_countycd 21093 "Hardin County, KY",add
label define label_countycd 21095 "Harlan County, KY",add
label define label_countycd 21101 "Henderson County, KY",add
label define label_countycd 21107 "Hopkins County, KY",add
label define label_countycd 21111 "Jefferson County, KY",add
label define label_countycd 21113 "Jessamine County, KY",add
label define label_countycd 21117 "Kenton County, KY",add
label define label_countycd 21119 "Knott County, KY",add
label define label_countycd 21121 "Knox County, KY",add
label define label_countycd 21125 "Laurel County, KY",add
label define label_countycd 21131 "Leslie County, KY",add
label define label_countycd 21133 "Letcher County, KY",add
label define label_countycd 21145 "Mccracken County, KY",add
label define label_countycd 21151 "Madison County, KY",add
label define label_countycd 21161 "Mason County, KY",add
label define label_countycd 21173 "Montgomery County, KY",add
label define label_countycd 21185 "Oldham County, KY",add
label define label_countycd 21193 "Perry County, KY",add
label define label_countycd 21195 "Pike County, KY",add
label define label_countycd 21199 "Pulaski County, KY",add
label define label_countycd 21205 "Rowan County, KY",add
label define label_countycd 21209 "Scott County, KY",add
label define label_countycd 21217 "Taylor County, KY",add
label define label_countycd 21227 "Warren County, KY",add
label define label_countycd 21229 "Washington County, KY",add
label define label_countycd 21235 "Whitley County, KY",add
label define label_countycd 21239 "Woodford County, KY",add
label define label_countycd 22001 "Acadia Parish, LA",add
label define label_countycd 22005 "Ascension Parish, LA",add
label define label_countycd 22015 "Bossier Parish, LA",add
label define label_countycd 22017 "Caddo Parish, LA",add
label define label_countycd 22019 "Calcasieu Parish, LA",add
label define label_countycd 22033 "East Baton Rouge Parish, LA",add
label define label_countycd 22051 "Jefferson Parish, LA",add
label define label_countycd 22055 "Lafayette Parish, LA",add
label define label_countycd 22057 "Lafourche Parish, LA",add
label define label_countycd 22061 "Lincoln Parish, LA",add
label define label_countycd 22063 "Livingston Parish, LA",add
label define label_countycd 22069 "Natchitoches Parish, LA",add
label define label_countycd 22071 "Orleans Parish, LA",add
label define label_countycd 22073 "Ouachita Parish, LA",add
label define label_countycd 22079 "Rapides Parish, LA",add
label define label_countycd 22087 "St. Bernard Parish, LA",add
label define label_countycd 22089 "St. Charles Parish, LA",add
label define label_countycd 22097 "St. Landry Parish, LA",add
label define label_countycd 22101 "St. Mary Parish, LA",add
label define label_countycd 22103 "St. Tammany Parish, LA",add
label define label_countycd 22105 "Tangipahoa Parish, LA",add
label define label_countycd 22109 "Terrebonne Parish, LA",add
label define label_countycd 22117 "Washington Parish, LA",add
label define label_countycd 22119 "Webster Parish, LA",add
label define label_countycd 23001 "Androscoggin County, ME",add
label define label_countycd 23003 "Aroostook County, ME",add
label define label_countycd 23005 "Cumberland County, ME",add
label define label_countycd 23007 "Franklin County, ME",add
label define label_countycd 23009 "Hancock County, ME",add
label define label_countycd 23011 "Kennebec County, ME",add
label define label_countycd 23019 "Penobscot County, ME",add
label define label_countycd 23025 "Somerset County, ME",add
label define label_countycd 23027 "Waldo County, ME",add
label define label_countycd 23029 "Washington County, ME",add
label define label_countycd 23031 "York County, ME",add
label define label_countycd 24001 "Allegany County, MD",add
label define label_countycd 24003 "Anne Arundel County, MD",add
label define label_countycd 24005 "Baltimore County, MD",add
label define label_countycd 24013 "Carroll County, MD",add
label define label_countycd 24015 "Cecil County, MD",add
label define label_countycd 24017 "Charles County, MD",add
label define label_countycd 24021 "Frederick County, MD",add
label define label_countycd 24023 "Garrett County, MD",add
label define label_countycd 24025 "Harford County, MD",add
label define label_countycd 24027 "Howard County, MD",add
label define label_countycd 24029 "Kent County, MD",add
label define label_countycd 24031 "Montgomery County, MD",add
label define label_countycd 24033 "Prince George^S County, MD",add
label define label_countycd 24035 "Queen Anne^S County, MD",add
label define label_countycd 24037 "St. Mary^S County, MD",add
label define label_countycd 24039 "Somerset County, MD",add
label define label_countycd 24043 "Washington County, MD",add
label define label_countycd 24045 "Wicomico County, MD",add
label define label_countycd 24510 "Baltimore City, MD",add
label define label_countycd 25001 "Barnstable County, MA",add
label define label_countycd 25003 "Berkshire County, MA",add
label define label_countycd 25005 "Bristol County, MA",add
label define label_countycd 25009 "Essex County, MA",add
label define label_countycd 25011 "Franklin County, MA",add
label define label_countycd 25013 "Hampden County, MA",add
label define label_countycd 25015 "Hampshire County, MA",add
label define label_countycd 25017 "Middlesex County, MA",add
label define label_countycd 25021 "Norfolk County, MA",add
label define label_countycd 25023 "Plymouth County, MA",add
label define label_countycd 25025 "Suffolk County, MA",add
label define label_countycd 25027 "Worcester County, MA",add
label define label_countycd 26007 "Alpena County, MI",add
label define label_countycd 26013 "Baraga County, MI",add
label define label_countycd 26015 "Barry County, MI",add
label define label_countycd 26017 "Bay County, MI",add
label define label_countycd 26021 "Berrien County, MI",add
label define label_countycd 26023 "Branch County, MI",add
label define label_countycd 26025 "Calhoun County, MI",add
label define label_countycd 26027 "Cass County, MI",add
label define label_countycd 26033 "Chippewa County, MI",add
label define label_countycd 26035 "Clare County, MI",add
label define label_countycd 26037 "Clinton County, MI",add
label define label_countycd 26041 "Delta County, MI",add
label define label_countycd 26045 "Eaton County, MI",add
label define label_countycd 26047 "Emmet County, MI",add
label define label_countycd 26049 "Genesee County, MI",add
label define label_countycd 26053 "Gogebic County, MI",add
label define label_countycd 26055 "Grand Traverse County, MI",add
label define label_countycd 26057 "Gratiot County, MI",add
label define label_countycd 26059 "Hillsdale County, MI",add
label define label_countycd 26061 "Houghton County, MI",add
label define label_countycd 26065 "Ingham County, MI",add
label define label_countycd 26067 "Ionia County, MI",add
label define label_countycd 26073 "Isabella County, MI",add
label define label_countycd 26075 "Jackson County, MI",add
label define label_countycd 26077 "Kalamazoo County, MI",add
label define label_countycd 26081 "Kent County, MI",add
label define label_countycd 26091 "Lenawee County, MI",add
label define label_countycd 26093 "Livingston County, MI",add
label define label_countycd 26099 "Macomb County, MI",add
label define label_countycd 26103 "Marquette County, MI",add
label define label_countycd 26105 "Mason County, MI",add
label define label_countycd 26107 "Mecosta County, MI",add
label define label_countycd 26111 "Midland County, MI",add
label define label_countycd 26115 "Monroe County, MI",add
label define label_countycd 26117 "Montcalm County, MI",add
label define label_countycd 26121 "Muskegon County, MI",add
label define label_countycd 26125 "Oakland County, MI",add
label define label_countycd 26139 "Ottawa County, MI",add
label define label_countycd 26143 "Roscommon County, MI",add
label define label_countycd 26145 "Saginaw County, MI",add
label define label_countycd 26147 "St. Clair County, MI",add
label define label_countycd 26149 "St. Joseph County, MI",add
label define label_countycd 26161 "Washtenaw County, MI",add
label define label_countycd 26163 "Wayne County, MI",add
label define label_countycd 26165 "Wexford County, MI",add
label define label_countycd 27003 "Anoka County, MN",add
label define label_countycd 27007 "Beltrami County, MN",add
label define label_countycd 27013 "Blue Earth County, MN",add
label define label_countycd 27015 "Brown County, MN",add
label define label_countycd 27017 "Carlton County, MN",add
label define label_countycd 27019 "Carver County, MN",add
label define label_countycd 27021 "Cass County, MN",add
label define label_countycd 27025 "Chisago County, MN",add
label define label_countycd 27027 "Clay County, MN",add
label define label_countycd 27035 "Crow Wing County, MN",add
label define label_countycd 27037 "Dakota County, MN",add
label define label_countycd 27041 "Douglas County, MN",add
label define label_countycd 27053 "Hennepin County, MN",add
label define label_countycd 27057 "Hubbard County, MN",add
label define label_countycd 27061 "Itasca County, MN",add
label define label_countycd 27067 "Kandiyohi County, MN",add
label define label_countycd 27071 "Koochiching County, MN",add
label define label_countycd 27083 "Lyon County, MN",add
label define label_countycd 27087 "Mahnomen County, MN",add
label define label_countycd 27099 "Mower County, MN",add
label define label_countycd 27103 "Nicollet County, MN",add
label define label_countycd 27105 "Nobles County, MN",add
label define label_countycd 27109 "Olmsted County, MN",add
label define label_countycd 27111 "Otter Tail County, MN",add
label define label_countycd 27113 "Pennington County, MN",add
label define label_countycd 27115 "Pine County, MN",add
label define label_countycd 27119 "Polk County, MN",add
label define label_countycd 27123 "Ramsey County, MN",add
label define label_countycd 27131 "Rice County, MN",add
label define label_countycd 27137 "St. Louis County, MN",add
label define label_countycd 27141 "Sherburne County, MN",add
label define label_countycd 27145 "Stearns County, MN",add
label define label_countycd 27149 "Stevens County, MN",add
label define label_countycd 27163 "Washington County, MN",add
label define label_countycd 27169 "Winona County, MN",add
label define label_countycd 27173 "Yellow Medicine County, MN",add
label define label_countycd 28003 "Alcorn County, MS",add
label define label_countycd 28011 "Bolivar County, MS",add
label define label_countycd 28021 "Claiborne County, MS",add
label define label_countycd 28027 "Coahoma County, MS",add
label define label_countycd 28029 "Copiah County, MS",add
label define label_countycd 28033 "Desoto County, MS",add
label define label_countycd 28035 "Forrest County, MS",add
label define label_countycd 28043 "Grenada County, MS",add
label define label_countycd 28047 "Harrison County, MS",add
label define label_countycd 28049 "Hinds County, MS",add
label define label_countycd 28051 "Holmes County, MS",add
label define label_countycd 28057 "Itawamba County, MS",add
label define label_countycd 28059 "Jackson County, MS",add
label define label_countycd 28067 "Jones County, MS",add
label define label_countycd 28069 "Kemper County, MS",add
label define label_countycd 28071 "Lafayette County, MS",add
label define label_countycd 28073 "Lamar County, MS",add
label define label_countycd 28075 "Lauderdale County, MS",add
label define label_countycd 28079 "Leake County, MS",add
label define label_countycd 28083 "Leflore County, MS",add
label define label_countycd 28087 "Lowndes County, MS",add
label define label_countycd 28089 "Madison County, MS",add
label define label_countycd 28093 "Marshall County, MS",add
label define label_countycd 28101 "Newton County, MS",add
label define label_countycd 28105 "Oktibbeha County, MS",add
label define label_countycd 28109 "Pearl River County, MS",add
label define label_countycd 28113 "Pike County, MS",add
label define label_countycd 28115 "Pontotoc County, MS",add
label define label_countycd 28117 "Prentiss County, MS",add
label define label_countycd 28121 "Rankin County, MS",add
label define label_countycd 28131 "Stone County, MS",add
label define label_countycd 28133 "Sunflower County, MS",add
label define label_countycd 28137 "Tate County, MS",add
label define label_countycd 28139 "Tippah County, MS",add
label define label_countycd 28151 "Washington County, MS",add
label define label_countycd 29001 "Adair County, MO",add
label define label_countycd 29019 "Boone County, MO",add
label define label_countycd 29021 "Buchanan County, MO",add
label define label_countycd 29023 "Butler County, MO",add
label define label_countycd 29027 "Callaway County, MO",add
label define label_countycd 29029 "Camden County, MO",add
label define label_countycd 29031 "Cape Girardeau County, MO",add
label define label_countycd 29037 "Cass County, MO",add
label define label_countycd 29047 "Clay County, MO",add
label define label_countycd 29051 "Cole County, MO",add
label define label_countycd 29071 "Franklin County, MO",add
label define label_countycd 29077 "Greene County, MO",add
label define label_countycd 29079 "Grundy County, MO",add
label define label_countycd 29083 "Henry County, MO",add
label define label_countycd 29089 "Howard County, MO",add
label define label_countycd 29091 "Howell County, MO",add
label define label_countycd 29095 "Jackson County, MO",add
label define label_countycd 29097 "Jasper County, MO",add
label define label_countycd 29099 "Jefferson County, MO",add
label define label_countycd 29101 "Johnson County, MO",add
label define label_countycd 29105 "Laclede County, MO",add
label define label_countycd 29107 "Lafayette County, MO",add
label define label_countycd 29111 "Lewis County, MO",add
label define label_countycd 29117 "Livingston County, MO",add
label define label_countycd 29127 "Marion County, MO",add
label define label_countycd 29131 "Miller County, MO",add
label define label_countycd 29145 "Newton County, MO",add
label define label_countycd 29147 "Nodaway County, MO",add
label define label_countycd 29151 "Osage County, MO",add
label define label_countycd 29159 "Pettis County, MO",add
label define label_countycd 29161 "Phelps County, MO",add
label define label_countycd 29163 "Pike County, MO",add
label define label_countycd 29165 "Platte County, MO",add
label define label_countycd 29167 "Polk County, MO",add
label define label_countycd 29169 "Pulaski County, MO",add
label define label_countycd 29175 "Randolph County, MO",add
label define label_countycd 29183 "St. Charles County, MO",add
label define label_countycd 29187 "St. Francois County, MO",add
label define label_countycd 29189 "St. Louis County, MO",add
label define label_countycd 29195 "Saline County, MO",add
label define label_countycd 29201 "Scott County, MO",add
label define label_countycd 29213 "Taney County, MO",add
label define label_countycd 29215 "Texas County, MO",add
label define label_countycd 29217 "Vernon County, MO",add
label define label_countycd 29225 "Webster County, MO",add
label define label_countycd 29510 "St. Louis City, MO",add
label define label_countycd 30001 "Beaverhead County, MT",add
label define label_countycd 30003 "Big Horn County, MT",add
label define label_countycd 30005 "Blaine County, MT",add
label define label_countycd 30013 "Cascade County, MT",add
label define label_countycd 30015 "Chouteau County, MT",add
label define label_countycd 30017 "Custer County, MT",add
label define label_countycd 30021 "Dawson County, MT",add
label define label_countycd 30029 "Flathead County, MT",add
label define label_countycd 30031 "Gallatin County, MT",add
label define label_countycd 30035 "Glacier County, MT",add
label define label_countycd 30041 "Hill County, MT",add
label define label_countycd 30047 "Lake County, MT",add
label define label_countycd 30049 "Lewis And Clark County, MT",add
label define label_countycd 30063 "Missoula County, MT",add
label define label_countycd 30081 "Ravalli County, MT",add
label define label_countycd 30085 "Roosevelt County, MT",add
label define label_countycd 30087 "Rosebud County, MT",add
label define label_countycd 30093 "Silver Bow County, MT",add
label define label_countycd 30111 "Yellowstone County, MT",add
label define label_countycd 31001 "Adams County, NE",add
label define label_countycd 31019 "Buffalo County, NE",add
label define label_countycd 31045 "Dawes County, NE",add
label define label_countycd 31053 "Dodge County, NE",add
label define label_countycd 31055 "Douglas County, NE",add
label define label_countycd 31063 "Frontier County, NE",add
label define label_countycd 31079 "Hall County, NE",add
label define label_countycd 31109 "Lancaster County, NE",add
label define label_countycd 31111 "Lincoln County, NE",add
label define label_countycd 31119 "Madison County, NE",add
label define label_countycd 31127 "Nemaha County, NE",add
label define label_countycd 31151 "Saline County, NE",add
label define label_countycd 31153 "Sarpy County, NE",add
label define label_countycd 31157 "Scotts Bluff County, NE",add
label define label_countycd 31159 "Seward County, NE",add
label define label_countycd 31173 "Thurston County, NE",add
label define label_countycd 31179 "Wayne County, NE",add
label define label_countycd 31185 "York County, NE",add
label define label_countycd 32003 "Clark County, NV",add
label define label_countycd 32007 "Elko County, NV",add
label define label_countycd 32031 "Washoe County, NV",add
label define label_countycd 32510 "Carson City, NV",add
label define label_countycd 33001 "Belknap County, NH",add
label define label_countycd 33005 "Cheshire County, NH",add
label define label_countycd 33007 "Coos County, NH",add
label define label_countycd 33009 "Grafton County, NH",add
label define label_countycd 33011 "Hillsborough County, NH",add
label define label_countycd 33013 "Merrimack County, NH",add
label define label_countycd 33015 "Rockingham County, NH",add
label define label_countycd 33017 "Strafford County, NH",add
label define label_countycd 33019 "Sullivan County, NH",add
label define label_countycd 34001 "Atlantic County, NJ",add
label define label_countycd 34003 "Bergen County, NJ",add
label define label_countycd 34005 "Burlington County, NJ",add
label define label_countycd 34007 "Camden County, NJ",add
label define label_countycd 34011 "Cumberland County, NJ",add
label define label_countycd 34013 "Essex County, NJ",add
label define label_countycd 34015 "Gloucester County, NJ",add
label define label_countycd 34017 "Hudson County, NJ",add
label define label_countycd 34021 "Mercer County, NJ",add
label define label_countycd 34023 "Middlesex County, NJ",add
label define label_countycd 34025 "Monmouth County, NJ",add
label define label_countycd 34027 "Morris County, NJ",add
label define label_countycd 34029 "Ocean County, NJ",add
label define label_countycd 34031 "Passaic County, NJ",add
label define label_countycd 34033 "Salem County, NJ",add
label define label_countycd 34035 "Somerset County, NJ",add
label define label_countycd 34037 "Sussex County, NJ",add
label define label_countycd 34039 "Union County, NJ",add
label define label_countycd 34041 "Warren County, NJ",add
label define label_countycd 35001 "Bernalillo County, NM",add
label define label_countycd 35005 "Chaves County, NM",add
label define label_countycd 35006 "Cibola County, NM",add
label define label_countycd 35009 "Curry County, NM",add
label define label_countycd 35013 "Doña Ana County, NM",add
label define label_countycd 35015 "Eddy County, NM",add
label define label_countycd 35017 "Grant County, NM",add
label define label_countycd 35025 "Lea County, NM",add
label define label_countycd 35027 "Lincoln County, NM",add
label define label_countycd 35028 "Los Alamos County, NM",add
label define label_countycd 35031 "Mckinley County, NM",add
label define label_countycd 35035 "Otero County, NM",add
label define label_countycd 35037 "Quay County, NM",add
label define label_countycd 35039 "Rio Arriba County, NM",add
label define label_countycd 35041 "Roosevelt County, NM",add
label define label_countycd 35045 "San Juan County, NM",add
label define label_countycd 35047 "San Miguel County, NM",add
label define label_countycd 35049 "Santa Fe County, NM",add
label define label_countycd 35053 "Socorro County, NM",add
label define label_countycd 35055 "Taos County, NM",add
label define label_countycd 35061 "Valencia County, NM",add
label define label_countycd 36001 "Albany County, NY",add
label define label_countycd 36003 "Allegany County, NY",add
label define label_countycd 36005 "Bronx County, NY",add
label define label_countycd 36007 "Broome County, NY",add
label define label_countycd 36009 "Cattaraugus County, NY",add
label define label_countycd 36011 "Cayuga County, NY",add
label define label_countycd 36013 "Chautauqua County, NY",add
label define label_countycd 36015 "Chemung County, NY",add
label define label_countycd 36017 "Chenango County, NY",add
label define label_countycd 36019 "Clinton County, NY",add
label define label_countycd 36021 "Columbia County, NY",add
label define label_countycd 36023 "Cortland County, NY",add
label define label_countycd 36025 "Delaware County, NY",add
label define label_countycd 36027 "Dutchess County, NY",add
label define label_countycd 36029 "Erie County, NY",add
label define label_countycd 36031 "Essex County, NY",add
label define label_countycd 36033 "Franklin County, NY",add
label define label_countycd 36037 "Genesee County, NY",add
label define label_countycd 36043 "Herkimer County, NY",add
label define label_countycd 36045 "Jefferson County, NY",add
label define label_countycd 36047 "Kings County, NY",add
label define label_countycd 36051 "Livingston County, NY",add
label define label_countycd 36053 "Madison County, NY",add
label define label_countycd 36055 "Monroe County, NY",add
label define label_countycd 36057 "Montgomery County, NY",add
label define label_countycd 36059 "Nassau County, NY",add
label define label_countycd 36061 "New York County, NY",add
label define label_countycd 36063 "Niagara County, NY",add
label define label_countycd 36065 "Oneida County, NY",add
label define label_countycd 36067 "Onondaga County, NY",add
label define label_countycd 36069 "Ontario County, NY",add
label define label_countycd 36071 "Orange County, NY",add
label define label_countycd 36075 "Oswego County, NY",add
label define label_countycd 36077 "Otsego County, NY",add
label define label_countycd 36081 "Queens County, NY",add
label define label_countycd 36083 "Rensselaer County, NY",add
label define label_countycd 36085 "Richmond County, NY",add
label define label_countycd 36087 "Rockland County, NY",add
label define label_countycd 36089 "St. Lawrence County, NY",add
label define label_countycd 36091 "Saratoga County, NY",add
label define label_countycd 36093 "Schenectady County, NY",add
label define label_countycd 36095 "Schoharie County, NY",add
label define label_countycd 36099 "Seneca County, NY",add
label define label_countycd 36101 "Steuben County, NY",add
label define label_countycd 36103 "Suffolk County, NY",add
label define label_countycd 36105 "Sullivan County, NY",add
label define label_countycd 36109 "Tompkins County, NY",add
label define label_countycd 36111 "Ulster County, NY",add
label define label_countycd 36113 "Warren County, NY",add
label define label_countycd 36115 "Washington County, NY",add
label define label_countycd 36117 "Wayne County, NY",add
label define label_countycd 36119 "Westchester County, NY",add
label define label_countycd 36123 "Yates County, NY",add
label define label_countycd 37001 "Alamance County, NC",add
label define label_countycd 37007 "Anson County, NC",add
label define label_countycd 37011 "Avery County, NC",add
label define label_countycd 37013 "Beaufort County, NC",add
label define label_countycd 37017 "Bladen County, NC",add
label define label_countycd 37019 "Brunswick County, NC",add
label define label_countycd 37021 "Buncombe County, NC",add
label define label_countycd 37023 "Burke County, NC",add
label define label_countycd 37025 "Cabarrus County, NC",add
label define label_countycd 37027 "Caldwell County, NC",add
label define label_countycd 37031 "Carteret County, NC",add
label define label_countycd 37035 "Catawba County, NC",add
label define label_countycd 37037 "Chatham County, NC",add
label define label_countycd 37039 "Cherokee County, NC",add
label define label_countycd 37045 "Cleveland County, NC",add
label define label_countycd 37047 "Columbus County, NC",add
label define label_countycd 37049 "Craven County, NC",add
label define label_countycd 37051 "Cumberland County, NC",add
label define label_countycd 37057 "Davidson County, NC",add
label define label_countycd 37061 "Duplin County, NC",add
label define label_countycd 37063 "Durham County, NC",add
label define label_countycd 37065 "Edgecombe County, NC",add
label define label_countycd 37067 "Forsyth County, NC",add
label define label_countycd 37069 "Franklin County, NC",add
label define label_countycd 37071 "Gaston County, NC",add
label define label_countycd 37081 "Guilford County, NC",add
label define label_countycd 37083 "Halifax County, NC",add
label define label_countycd 37085 "Harnett County, NC",add
label define label_countycd 37087 "Haywood County, NC",add
label define label_countycd 37089 "Henderson County, NC",add
label define label_countycd 37091 "Hertford County, NC",add
label define label_countycd 37097 "Iredell County, NC",add
label define label_countycd 37099 "Jackson County, NC",add
label define label_countycd 37101 "Johnston County, NC",add
label define label_countycd 37105 "Lee County, NC",add
label define label_countycd 37107 "Lenoir County, NC",add
label define label_countycd 37111 "Mcdowell County, NC",add
label define label_countycd 37115 "Madison County, NC",add
label define label_countycd 37117 "Martin County, NC",add
label define label_countycd 37119 "Mecklenburg County, NC",add
label define label_countycd 37123 "Montgomery County, NC",add
label define label_countycd 37125 "Moore County, NC",add
label define label_countycd 37127 "Nash County, NC",add
label define label_countycd 37129 "New Hanover County, NC",add
label define label_countycd 37133 "Onslow County, NC",add
label define label_countycd 37135 "Orange County, NC",add
label define label_countycd 37137 "Pamlico County, NC",add
label define label_countycd 37139 "Pasquotank County, NC",add
label define label_countycd 37145 "Person County, NC",add
label define label_countycd 37147 "Pitt County, NC",add
label define label_countycd 37151 "Randolph County, NC",add
label define label_countycd 37153 "Richmond County, NC",add
label define label_countycd 37155 "Robeson County, NC",add
label define label_countycd 37157 "Rockingham County, NC",add
label define label_countycd 37159 "Rowan County, NC",add
label define label_countycd 37161 "Rutherford County, NC",add
label define label_countycd 37163 "Sampson County, NC",add
label define label_countycd 37165 "Scotland County, NC",add
label define label_countycd 37167 "Stanly County, NC",add
label define label_countycd 37171 "Surry County, NC",add
label define label_countycd 37175 "Transylvania County, NC",add
label define label_countycd 37179 "Union County, NC",add
label define label_countycd 37181 "Vance County, NC",add
label define label_countycd 37183 "Wake County, NC",add
label define label_countycd 37189 "Watauga County, NC",add
label define label_countycd 37191 "Wayne County, NC",add
label define label_countycd 37193 "Wilkes County, NC",add
label define label_countycd 37195 "Wilson County, NC",add
label define label_countycd 38003 "Barnes County, ND",add
label define label_countycd 38005 "Benson County, ND",add
label define label_countycd 38009 "Bottineau County, ND",add
label define label_countycd 38015 "Burleigh County, ND",add
label define label_countycd 38017 "Cass County, ND",add
label define label_countycd 38021 "Dickey County, ND",add
label define label_countycd 38035 "Grand Forks County, ND",add
label define label_countycd 38061 "Mountrail County, ND",add
label define label_countycd 38071 "Ramsey County, ND",add
label define label_countycd 38077 "Richland County, ND",add
label define label_countycd 38079 "Rolette County, ND",add
label define label_countycd 38085 "Sioux County, ND",add
label define label_countycd 38089 "Stark County, ND",add
label define label_countycd 38093 "Stutsman County, ND",add
label define label_countycd 38097 "Traill County, ND",add
label define label_countycd 38101 "Ward County, ND",add
label define label_countycd 38105 "Williams County, ND",add
label define label_countycd 39003 "Allen County, OH",add
label define label_countycd 39005 "Ashland County, OH",add
label define label_countycd 39007 "Ashtabula County, OH",add
label define label_countycd 39009 "Athens County, OH",add
label define label_countycd 39013 "Belmont County, OH",add
label define label_countycd 39015 "Brown County, OH",add
label define label_countycd 39017 "Butler County, OH",add
label define label_countycd 39021 "Champaign County, OH",add
label define label_countycd 39023 "Clark County, OH",add
label define label_countycd 39025 "Clermont County, OH",add
label define label_countycd 39027 "Clinton County, OH",add
label define label_countycd 39029 "Columbiana County, OH",add
label define label_countycd 39035 "Cuyahoga County, OH",add
label define label_countycd 39039 "Defiance County, OH",add
label define label_countycd 39041 "Delaware County, OH",add
label define label_countycd 39043 "Erie County, OH",add
label define label_countycd 39045 "Fairfield County, OH",add
label define label_countycd 39049 "Franklin County, OH",add
label define label_countycd 39053 "Gallia County, OH",add
label define label_countycd 39055 "Geauga County, OH",add
label define label_countycd 39057 "Greene County, OH",add
label define label_countycd 39061 "Hamilton County, OH",add
label define label_countycd 39063 "Hancock County, OH",add
label define label_countycd 39065 "Hardin County, OH",add
label define label_countycd 39069 "Henry County, OH",add
label define label_countycd 39071 "Highland County, OH",add
label define label_countycd 39077 "Huron County, OH",add
label define label_countycd 39079 "Jackson County, OH",add
label define label_countycd 39081 "Jefferson County, OH",add
label define label_countycd 39083 "Knox County, OH",add
label define label_countycd 39085 "Lake County, OH",add
label define label_countycd 39087 "Lawrence County, OH",add
label define label_countycd 39089 "Licking County, OH",add
label define label_countycd 39093 "Lorain County, OH",add
label define label_countycd 39095 "Lucas County, OH",add
label define label_countycd 39097 "Madison County, OH",add
label define label_countycd 39099 "Mahoning County, OH",add
label define label_countycd 39101 "Marion County, OH",add
label define label_countycd 39103 "Medina County, OH",add
label define label_countycd 39107 "Mercer County, OH",add
label define label_countycd 39109 "Miami County, OH",add
label define label_countycd 39113 "Montgomery County, OH",add
label define label_countycd 39119 "Muskingum County, OH",add
label define label_countycd 39129 "Pickaway County, OH",add
label define label_countycd 39131 "Pike County, OH",add
label define label_countycd 39133 "Portage County, OH",add
label define label_countycd 39139 "Richland County, OH",add
label define label_countycd 39141 "Ross County, OH",add
label define label_countycd 39143 "Sandusky County, OH",add
label define label_countycd 39145 "Scioto County, OH",add
label define label_countycd 39147 "Seneca County, OH",add
label define label_countycd 39151 "Stark County, OH",add
label define label_countycd 39153 "Summit County, OH",add
label define label_countycd 39155 "Trumbull County, OH",add
label define label_countycd 39157 "Tuscarawas County, OH",add
label define label_countycd 39161 "Van Wert County, OH",add
label define label_countycd 39165 "Warren County, OH",add
label define label_countycd 39167 "Washington County, OH",add
label define label_countycd 39169 "Wayne County, OH",add
label define label_countycd 39173 "Wood County, OH",add
label define label_countycd 40001 "Adair County, OK",add
label define label_countycd 40005 "Atoka County, OK",add
label define label_countycd 40013 "Bryan County, OK",add
label define label_countycd 40015 "Caddo County, OK",add
label define label_countycd 40017 "Canadian County, OK",add
label define label_countycd 40019 "Carter County, OK",add
label define label_countycd 40021 "Cherokee County, OK",add
label define label_countycd 40023 "Choctaw County, OK",add
label define label_countycd 40027 "Cleveland County, OK",add
label define label_countycd 40031 "Comanche County, OK",add
label define label_countycd 40037 "Creek County, OK",add
label define label_countycd 40039 "Custer County, OK",add
label define label_countycd 40041 "Delaware County, OK",add
label define label_countycd 40047 "Garfield County, OK",add
label define label_countycd 40051 "Grady County, OK",add
label define label_countycd 40061 "Haskell County, OK",add
label define label_countycd 40063 "Hughes County, OK",add
label define label_countycd 40065 "Jackson County, OK",add
label define label_countycd 40069 "Johnston County, OK",add
label define label_countycd 40071 "Kay County, OK",add
label define label_countycd 40073 "Kingfisher County, OK",add
label define label_countycd 40077 "Latimer County, OK",add
label define label_countycd 40079 "Le Flore County, OK",add
label define label_countycd 40083 "Logan County, OK",add
label define label_countycd 40087 "Mcclain County, OK",add
label define label_countycd 40089 "Mccurtain County, OK",add
label define label_countycd 40093 "Major County, OK",add
label define label_countycd 40097 "Mayes County, OK",add
label define label_countycd 40101 "Muskogee County, OK",add
label define label_countycd 40109 "Oklahoma County, OK",add
label define label_countycd 40111 "Okmulgee County, OK",add
label define label_countycd 40115 "Ottawa County, OK",add
label define label_countycd 40119 "Payne County, OK",add
label define label_countycd 40121 "Pittsburg County, OK",add
label define label_countycd 40123 "Pontotoc County, OK",add
label define label_countycd 40125 "Pottawatomie County, OK",add
label define label_countycd 40131 "Rogers County, OK",add
label define label_countycd 40133 "Seminole County, OK",add
label define label_countycd 40135 "Sequoyah County, OK",add
label define label_countycd 40137 "Stephens County, OK",add
label define label_countycd 40139 "Texas County, OK",add
label define label_countycd 40143 "Tulsa County, OK",add
label define label_countycd 40147 "Washington County, OK",add
label define label_countycd 40149 "Washita County, OK",add
label define label_countycd 40151 "Woods County, OK",add
label define label_countycd 40153 "Woodward County, OK",add
label define label_countycd 41003 "Benton County, OR",add
label define label_countycd 41005 "Clackamas County, OR",add
label define label_countycd 41007 "Clatsop County, OR",add
label define label_countycd 41011 "Coos County, OR",add
label define label_countycd 41017 "Deschutes County, OR",add
label define label_countycd 41019 "Douglas County, OR",add
label define label_countycd 41029 "Jackson County, OR",add
label define label_countycd 41033 "Josephine County, OR",add
label define label_countycd 41035 "Klamath County, OR",add
label define label_countycd 41039 "Lane County, OR",add
label define label_countycd 41041 "Lincoln County, OR",add
label define label_countycd 41043 "Linn County, OR",add
label define label_countycd 41045 "Malheur County, OR",add
label define label_countycd 41047 "Marion County, OR",add
label define label_countycd 41051 "Multnomah County, OR",add
label define label_countycd 41053 "Polk County, OR",add
label define label_countycd 41057 "Tillamook County, OR",add
label define label_countycd 41059 "Umatilla County, OR",add
label define label_countycd 41061 "Union County, OR",add
label define label_countycd 41065 "Wasco County, OR",add
label define label_countycd 41067 "Washington County, OR",add
label define label_countycd 41071 "Yamhill County, OR",add
label define label_countycd 42001 "Adams County, PA",add
label define label_countycd 42003 "Allegheny County, PA",add
label define label_countycd 42005 "Armstrong County, PA",add
label define label_countycd 42007 "Beaver County, PA",add
label define label_countycd 42011 "Berks County, PA",add
label define label_countycd 42013 "Blair County, PA",add
label define label_countycd 42015 "Bradford County, PA",add
label define label_countycd 42017 "Bucks County, PA",add
label define label_countycd 42019 "Butler County, PA",add
label define label_countycd 42021 "Cambria County, PA",add
label define label_countycd 42027 "Centre County, PA",add
label define label_countycd 42029 "Chester County, PA",add
label define label_countycd 42031 "Clarion County, PA",add
label define label_countycd 42033 "Clearfield County, PA",add
label define label_countycd 42035 "Clinton County, PA",add
label define label_countycd 42037 "Columbia County, PA",add
label define label_countycd 42039 "Crawford County, PA",add
label define label_countycd 42041 "Cumberland County, PA",add
label define label_countycd 42043 "Dauphin County, PA",add
label define label_countycd 42045 "Delaware County, PA",add
label define label_countycd 42049 "Erie County, PA",add
label define label_countycd 42051 "Fayette County, PA",add
label define label_countycd 42055 "Franklin County, PA",add
label define label_countycd 42059 "Greene County, PA",add
label define label_countycd 42061 "Huntingdon County, PA",add
label define label_countycd 42063 "Indiana County, PA",add
label define label_countycd 42065 "Jefferson County, PA",add
label define label_countycd 42069 "Lackawanna County, PA",add
label define label_countycd 42071 "Lancaster County, PA",add
label define label_countycd 42073 "Lawrence County, PA",add
label define label_countycd 42075 "Lebanon County, PA",add
label define label_countycd 42077 "Lehigh County, PA",add
label define label_countycd 42079 "Luzerne County, PA",add
label define label_countycd 42081 "Lycoming County, PA",add
label define label_countycd 42083 "Mckean County, PA",add
label define label_countycd 42085 "Mercer County, PA",add
label define label_countycd 42087 "Mifflin County, PA",add
label define label_countycd 42089 "Monroe County, PA",add
label define label_countycd 42091 "Montgomery County, PA",add
label define label_countycd 42095 "Northampton County, PA",add
label define label_countycd 42097 "Northumberland County, PA",add
label define label_countycd 42101 "Philadelphia County, PA",add
label define label_countycd 42107 "Schuylkill County, PA",add
label define label_countycd 42109 "Snyder County, PA",add
label define label_countycd 42111 "Somerset County, PA",add
label define label_countycd 42115 "Susquehanna County, PA",add
label define label_countycd 42117 "Tioga County, PA",add
label define label_countycd 42119 "Union County, PA",add
label define label_countycd 42121 "Venango County, PA",add
label define label_countycd 42125 "Washington County, PA",add
label define label_countycd 42129 "Westmoreland County, PA",add
label define label_countycd 42131 "Wyoming County, PA",add
label define label_countycd 42133 "York County, PA",add
label define label_countycd 44001 "Bristol County, RI",add
label define label_countycd 44003 "Kent County, RI",add
label define label_countycd 44005 "Newport County, RI",add
label define label_countycd 44007 "Providence County, RI",add
label define label_countycd 44009 "Washington County, RI",add
label define label_countycd 45001 "Abbeville County, SC",add
label define label_countycd 45003 "Aiken County, SC",add
label define label_countycd 45005 "Allendale County, SC",add
label define label_countycd 45007 "Anderson County, SC",add
label define label_countycd 45009 "Bamberg County, SC",add
label define label_countycd 45013 "Beaufort County, SC",add
label define label_countycd 45015 "Berkeley County, SC",add
label define label_countycd 45019 "Charleston County, SC",add
label define label_countycd 45021 "Cherokee County, SC",add
label define label_countycd 45025 "Chesterfield County, SC",add
label define label_countycd 45029 "Colleton County, SC",add
label define label_countycd 45031 "Darlington County, SC",add
label define label_countycd 45035 "Dorchester County, SC",add
label define label_countycd 45041 "Florence County, SC",add
label define label_countycd 45045 "Greenville County, SC",add
label define label_countycd 45047 "Greenwood County, SC",add
label define label_countycd 45051 "Horry County, SC",add
label define label_countycd 45055 "Kershaw County, SC",add
label define label_countycd 45057 "Lancaster County, SC",add
label define label_countycd 45059 "Laurens County, SC",add
label define label_countycd 45063 "Lexington County, SC",add
label define label_countycd 45067 "Marion County, SC",add
label define label_countycd 45071 "Newberry County, SC",add
label define label_countycd 45075 "Orangeburg County, SC",add
label define label_countycd 45077 "Pickens County, SC",add
label define label_countycd 45079 "Richland County, SC",add
label define label_countycd 45083 "Spartanburg County, SC",add
label define label_countycd 45085 "Sumter County, SC",add
label define label_countycd 45087 "Union County, SC",add
label define label_countycd 45089 "Williamsburg County, SC",add
label define label_countycd 45091 "York County, SC",add
label define label_countycd 46011 "Brookings County, SD",add
label define label_countycd 46013 "Brown County, SD",add
label define label_countycd 46027 "Clay County, SD",add
label define label_countycd 46029 "Codington County, SD",add
label define label_countycd 46035 "Davison County, SD",add
label define label_countycd 46079 "Lake County, SD",add
label define label_countycd 46081 "Lawrence County, SD",add
label define label_countycd 46083 "Lincoln County, SD",add
label define label_countycd 46099 "Minnehaha County, SD",add
label define label_countycd 46102 "Oglala Lakota County, SD",add
label define label_countycd 46103 "Pennington County, SD",add
label define label_countycd 46109 "Roberts County, SD",add
label define label_countycd 46121 "Todd County, SD",add
label define label_countycd 46135 "Yankton County, SD",add
label define label_countycd 47003 "Bedford County, TN",add
label define label_countycd 47009 "Blount County, TN",add
label define label_countycd 47011 "Bradley County, TN",add
label define label_countycd 47013 "Campbell County, TN",add
label define label_countycd 47017 "Carroll County, TN",add
label define label_countycd 47019 "Carter County, TN",add
label define label_countycd 47021 "Cheatham County, TN",add
label define label_countycd 47023 "Chester County, TN",add
label define label_countycd 47025 "Claiborne County, TN",add
label define label_countycd 47031 "Coffee County, TN",add
label define label_countycd 47035 "Cumberland County, TN",add
label define label_countycd 47037 "Davidson County, TN",add
label define label_countycd 47043 "Dickson County, TN",add
label define label_countycd 47045 "Dyer County, TN",add
label define label_countycd 47051 "Franklin County, TN",add
label define label_countycd 47053 "Gibson County, TN",add
label define label_countycd 47055 "Giles County, TN",add
label define label_countycd 47059 "Greene County, TN",add
label define label_countycd 47063 "Hamblen County, TN",add
label define label_countycd 47065 "Hamilton County, TN",add
label define label_countycd 47069 "Hardeman County, TN",add
label define label_countycd 47071 "Hardin County, TN",add
label define label_countycd 47077 "Henderson County, TN",add
label define label_countycd 47079 "Henry County, TN",add
label define label_countycd 47089 "Jefferson County, TN",add
label define label_countycd 47093 "Knox County, TN",add
label define label_countycd 47097 "Lauderdale County, TN",add
label define label_countycd 47099 "Lawrence County, TN",add
label define label_countycd 47101 "Lewis County, TN",add
label define label_countycd 47103 "Lincoln County, TN",add
label define label_countycd 47107 "Mcminn County, TN",add
label define label_countycd 47109 "Mcnairy County, TN",add
label define label_countycd 47113 "Madison County, TN",add
label define label_countycd 47119 "Maury County, TN",add
label define label_countycd 47123 "Monroe County, TN",add
label define label_countycd 47125 "Montgomery County, TN",add
label define label_countycd 47127 "Moore County, TN",add
label define label_countycd 47133 "Overton County, TN",add
label define label_countycd 47141 "Putnam County, TN",add
label define label_countycd 47143 "Rhea County, TN",add
label define label_countycd 47145 "Roane County, TN",add
label define label_countycd 47149 "Rutherford County, TN",add
label define label_countycd 47151 "Scott County, TN",add
label define label_countycd 47157 "Shelby County, TN",add
label define label_countycd 47163 "Sullivan County, TN",add
label define label_countycd 47165 "Sumner County, TN",add
label define label_countycd 47167 "Tipton County, TN",add
label define label_countycd 47169 "Trousdale County, TN",add
label define label_countycd 47177 "Warren County, TN",add
label define label_countycd 47179 "Washington County, TN",add
label define label_countycd 47183 "Weakley County, TN",add
label define label_countycd 47187 "Williamson County, TN",add
label define label_countycd 47189 "Wilson County, TN",add
label define label_countycd 48005 "Angelina County, TX",add
label define label_countycd 48025 "Bee County, TX",add
label define label_countycd 48027 "Bell County, TX",add
label define label_countycd 48029 "Bexar County, TX",add
label define label_countycd 48037 "Bowie County, TX",add
label define label_countycd 48039 "Brazoria County, TX",add
label define label_countycd 48041 "Brazos County, TX",add
label define label_countycd 48043 "Brewster County, TX",add
label define label_countycd 48049 "Brown County, TX",add
label define label_countycd 48061 "Cameron County, TX",add
label define label_countycd 48073 "Cherokee County, TX",add
label define label_countycd 48085 "Collin County, TX",add
label define label_countycd 48091 "Comal County, TX",add
label define label_countycd 48097 "Cooke County, TX",add
label define label_countycd 48099 "Coryell County, TX",add
label define label_countycd 48113 "Dallas County, TX",add
label define label_countycd 48121 "Denton County, TX",add
label define label_countycd 48129 "Donley County, TX",add
label define label_countycd 48133 "Eastland County, TX",add
label define label_countycd 48135 "Ector County, TX",add
label define label_countycd 48139 "Ellis County, TX",add
label define label_countycd 48141 "El Paso County, TX",add
label define label_countycd 48143 "Erath County, TX",add
label define label_countycd 48157 "Fort Bend County, TX",add
label define label_countycd 48167 "Galveston County, TX",add
label define label_countycd 48181 "Grayson County, TX",add
label define label_countycd 48183 "Gregg County, TX",add
label define label_countycd 48187 "Guadalupe County, TX",add
label define label_countycd 48189 "Hale County, TX",add
label define label_countycd 48199 "Hardin County, TX",add
label define label_countycd 48201 "Harris County, TX",add
label define label_countycd 48203 "Harrison County, TX",add
label define label_countycd 48209 "Hays County, TX",add
label define label_countycd 48213 "Henderson County, TX",add
label define label_countycd 48215 "Hidalgo County, TX",add
label define label_countycd 48217 "Hill County, TX",add
label define label_countycd 48219 "Hockley County, TX",add
label define label_countycd 48227 "Howard County, TX",add
label define label_countycd 48231 "Hunt County, TX",add
label define label_countycd 48233 "Hutchinson County, TX",add
label define label_countycd 48241 "Jasper County, TX",add
label define label_countycd 48245 "Jefferson County, TX",add
label define label_countycd 48251 "Johnson County, TX",add
label define label_countycd 48257 "Kaufman County, TX",add
label define label_countycd 48265 "Kerr County, TX",add
label define label_countycd 48273 "Kleberg County, TX",add
label define label_countycd 48277 "Lamar County, TX",add
label define label_countycd 48303 "Lubbock County, TX",add
label define label_countycd 48309 "Mclennan County, TX",add
label define label_countycd 48323 "Maverick County, TX",add
label define label_countycd 48329 "Midland County, TX",add
label define label_countycd 48339 "Montgomery County, TX",add
label define label_countycd 48347 "Nacogdoches County, TX",add
label define label_countycd 48349 "Navarro County, TX",add
label define label_countycd 48355 "Nueces County, TX",add
label define label_countycd 48361 "Orange County, TX",add
label define label_countycd 48365 "Panola County, TX",add
label define label_countycd 48367 "Parker County, TX",add
label define label_countycd 48375 "Potter County, TX",add
label define label_countycd 48381 "Randall County, TX",add
label define label_countycd 48415 "Scurry County, TX",add
label define label_countycd 48423 "Smith County, TX",add
label define label_countycd 48439 "Tarrant County, TX",add
label define label_countycd 48441 "Taylor County, TX",add
label define label_countycd 48449 "Titus County, TX",add
label define label_countycd 48451 "Tom Green County, TX",add
label define label_countycd 48453 "Travis County, TX",add
label define label_countycd 48463 "Uvalde County, TX",add
label define label_countycd 48469 "Victoria County, TX",add
label define label_countycd 48471 "Walker County, TX",add
label define label_countycd 48473 "Waller County, TX",add
label define label_countycd 48477 "Washington County, TX",add
label define label_countycd 48479 "Webb County, TX",add
label define label_countycd 48481 "Wharton County, TX",add
label define label_countycd 48485 "Wichita County, TX",add
label define label_countycd 48487 "Wilbarger County, TX",add
label define label_countycd 48491 "Williamson County, TX",add
label define label_countycd 48499 "Wood County, TX",add
label define label_countycd 49005 "Cache County, UT",add
label define label_countycd 49011 "Davis County, UT",add
label define label_countycd 49021 "Iron County, UT",add
label define label_countycd 49035 "Salt Lake County, UT",add
label define label_countycd 49039 "Sanpete County, UT",add
label define label_countycd 49045 "Tooele County, UT",add
label define label_countycd 49047 "Uintah County, UT",add
label define label_countycd 49049 "Utah County, UT",add
label define label_countycd 49051 "Wasatch County, UT",add
label define label_countycd 49053 "Washington County, UT",add
label define label_countycd 49057 "Weber County, UT",add
label define label_countycd 50001 "Addison County, VT",add
label define label_countycd 50003 "Bennington County, VT",add
label define label_countycd 50005 "Caledonia County, VT",add
label define label_countycd 50007 "Chittenden County, VT",add
label define label_countycd 50015 "Lamoille County, VT",add
label define label_countycd 50017 "Orange County, VT",add
label define label_countycd 50019 "Orleans County, VT",add
label define label_countycd 50021 "Rutland County, VT",add
label define label_countycd 50023 "Washington County, VT",add
label define label_countycd 50025 "Windham County, VT",add
label define label_countycd 50027 "Windsor County, VT",add
label define label_countycd 51001 "Accomack County, VA",add
label define label_countycd 51003 "Albemarle County, VA",add
label define label_countycd 51005 "Alleghany County, VA",add
label define label_countycd 51009 "Amherst County, VA",add
label define label_countycd 51013 "Arlington County, VA",add
label define label_countycd 51015 "Augusta County, VA",add
label define label_countycd 51025 "Brunswick County, VA",add
label define label_countycd 51027 "Buchanan County, VA",add
label define label_countycd 51041 "Chesterfield County, VA",add
label define label_countycd 51047 "Culpeper County, VA",add
label define label_countycd 51053 "Dinwiddie County, VA",add
label define label_countycd 51059 "Fairfax County, VA",add
label define label_countycd 51067 "Franklin County, VA",add
label define label_countycd 51069 "Frederick County, VA",add
label define label_countycd 51073 "Gloucester County, VA",add
label define label_countycd 51085 "Hanover County, VA",add
label define label_countycd 51087 "Henrico County, VA",add
label define label_countycd 51089 "Henry County, VA",add
label define label_countycd 51107 "Loudoun County, VA",add
label define label_countycd 51121 "Montgomery County, VA",add
label define label_countycd 51137 "Orange County, VA",add
label define label_countycd 51147 "Prince Edward County, VA",add
label define label_countycd 51153 "Prince William County, VA",add
label define label_countycd 51155 "Pulaski County, VA",add
label define label_countycd 51161 "Roanoke County, VA",add
label define label_countycd 51165 "Rockingham County, VA",add
label define label_countycd 51177 "Spotsylvania County, VA",add
label define label_countycd 51185 "Tazewell County, VA",add
label define label_countycd 51191 "Washington County, VA",add
label define label_countycd 51195 "Wise County, VA",add
label define label_countycd 51197 "Wythe County, VA",add
label define label_countycd 51510 "Alexandria City, VA",add
label define label_countycd 51530 "Buena Vista City, VA",add
label define label_countycd 51540 "Charlottesville City, VA",add
label define label_countycd 51550 "Chesapeake City, VA",add
label define label_countycd 51570 "Colonial Heights City, VA",add
label define label_countycd 51590 "Danville City, VA",add
label define label_countycd 51620 "Franklin City, VA",add
label define label_countycd 51630 "Fredericksburg City, VA",add
label define label_countycd 51650 "Hampton City, VA",add
label define label_countycd 51660 "Harrisonburg City, VA",add
label define label_countycd 51678 "Lexington City, VA",add
label define label_countycd 51680 "Lynchburg City, VA",add
label define label_countycd 51700 "Newport News City, VA",add
label define label_countycd 51710 "Norfolk City, VA",add
label define label_countycd 51750 "Radford City, VA",add
label define label_countycd 51760 "Richmond City, VA",add
label define label_countycd 51770 "Roanoke City, VA",add
label define label_countycd 51775 "Salem City, VA",add
label define label_countycd 51790 "Staunton City, VA",add
label define label_countycd 51800 "Suffolk City, VA",add
label define label_countycd 51810 "Virginia Beach City, VA",add
label define label_countycd 51830 "Williamsburg City, VA",add
label define label_countycd 51840 "Winchester City, VA",add
label define label_countycd 53005 "Benton County, WA",add
label define label_countycd 53007 "Chelan County, WA",add
label define label_countycd 53009 "Clallam County, WA",add
label define label_countycd 53011 "Clark County, WA",add
label define label_countycd 53015 "Cowlitz County, WA",add
label define label_countycd 53021 "Franklin County, WA",add
label define label_countycd 53025 "Grant County, WA",add
label define label_countycd 53027 "Grays Harbor County, WA",add
label define label_countycd 53029 "Island County, WA",add
label define label_countycd 53031 "Jefferson County, WA",add
label define label_countycd 53033 "King County, WA",add
label define label_countycd 53035 "Kitsap County, WA",add
label define label_countycd 53037 "Kittitas County, WA",add
label define label_countycd 53041 "Lewis County, WA",add
label define label_countycd 53053 "Pierce County, WA",add
label define label_countycd 53057 "Skagit County, WA",add
label define label_countycd 53061 "Snohomish County, WA",add
label define label_countycd 53063 "Spokane County, WA",add
label define label_countycd 53067 "Thurston County, WA",add
label define label_countycd 53071 "Walla Walla County, WA",add
label define label_countycd 53073 "Whatcom County, WA",add
label define label_countycd 53075 "Whitman County, WA",add
label define label_countycd 53077 "Yakima County, WA",add
label define label_countycd 54001 "Barbour County, WV",add
label define label_countycd 54003 "Berkeley County, WV",add
label define label_countycd 54009 "Brooke County, WV",add
label define label_countycd 54011 "Cabell County, WV",add
label define label_countycd 54019 "Fayette County, WV",add
label define label_countycd 54021 "Gilmer County, WV",add
label define label_countycd 54023 "Grant County, WV",add
label define label_countycd 54025 "Greenbrier County, WV",add
label define label_countycd 54029 "Hancock County, WV",add
label define label_countycd 54031 "Hardy County, WV",add
label define label_countycd 54033 "Harrison County, WV",add
label define label_countycd 54035 "Jackson County, WV",add
label define label_countycd 54037 "Jefferson County, WV",add
label define label_countycd 54039 "Kanawha County, WV",add
label define label_countycd 54045 "Logan County, WV",add
label define label_countycd 54049 "Marion County, WV",add
label define label_countycd 54051 "Marshall County, WV",add
label define label_countycd 54055 "Mercer County, WV",add
label define label_countycd 54057 "Mineral County, WV",add
label define label_countycd 54059 "Mingo County, WV",add
label define label_countycd 54061 "Monongalia County, WV",add
label define label_countycd 54069 "Ohio County, WV",add
label define label_countycd 54071 "Pendleton County, WV",add
label define label_countycd 54079 "Putnam County, WV",add
label define label_countycd 54081 "Raleigh County, WV",add
label define label_countycd 54083 "Randolph County, WV",add
label define label_countycd 54097 "Upshur County, WV",add
label define label_countycd 54107 "Wood County, WV",add
label define label_countycd 55003 "Ashland County, WI",add
label define label_countycd 55009 "Brown County, WI",add
label define label_countycd 55025 "Dane County, WI",add
label define label_countycd 55027 "Dodge County, WI",add
label define label_countycd 55031 "Douglas County, WI",add
label define label_countycd 55033 "Dunn County, WI",add
label define label_countycd 55035 "Eau Claire County, WI",add
label define label_countycd 55039 "Fond Du Lac County, WI",add
label define label_countycd 55043 "Grant County, WI",add
label define label_countycd 55045 "Green County, WI",add
label define label_countycd 55055 "Jefferson County, WI",add
label define label_countycd 55059 "Kenosha County, WI",add
label define label_countycd 55063 "La Crosse County, WI",add
label define label_countycd 55071 "Manitowoc County, WI",add
label define label_countycd 55073 "Marathon County, WI",add
label define label_countycd 55075 "Marinette County, WI",add
label define label_countycd 55078 "Menominee County, WI",add
label define label_countycd 55079 "Milwaukee County, WI",add
label define label_countycd 55085 "Oneida County, WI",add
label define label_countycd 55087 "Outagamie County, WI",add
label define label_countycd 55089 "Ozaukee County, WI",add
label define label_countycd 55093 "Pierce County, WI",add
label define label_countycd 55097 "Portage County, WI",add
label define label_countycd 55101 "Racine County, WI",add
label define label_countycd 55105 "Rock County, WI",add
label define label_countycd 55111 "Sauk County, WI",add
label define label_countycd 55113 "Sawyer County, WI",add
label define label_countycd 55117 "Sheboygan County, WI",add
label define label_countycd 55127 "Walworth County, WI",add
label define label_countycd 55129 "Washburn County, WI",add
label define label_countycd 55133 "Waukesha County, WI",add
label define label_countycd 55139 "Winnebago County, WI",add
label define label_countycd 55141 "Wood County, WI",add
label define label_countycd 56001 "Albany County, WY",add
label define label_countycd 56013 "Fremont County, WY",add
label define label_countycd 56015 "Goshen County, WY",add
label define label_countycd 56021 "Laramie County, WY",add
label define label_countycd 56025 "Natrona County, WY",add
label define label_countycd 56029 "Park County, WY",add
label define label_countycd 56033 "Sheridan County, WY",add
label define label_countycd 56037 "Sweetwater County, WY",add
label define label_countycd 60050 "Western District, AS",add
label define label_countycd 66010 "Guam, GU",add
label define label_countycd 69110 "Saipan Municipality, MP",add
label define label_countycd 72003 "Aguada Municipio, PR",add
label define label_countycd 72005 "Aguadilla Municipio, PR",add
label define label_countycd 72013 "Arecibo Municipio, PR",add
label define label_countycd 72015 "Arroyo Municipio, PR",add
label define label_countycd 72019 "Barranquitas Municipio, PR",add
label define label_countycd 72021 "Bayamón Municipio, PR",add
label define label_countycd 72025 "Caguas Municipio, PR",add
label define label_countycd 72031 "Carolina Municipio, PR",add
label define label_countycd 72035 "Cayey Municipio, PR",add
label define label_countycd 72043 "Coamo Municipio, PR",add
label define label_countycd 72053 "Fajardo Municipio, PR",add
label define label_countycd 72057 "Guayama Municipio, PR",add
label define label_countycd 72061 "Guaynabo Municipio, PR",add
label define label_countycd 72063 "Gurabo Municipio, PR",add
label define label_countycd 72065 "Hatillo Municipio, PR",add
label define label_countycd 72069 "Humacao Municipio, PR",add
label define label_countycd 72071 "Isabela Municipio, PR",add
label define label_countycd 72075 "Juana Díaz, PR",add
label define label_countycd 72091 "Manatí  Municipio, PR",add
label define label_countycd 72097 "Mayagüez Municipio, PR",add
label define label_countycd 72099 "Moca Municipio, PR",add
label define label_countycd 72113 "Ponce Municipio, PR",add
label define label_countycd 72119 "Rio Grande Municipio, PR",add
label define label_countycd 72125 "San Germán Municipio, PR",add
label define label_countycd 72127 "San Juan Municipio, PR",add
label define label_countycd 72129 "San Lorenzo Municipio, PR",add
label define label_countycd 72131 "San Sebastián Municipio, PR",add
label define label_countycd 72139 "Trujillo Alto Municipio, PR",add
label define label_countycd 72141 "Utuado Municipio, PR",add
label define label_countycd 72145 "Vega Baja Municipio, PR",add
label define label_countycd 72153 "Yauco Municipio, PR",add
label define label_countycd 78030 "St. Thomas Island, VI",add
label define label_countycd -2 "Not applicable",add
label values countycd label_countycd
label define label_cngdstcd 101 "AL, District 01"
label define label_cngdstcd 102 "AL, District 02",add
label define label_cngdstcd 103 "AL, District 03",add
label define label_cngdstcd 104 "AL, District 04",add
label define label_cngdstcd 105 "AL, District 05",add
label define label_cngdstcd 106 "AL, District 06",add
label define label_cngdstcd 107 "AL, District 07",add
label define label_cngdstcd 200 "AK, District 00",add
label define label_cngdstcd 401 "AZ, District 01",add
label define label_cngdstcd 402 "AZ, District 02",add
label define label_cngdstcd 403 "AZ, District 03",add
label define label_cngdstcd 404 "AZ, District 04",add
label define label_cngdstcd 405 "AZ, District 05",add
label define label_cngdstcd 406 "AZ, District 06",add
label define label_cngdstcd 407 "AZ, District 07",add
label define label_cngdstcd 408 "AZ, District 08",add
label define label_cngdstcd 409 "AZ, District 09",add
label define label_cngdstcd 501 "AR, District 01",add
label define label_cngdstcd 502 "AR, District 02",add
label define label_cngdstcd 503 "AR, District 03",add
label define label_cngdstcd 504 "AR, District 04",add
label define label_cngdstcd 601 "CA, District 01",add
label define label_cngdstcd 602 "CA, District 02",add
label define label_cngdstcd 603 "CA, District 03",add
label define label_cngdstcd 604 "CA, District 04",add
label define label_cngdstcd 605 "CA, District 05",add
label define label_cngdstcd 606 "CA, District 06",add
label define label_cngdstcd 607 "CA, District 07",add
label define label_cngdstcd 608 "CA, District 08",add
label define label_cngdstcd 609 "CA, District 09",add
label define label_cngdstcd 610 "CA, District 10",add
label define label_cngdstcd 611 "CA, District 11",add
label define label_cngdstcd 612 "CA, District 12",add
label define label_cngdstcd 613 "CA, District 13",add
label define label_cngdstcd 614 "CA, District 14",add
label define label_cngdstcd 615 "CA, District 15",add
label define label_cngdstcd 616 "CA, District 16",add
label define label_cngdstcd 617 "CA, District 17",add
label define label_cngdstcd 618 "CA, District 18",add
label define label_cngdstcd 619 "CA, District 19",add
label define label_cngdstcd 620 "CA, District 20",add
label define label_cngdstcd 621 "CA, District 21",add
label define label_cngdstcd 622 "CA, District 22",add
label define label_cngdstcd 623 "CA, District 23",add
label define label_cngdstcd 624 "CA, District 24",add
label define label_cngdstcd 625 "CA, District 25",add
label define label_cngdstcd 626 "CA, District 26",add
label define label_cngdstcd 627 "CA, District 27",add
label define label_cngdstcd 628 "CA, District 28",add
label define label_cngdstcd 629 "CA, District 29",add
label define label_cngdstcd 630 "CA, District 30",add
label define label_cngdstcd 631 "CA, District 31",add
label define label_cngdstcd 632 "CA, District 32",add
label define label_cngdstcd 633 "CA, District 33",add
label define label_cngdstcd 634 "CA, District 34",add
label define label_cngdstcd 635 "CA, District 35",add
label define label_cngdstcd 636 "CA, District 36",add
label define label_cngdstcd 637 "CA, District 37",add
label define label_cngdstcd 638 "CA, District 38",add
label define label_cngdstcd 639 "CA, District 39",add
label define label_cngdstcd 640 "CA, District 40",add
label define label_cngdstcd 641 "CA, District 41",add
label define label_cngdstcd 642 "CA, District 42",add
label define label_cngdstcd 643 "CA, District 43",add
label define label_cngdstcd 644 "CA, District 44",add
label define label_cngdstcd 645 "CA, District 45",add
label define label_cngdstcd 646 "CA, District 46",add
label define label_cngdstcd 647 "CA, District 47",add
label define label_cngdstcd 648 "CA, District 48",add
label define label_cngdstcd 649 "CA, District 49",add
label define label_cngdstcd 650 "CA, District 50",add
label define label_cngdstcd 651 "CA, District 51",add
label define label_cngdstcd 652 "CA, District 52",add
label define label_cngdstcd 653 "CA, District 53",add
label define label_cngdstcd 801 "CO, District 01",add
label define label_cngdstcd 802 "CO, District 02",add
label define label_cngdstcd 803 "CO, District 03",add
label define label_cngdstcd 804 "CO, District 04",add
label define label_cngdstcd 805 "CO, District 05",add
label define label_cngdstcd 806 "CO, District 06",add
label define label_cngdstcd 807 "CO, District 07",add
label define label_cngdstcd 901 "CT, District 01",add
label define label_cngdstcd 902 "CT, District 02",add
label define label_cngdstcd 903 "CT, District 03",add
label define label_cngdstcd 904 "CT, District 04",add
label define label_cngdstcd 905 "CT, District 05",add
label define label_cngdstcd 1000 "DE, District 00",add
label define label_cngdstcd 1198 "DC, District 98",add
label define label_cngdstcd 1201 "FL, District 01",add
label define label_cngdstcd 1202 "FL, District 02",add
label define label_cngdstcd 1203 "FL, District 03",add
label define label_cngdstcd 1204 "FL, District 04",add
label define label_cngdstcd 1205 "FL, District 05",add
label define label_cngdstcd 1206 "FL, District 06",add
label define label_cngdstcd 1207 "FL, District 07",add
label define label_cngdstcd 1208 "FL, District 08",add
label define label_cngdstcd 1209 "FL, District 09",add
label define label_cngdstcd 1210 "FL, District 10",add
label define label_cngdstcd 1211 "FL, District 11",add
label define label_cngdstcd 1212 "FL, District 12",add
label define label_cngdstcd 1213 "FL, District 13",add
label define label_cngdstcd 1214 "FL, District 14",add
label define label_cngdstcd 1215 "FL, District 15",add
label define label_cngdstcd 1216 "FL, District 16",add
label define label_cngdstcd 1217 "FL, District 17",add
label define label_cngdstcd 1218 "FL, District 18",add
label define label_cngdstcd 1219 "FL, District 19",add
label define label_cngdstcd 1220 "FL, District 20",add
label define label_cngdstcd 1221 "FL, District 21",add
label define label_cngdstcd 1222 "FL, District 22",add
label define label_cngdstcd 1223 "FL, District 23",add
label define label_cngdstcd 1224 "FL, District 24",add
label define label_cngdstcd 1225 "FL, District 25",add
label define label_cngdstcd 1226 "FL, District 26",add
label define label_cngdstcd 1227 "FL, District 27",add
label define label_cngdstcd 1301 "GA, District 01",add
label define label_cngdstcd 1302 "GA, District 02",add
label define label_cngdstcd 1303 "GA, District 03",add
label define label_cngdstcd 1304 "GA, District 04",add
label define label_cngdstcd 1305 "GA, District 05",add
label define label_cngdstcd 1306 "GA, District 06",add
label define label_cngdstcd 1307 "GA, District 07",add
label define label_cngdstcd 1308 "GA, District 08",add
label define label_cngdstcd 1309 "GA, District 09",add
label define label_cngdstcd 1310 "GA, District 10",add
label define label_cngdstcd 1311 "GA, District 11",add
label define label_cngdstcd 1312 "GA, District 12",add
label define label_cngdstcd 1313 "GA, District 13",add
label define label_cngdstcd 1314 "GA, District 14",add
label define label_cngdstcd 1501 "HI, District 01",add
label define label_cngdstcd 1502 "HI, District 02",add
label define label_cngdstcd 1601 "ID, District 01",add
label define label_cngdstcd 1602 "ID, District 02",add
label define label_cngdstcd 1701 "IL, District 01",add
label define label_cngdstcd 1702 "IL, District 02",add
label define label_cngdstcd 1703 "IL, District 03",add
label define label_cngdstcd 1704 "IL, District 04",add
label define label_cngdstcd 1705 "IL, District 05",add
label define label_cngdstcd 1706 "IL, District 06",add
label define label_cngdstcd 1707 "IL, District 07",add
label define label_cngdstcd 1708 "IL, District 08",add
label define label_cngdstcd 1709 "IL, District 09",add
label define label_cngdstcd 1710 "IL, District 10",add
label define label_cngdstcd 1711 "IL, District 11",add
label define label_cngdstcd 1712 "IL, District 12",add
label define label_cngdstcd 1713 "IL, District 13",add
label define label_cngdstcd 1714 "IL, District 14",add
label define label_cngdstcd 1715 "IL, District 15",add
label define label_cngdstcd 1716 "IL, District 16",add
label define label_cngdstcd 1717 "IL, District 17",add
label define label_cngdstcd 1718 "IL, District 18",add
label define label_cngdstcd 1801 "IN, District 01",add
label define label_cngdstcd 1802 "IN, District 02",add
label define label_cngdstcd 1803 "IN, District 03",add
label define label_cngdstcd 1804 "IN, District 04",add
label define label_cngdstcd 1805 "IN, District 05",add
label define label_cngdstcd 1806 "IN, District 06",add
label define label_cngdstcd 1807 "IN, District 07",add
label define label_cngdstcd 1808 "IN, District 08",add
label define label_cngdstcd 1809 "IN, District 09",add
label define label_cngdstcd 1901 "IA, District 01",add
label define label_cngdstcd 1902 "IA, District 02",add
label define label_cngdstcd 1903 "IA, District 03",add
label define label_cngdstcd 1904 "IA, District 04",add
label define label_cngdstcd 2001 "KS, District 01",add
label define label_cngdstcd 2002 "KS, District 02",add
label define label_cngdstcd 2003 "KS, District 03",add
label define label_cngdstcd 2004 "KS, District 04",add
label define label_cngdstcd 2101 "KY, District 01",add
label define label_cngdstcd 2102 "KY, District 02",add
label define label_cngdstcd 2103 "KY, District 03",add
label define label_cngdstcd 2104 "KY, District 04",add
label define label_cngdstcd 2105 "KY, District 05",add
label define label_cngdstcd 2106 "KY, District 06",add
label define label_cngdstcd 2201 "LA, District 01",add
label define label_cngdstcd 2202 "LA, District 02",add
label define label_cngdstcd 2203 "LA, District 03",add
label define label_cngdstcd 2204 "LA, District 04",add
label define label_cngdstcd 2205 "LA, District 05",add
label define label_cngdstcd 2206 "LA, District 06",add
label define label_cngdstcd 2301 "ME, District 01",add
label define label_cngdstcd 2302 "ME, District 02",add
label define label_cngdstcd 2401 "MD, District 01",add
label define label_cngdstcd 2402 "MD, District 02",add
label define label_cngdstcd 2403 "MD, District 03",add
label define label_cngdstcd 2404 "MD, District 04",add
label define label_cngdstcd 2405 "MD, District 05",add
label define label_cngdstcd 2406 "MD, District 06",add
label define label_cngdstcd 2407 "MD, District 07",add
label define label_cngdstcd 2408 "MD, District 08",add
label define label_cngdstcd 2501 "MA, District 01",add
label define label_cngdstcd 2502 "MA, District 02",add
label define label_cngdstcd 2503 "MA, District 03",add
label define label_cngdstcd 2504 "MA, District 04",add
label define label_cngdstcd 2505 "MA, District 05",add
label define label_cngdstcd 2506 "MA, District 06",add
label define label_cngdstcd 2507 "MA, District 07",add
label define label_cngdstcd 2508 "MA, District 08",add
label define label_cngdstcd 2509 "MA, District 09",add
label define label_cngdstcd 2601 "MI, District 01",add
label define label_cngdstcd 2602 "MI, District 02",add
label define label_cngdstcd 2603 "MI, District 03",add
label define label_cngdstcd 2604 "MI, District 04",add
label define label_cngdstcd 2605 "MI, District 05",add
label define label_cngdstcd 2606 "MI, District 06",add
label define label_cngdstcd 2607 "MI, District 07",add
label define label_cngdstcd 2608 "MI, District 08",add
label define label_cngdstcd 2609 "MI, District 09",add
label define label_cngdstcd 2610 "MI, District 10",add
label define label_cngdstcd 2611 "MI, District 11",add
label define label_cngdstcd 2612 "MI, District 12",add
label define label_cngdstcd 2613 "MI, District 13",add
label define label_cngdstcd 2614 "MI, District 14",add
label define label_cngdstcd 2701 "MN, District 01",add
label define label_cngdstcd 2702 "MN, District 02",add
label define label_cngdstcd 2703 "MN, District 03",add
label define label_cngdstcd 2704 "MN, District 04",add
label define label_cngdstcd 2705 "MN, District 05",add
label define label_cngdstcd 2706 "MN, District 06",add
label define label_cngdstcd 2707 "MN, District 07",add
label define label_cngdstcd 2708 "MN, District 08",add
label define label_cngdstcd 2801 "MS, District 01",add
label define label_cngdstcd 2802 "MS, District 02",add
label define label_cngdstcd 2803 "MS, District 03",add
label define label_cngdstcd 2804 "MS, District 04",add
label define label_cngdstcd 2901 "MO, District 01",add
label define label_cngdstcd 2902 "MO, District 02",add
label define label_cngdstcd 2903 "MO, District 03",add
label define label_cngdstcd 2904 "MO, District 04",add
label define label_cngdstcd 2905 "MO, District 05",add
label define label_cngdstcd 2906 "MO, District 06",add
label define label_cngdstcd 2907 "MO, District 07",add
label define label_cngdstcd 2908 "MO, District 08",add
label define label_cngdstcd 3000 "MT, District 00",add
label define label_cngdstcd 3101 "NE, District 01",add
label define label_cngdstcd 3102 "NE, District 02",add
label define label_cngdstcd 3103 "NE, District 03",add
label define label_cngdstcd 3201 "NV, District 01",add
label define label_cngdstcd 3202 "NV, District 02",add
label define label_cngdstcd 3203 "NV, District 03",add
label define label_cngdstcd 3204 "NV, District 04",add
label define label_cngdstcd 3301 "NH, District 01",add
label define label_cngdstcd 3302 "NH, District 02",add
label define label_cngdstcd 3401 "NJ, District 01",add
label define label_cngdstcd 3402 "NJ, District 02",add
label define label_cngdstcd 3403 "NJ, District 03",add
label define label_cngdstcd 3404 "NJ, District 04",add
label define label_cngdstcd 3405 "NJ, District 05",add
label define label_cngdstcd 3406 "NJ, District 06",add
label define label_cngdstcd 3407 "NJ, District 07",add
label define label_cngdstcd 3408 "NJ, District 08",add
label define label_cngdstcd 3409 "NJ, District 09",add
label define label_cngdstcd 3410 "NJ, District 10",add
label define label_cngdstcd 3411 "NJ, District 11",add
label define label_cngdstcd 3412 "NJ, District 12",add
label define label_cngdstcd 3501 "NM, District 01",add
label define label_cngdstcd 3502 "NM, District 02",add
label define label_cngdstcd 3503 "NM, District 03",add
label define label_cngdstcd 3601 "NY, District 01",add
label define label_cngdstcd 3602 "NY, District 02",add
label define label_cngdstcd 3603 "NY, District 03",add
label define label_cngdstcd 3604 "NY, District 04",add
label define label_cngdstcd 3605 "NY, District 05",add
label define label_cngdstcd 3606 "NY, District 06",add
label define label_cngdstcd 3607 "NY, District 07",add
label define label_cngdstcd 3608 "NY, District 08",add
label define label_cngdstcd 3609 "NY, District 09",add
label define label_cngdstcd 3610 "NY, District 10",add
label define label_cngdstcd 3611 "NY, District 11",add
label define label_cngdstcd 3612 "NY, District 12",add
label define label_cngdstcd 3613 "NY, District 13",add
label define label_cngdstcd 3614 "NY, District 14",add
label define label_cngdstcd 3615 "NY, District 15",add
label define label_cngdstcd 3616 "NY, District 16",add
label define label_cngdstcd 3617 "NY, District 17",add
label define label_cngdstcd 3618 "NY, District 18",add
label define label_cngdstcd 3619 "NY, District 19",add
label define label_cngdstcd 3620 "NY, District 20",add
label define label_cngdstcd 3621 "NY, District 21",add
label define label_cngdstcd 3622 "NY, District 22",add
label define label_cngdstcd 3623 "NY, District 23",add
label define label_cngdstcd 3624 "NY, District 24",add
label define label_cngdstcd 3625 "NY, District 25",add
label define label_cngdstcd 3626 "NY, District 26",add
label define label_cngdstcd 3627 "NY, District 27",add
label define label_cngdstcd 3701 "NC, District 01",add
label define label_cngdstcd 3702 "NC, District 02",add
label define label_cngdstcd 3703 "NC, District 03",add
label define label_cngdstcd 3704 "NC, District 04",add
label define label_cngdstcd 3705 "NC, District 05",add
label define label_cngdstcd 3706 "NC, District 06",add
label define label_cngdstcd 3707 "NC, District 07",add
label define label_cngdstcd 3708 "NC, District 08",add
label define label_cngdstcd 3709 "NC, District 09",add
label define label_cngdstcd 3710 "NC, District 10",add
label define label_cngdstcd 3711 "NC, District 11",add
label define label_cngdstcd 3712 "NC, District 12",add
label define label_cngdstcd 3713 "NC, District 13",add
label define label_cngdstcd 3800 "ND, District 00",add
label define label_cngdstcd 3901 "OH, District 01",add
label define label_cngdstcd 3902 "OH, District 02",add
label define label_cngdstcd 3903 "OH, District 03",add
label define label_cngdstcd 3904 "OH, District 04",add
label define label_cngdstcd 3905 "OH, District 05",add
label define label_cngdstcd 3906 "OH, District 06",add
label define label_cngdstcd 3907 "OH, District 07",add
label define label_cngdstcd 3908 "OH, District 08",add
label define label_cngdstcd 3909 "OH, District 09",add
label define label_cngdstcd 3910 "OH, District 10",add
label define label_cngdstcd 3911 "OH, District 11",add
label define label_cngdstcd 3912 "OH, District 12",add
label define label_cngdstcd 3913 "OH, District 13",add
label define label_cngdstcd 3914 "OH, District 14",add
label define label_cngdstcd 3915 "OH, District 15",add
label define label_cngdstcd 3916 "OH, District 16",add
label define label_cngdstcd 4001 "OK, District 01",add
label define label_cngdstcd 4002 "OK, District 02",add
label define label_cngdstcd 4003 "OK, District 03",add
label define label_cngdstcd 4004 "OK, District 04",add
label define label_cngdstcd 4005 "OK, District 05",add
label define label_cngdstcd 4101 "OR, District 01",add
label define label_cngdstcd 4102 "OR, District 02",add
label define label_cngdstcd 4103 "OR, District 03",add
label define label_cngdstcd 4104 "OR, District 04",add
label define label_cngdstcd 4105 "OR, District 05",add
label define label_cngdstcd 4201 "PA, District 01",add
label define label_cngdstcd 4202 "PA, District 02",add
label define label_cngdstcd 4203 "PA, District 03",add
label define label_cngdstcd 4204 "PA, District 04",add
label define label_cngdstcd 4205 "PA, District 05",add
label define label_cngdstcd 4206 "PA, District 06",add
label define label_cngdstcd 4207 "PA, District 07",add
label define label_cngdstcd 4208 "PA, District 08",add
label define label_cngdstcd 4209 "PA, District 09",add
label define label_cngdstcd 4210 "PA, District 10",add
label define label_cngdstcd 4211 "PA, District 11",add
label define label_cngdstcd 4212 "PA, District 12",add
label define label_cngdstcd 4213 "PA, District 13",add
label define label_cngdstcd 4214 "PA, District 14",add
label define label_cngdstcd 4215 "PA, District 15",add
label define label_cngdstcd 4216 "PA, District 16",add
label define label_cngdstcd 4217 "PA, District 17",add
label define label_cngdstcd 4218 "PA, District 18",add
label define label_cngdstcd 4401 "RI, District 01",add
label define label_cngdstcd 4402 "RI, District 02",add
label define label_cngdstcd 4501 "SC, District 01",add
label define label_cngdstcd 4502 "SC, District 02",add
label define label_cngdstcd 4503 "SC, District 03",add
label define label_cngdstcd 4504 "SC, District 04",add
label define label_cngdstcd 4505 "SC, District 05",add
label define label_cngdstcd 4506 "SC, District 06",add
label define label_cngdstcd 4507 "SC, District 07",add
label define label_cngdstcd 4600 "SD, District 00",add
label define label_cngdstcd 4701 "TN, District 01",add
label define label_cngdstcd 4702 "TN, District 02",add
label define label_cngdstcd 4703 "TN, District 03",add
label define label_cngdstcd 4704 "TN, District 04",add
label define label_cngdstcd 4705 "TN, District 05",add
label define label_cngdstcd 4706 "TN, District 06",add
label define label_cngdstcd 4707 "TN, District 07",add
label define label_cngdstcd 4708 "TN, District 08",add
label define label_cngdstcd 4709 "TN, District 09",add
label define label_cngdstcd 4801 "TX, District 01",add
label define label_cngdstcd 4802 "TX, District 02",add
label define label_cngdstcd 4803 "TX, District 03",add
label define label_cngdstcd 4804 "TX, District 04",add
label define label_cngdstcd 4805 "TX, District 05",add
label define label_cngdstcd 4806 "TX, District 06",add
label define label_cngdstcd 4807 "TX, District 07",add
label define label_cngdstcd 4808 "TX, District 08",add
label define label_cngdstcd 4809 "TX, District 09",add
label define label_cngdstcd 4810 "TX, District 10",add
label define label_cngdstcd 4811 "TX, District 11",add
label define label_cngdstcd 4812 "TX, District 12",add
label define label_cngdstcd 4813 "TX, District 13",add
label define label_cngdstcd 4814 "TX, District 14",add
label define label_cngdstcd 4815 "TX, District 15",add
label define label_cngdstcd 4816 "TX, District 16",add
label define label_cngdstcd 4817 "TX, District 17",add
label define label_cngdstcd 4818 "TX, District 18",add
label define label_cngdstcd 4819 "TX, District 19",add
label define label_cngdstcd 4820 "TX, District 20",add
label define label_cngdstcd 4821 "TX, District 21",add
label define label_cngdstcd 4822 "TX, District 22",add
label define label_cngdstcd 4823 "TX, District 23",add
label define label_cngdstcd 4824 "TX, District 24",add
label define label_cngdstcd 4825 "TX, District 25",add
label define label_cngdstcd 4826 "TX, District 26",add
label define label_cngdstcd 4827 "TX, District 27",add
label define label_cngdstcd 4828 "TX, District 28",add
label define label_cngdstcd 4829 "TX, District 29",add
label define label_cngdstcd 4830 "TX, District 30",add
label define label_cngdstcd 4831 "TX, District 31",add
label define label_cngdstcd 4832 "TX, District 32",add
label define label_cngdstcd 4833 "TX, District 33",add
label define label_cngdstcd 4834 "TX, District 34",add
label define label_cngdstcd 4835 "TX, District 35",add
label define label_cngdstcd 4836 "TX, District 36",add
label define label_cngdstcd 4901 "UT, District 01",add
label define label_cngdstcd 4902 "UT, District 02",add
label define label_cngdstcd 4903 "UT, District 03",add
label define label_cngdstcd 4904 "UT, District 04",add
label define label_cngdstcd 5000 "VT, District 00",add
label define label_cngdstcd 5101 "VA, District 01",add
label define label_cngdstcd 5102 "VA, District 02",add
label define label_cngdstcd 5103 "VA, District 03",add
label define label_cngdstcd 5104 "VA, District 04",add
label define label_cngdstcd 5105 "VA, District 05",add
label define label_cngdstcd 5106 "VA, District 06",add
label define label_cngdstcd 5107 "VA, District 07",add
label define label_cngdstcd 5108 "VA, District 08",add
label define label_cngdstcd 5109 "VA, District 09",add
label define label_cngdstcd 5110 "VA, District 10",add
label define label_cngdstcd 5111 "VA, District 11",add
label define label_cngdstcd 5301 "WA, District 01",add
label define label_cngdstcd 5302 "WA, District 02",add
label define label_cngdstcd 5303 "WA, District 03",add
label define label_cngdstcd 5304 "WA, District 04",add
label define label_cngdstcd 5305 "WA, District 05",add
label define label_cngdstcd 5306 "WA, District 06",add
label define label_cngdstcd 5307 "WA, District 07",add
label define label_cngdstcd 5308 "WA, District 08",add
label define label_cngdstcd 5309 "WA, District 09",add
label define label_cngdstcd 5310 "WA, District 10",add
label define label_cngdstcd 5401 "WV, District 01",add
label define label_cngdstcd 5402 "WV, District 02",add
label define label_cngdstcd 5403 "WV, District 03",add
label define label_cngdstcd 5501 "WI, District 01",add
label define label_cngdstcd 5502 "WI, District 02",add
label define label_cngdstcd 5503 "WI, District 03",add
label define label_cngdstcd 5504 "WI, District 04",add
label define label_cngdstcd 5505 "WI, District 05",add
label define label_cngdstcd 5506 "WI, District 06",add
label define label_cngdstcd 5507 "WI, District 07",add
label define label_cngdstcd 5508 "WI, District 08",add
label define label_cngdstcd 5600 "WY, District 00",add
label define label_cngdstcd 6098 "AS, District 98",add
label define label_cngdstcd 6698 "GU, District 98",add
label define label_cngdstcd 6998 "MP, District 98",add
label define label_cngdstcd 7298 "PR, District 98",add
label define label_cngdstcd 7898 "VI, District 98",add
label define label_cngdstcd -2 "Not applicable",add
label values cngdstcd label_cngdstcd
label define label_dfrcgid 113 "Doctoral Universities: Highest Research Activity, public/1 of 3"
label define label_dfrcgid 114 "Doctoral Universities: Highest Research Activity, public/2 of 3",add
label define label_dfrcgid 115 "Doctoral Universities: Highest Research Activity, public/3 of 3",add
label define label_dfrcgid 116 "Doctoral Universities: Highest Research Activity, private not-for-profit",add
label define label_dfrcgid 117 "Doctoral Universities: Higher Research Activity, public/1 of 2",add
label define label_dfrcgid 118 "Doctoral Universities: Higher Research Activity, public/2 of 2",add
label define label_dfrcgid 119 "Doctoral Universities: Higher Research Activity, private not-for-profit",add
label define label_dfrcgid 120 "Doctoral Universities: Moderate Research Activity, public",add
label define label_dfrcgid 121 "Doctoral Universities: Moderate Research Activity, private not-for-profit/1 of 2",add
label define label_dfrcgid 122 "Doctoral Universities: Moderate Research Activity, private not-for-profit/2 of 2",add
label define label_dfrcgid 123 "Doctoral Universities: Moderate Research Activity, private for-profit",add
label define label_dfrcgid 124 "Masters Colleges and Universities (larger programs), public/1 of 5",add
label define label_dfrcgid 125 "Masters Colleges and Universities (larger programs), public/2 of 5",add
label define label_dfrcgid 126 "Masters Colleges and Universities (larger programs), public/3 of 5",add
label define label_dfrcgid 127 "Masters Colleges and Universities (larger programs), public/4 of 5",add
label define label_dfrcgid 128 "Masters Colleges and Universities (larger programs), public/5 of 5",add
label define label_dfrcgid 129 "Masters Colleges and Universities (larger programs), private not-for-profit/1 of 6",add
label define label_dfrcgid 130 "Masters Colleges and Universities (larger programs), private not-for-profit/2 of 6",add
label define label_dfrcgid 131 "Masters Colleges and Universities (larger programs), private not-for-profit/3 of 6",add
label define label_dfrcgid 132 "Masters Colleges and Universities (larger programs), private not-for-profit/4 of 6",add
label define label_dfrcgid 133 "Masters Colleges and Universities (larger programs), private not-for-profit/5 of 6",add
label define label_dfrcgid 134 "Masters Colleges and Universities (larger programs), private not-for-profit/6 of 6",add
label define label_dfrcgid 135 "Masters Colleges and Universities (larger programs), private for-profit",add
label define label_dfrcgid 136 "Masters Colleges and Universities (medium programs), public/1 of 2",add
label define label_dfrcgid 137 "Masters Colleges and Universities (medium programs), public/2 of 2",add
label define label_dfrcgid 138 "Masters Colleges and Universities (medium programs), private not-for-profit/1 of 4",add
label define label_dfrcgid 139 "Masters Colleges and Universities (medium programs), private not-for-profit/2 of 4",add
label define label_dfrcgid 140 "Masters Colleges and Universities (medium programs), private not-for-profit/3 of 4",add
label define label_dfrcgid 141 "Masters Colleges and Universities (medium programs), private not-for-profit/4 of 4",add
label define label_dfrcgid 142 "Masters Colleges and Universities (medium programs), private for-profit",add
label define label_dfrcgid 143 "Masters Colleges and Universities (smaller programs), public",add
label define label_dfrcgid 144 "Masters Colleges and Universities (smaller programs), private not-for-profit/1 of 2",add
label define label_dfrcgid 145 "Masters Colleges and Universities (smaller programs), private not-for-profit/2 of 2",add
label define label_dfrcgid 146 "Masters Colleges and Universities (smaller programs), private for-profit",add
label define label_dfrcgid 147 "Baccalaureate Colleges--Arts & Sciences, public",add
label define label_dfrcgid 148 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/1 of 7",add
label define label_dfrcgid 149 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/2 of 7",add
label define label_dfrcgid 150 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/3 of 7",add
label define label_dfrcgid 151 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/4 of 7",add
label define label_dfrcgid 152 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/5 of 7",add
label define label_dfrcgid 153 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/6 of 7",add
label define label_dfrcgid 154 "Baccalaureate Colleges--Arts & Sciences, private not-for-profit/7 of 7",add
label define label_dfrcgid 155 "Baccalaureate Colleges--Diverse Fields, public/1 of 2",add
label define label_dfrcgid 156 "Baccalaureate Colleges--Diverse Fields, public/2 of 2",add
label define label_dfrcgid 157 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/1 of 6",add
label define label_dfrcgid 158 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/2 of 6",add
label define label_dfrcgid 159 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/3 of 6",add
label define label_dfrcgid 160 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/4 of 6",add
label define label_dfrcgid 161 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/5 of 6",add
label define label_dfrcgid 162 "Baccalaureate Colleges--Diverse Fields, private not-for-profit/6 of 6",add
label define label_dfrcgid 163 "Baccalaureate/Associates Colleges, public",add
label define label_dfrcgid 164 "Baccalaureate/Associates Colleges, private not-for-profit",add
label define label_dfrcgid 165 "Baccalaureate/Associates Colleges, private for-profit",add
label define label_dfrcgid 112 "Baccalaureate/Associate^s Colleges: Associate^s Dominant, private for-profit",add
label define label_dfrcgid 225 "Baccalaureate Colleges--Arts & Sciences or Diverse Fields, private for-profit",add
label define label_dfrcgid 166 "Theological seminaries/Bible colleges/faith-related institutions, highest level bachelor^s degree/1 of 2",add
label define label_dfrcgid 167 "Theological seminaries/Bible colleges/faith-related institutions, highest level bachelor^s degree/2 of 2",add
label define label_dfrcgid 168 "Theological seminaries/Bible colleges/faith-related institutions, highest level postbaccalaureate, undergraduate degrees/certificates offered/1 of 2",add
label define label_dfrcgid 169 "Theological seminaries/Bible colleges/faith-related institutions, highest level postbaccalaureate, undergraduate degrees/certificates offered/2 of 2",add
label define label_dfrcgid 170 "Theological seminaries/Bible colleges/faith-related institutions, highest level postbaccalaureate, undergraduate degrees/certificates not offered",add
label define label_dfrcgid 171 "Theological seminaries/Bible colleges/faith-related institutions, highest level PhD., undergraduate degrees/certificates offered",add
label define label_dfrcgid 172 "Theological seminaries/Bible colleges/faith-related institutions, highest level PhD., undergraduate degrees/certificates not offered/1 of 3",add
label define label_dfrcgid 173 "Theological seminaries/Bible colleges/faith-related institutions, highest level PhD., undergraduate degrees/certificates not offered/2 of 3",add
label define label_dfrcgid 174 "Theological seminaries/Bible colleges/faith-related institutions, highest level PhD., undergraduate degrees/certificates not offered/3 of 3",add
label define label_dfrcgid 176 "Medical schools and medical centers, public",add
label define label_dfrcgid 177 "Medical schools and medical centers, private not-for-profit",add
label define label_dfrcgid 179 "Other health professions schools, private for-profit/1 of 2",add
label define label_dfrcgid 180 "Other health professions schools, private for-profit/2 of 2",add
label define label_dfrcgid 182 "Other health professions schools, public or private not-for-profit/1 of 3",add
label define label_dfrcgid 183 "Other health professions schools, public or private not-for-profit/2 of 3",add
label define label_dfrcgid 184 "Other health professions schools, public or private not-for-profit/3 of 3",add
label define label_dfrcgid 185 "Schools of engineering",add
label define label_dfrcgid 187 "Other technology-related schools",add
label define label_dfrcgid 189 "Schools of business and management, private for-profit",add
label define label_dfrcgid 190 "Schools of business and management, public or private not-for-profit",add
label define label_dfrcgid 192 "Schools of art, music, and design, private for-profit/1 of 2",add
label define label_dfrcgid 193 "Schools of art, music, and design, private for-profit/2 of 2",add
label define label_dfrcgid 194 "Schools of art, music, and design, public or private not-for-profit/1 of 2",add
label define label_dfrcgid 195 "Schools of art, music, and design, public or private not-for-profit/2 of 2",add
label define label_dfrcgid 196 "Schools of law",add
label define label_dfrcgid 198 "Other special-focus institutions",add
label define label_dfrcgid 226 "Degree-granting private-for-profit, no Carnegie classification, highest degree - Master^s",add
label define label_dfrcgid 227 "Degree-granting private, for-profit, no Carnegie classification,highest degree - Bachelor^s",add
label define label_dfrcgid 228 "Degree-granting private, not-for-profit, 4 year, degree with no Carnegie classification",add
label define label_dfrcgid 199 "Tribal Colleges",add
label define label_dfrcgid 233 "U.S. Military Academies",add
label define label_dfrcgid 175 "Degree-granting four-year primarily associate^s, Theological seminaries, Bible colleges/faith-related institutions",add
label define label_dfrcgid 178 "Degree-granting four-year primarily associate^s, other health professions schools, private for-profit",add
label define label_dfrcgid 181 "Degree-granting four-year primarily associate^s, other health professions schools public or private not-for-profit",add
label define label_dfrcgid 186 "Degree-granting four-year primarily associate^s, other technology-related schools",add
label define label_dfrcgid 188 "Degree-granting four-year primarily associate^s, Schools of business and management, private for-profit",add
label define label_dfrcgid 191 "Degree-granting four-year primarily associate^s, Schools of art, music, and design, private for-profit",add
label define label_dfrcgid 197 "Degree-granting four-year primarily associate^s, other special-focus institutions",add
label define label_dfrcgid 214 "Degree-granting four-year primarily associate^s, Associate^s Dominant, public/1 of 3",add
label define label_dfrcgid 215 "Degree-granting four-year primarily associate^s, Associate^s Dominant, public/2 of 3",add
label define label_dfrcgid 216 "Degree-granting four-year primarily associate^s, Associate^s Dominant, public/3 of 3",add
label define label_dfrcgid 217 "Degree-granting four-year primarily associate^s, Associate^s Dominant, private not-for-profit",add
label define label_dfrcgid 218 "Degree-granting four-year primarily associate^s, Associate^s Dominant, private for-profit",add
label define label_dfrcgid 219 "Degree-granting four-year primarily associate^s, Mixed Baccalaureate/Associate^s, public",add
label define label_dfrcgid 220 "Degree-granting four-year primarily associate^s, Mixed Baccalaureate/Associate^s, private not-for-profit",add
label define label_dfrcgid 221 "Degree-granting four-year primarily associate^s, Mixed Baccalaureate/Associate^s, private for-profit/1 of 3",add
label define label_dfrcgid 222 "Degree-granting four-year primarily associate^s, Mixed Baccalaureate/Associate^s, private for-profit/2 of 3",add
label define label_dfrcgid 223 "Degree-granting four-year primarily associate^s, Mixed Baccalaureate/Associate^s, private for-profit/3 of 3",add
label define label_dfrcgid 224 "Degree-granting four year primarily associate^s, with no Carnegie classifcation, private for-profit",add
label define label_dfrcgid 75 "Associate^s Colleges: High Transfer-High Traditional, public/1 of 5",add
label define label_dfrcgid 76 "Associate^s Colleges: High Transfer-High Traditional, public/2 of 5",add
label define label_dfrcgid 77 "Associate^s Colleges: High Transfer-High Traditional, public/3 of 5",add
label define label_dfrcgid 78 "Associate^s Colleges: High Transfer-High Traditional, public/4 of 5",add
label define label_dfrcgid 79 "Associate^s Colleges: High Transfer-High Traditional, public/5 of 5",add
label define label_dfrcgid 80 "Associate^s Colleges: High Transfer-High Traditional, private not-for-profit",add
label define label_dfrcgid 81 "Associate^s Colleges: High Transfer-Mixed Traditional/Nontraditional, public/1 of 4",add
label define label_dfrcgid 82 "Associate^s Colleges: High Transfer-Mixed Traditional/Nontraditional, public/2 of 4",add
label define label_dfrcgid 83 "Associate^s Colleges: High Transfer-Mixed Traditional/Nontraditional, public/3 of 4",add
label define label_dfrcgid 84 "Associate^s Colleges: High Transfer-Mixed Traditional/Nontraditional, public/4 of 4",add
label define label_dfrcgid 85 "Associate^s Colleges: High Transfer-High Nontraditional, public/1 of 2",add
label define label_dfrcgid 86 "Associate^s Colleges: High Transfer-High Nontraditional, public/2 of 2",add
label define label_dfrcgid 87 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Traditional, public/1 of 3",add
label define label_dfrcgid 88 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Traditional, public/2 of 3",add
label define label_dfrcgid 89 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Traditional, public/3 of 3",add
label define label_dfrcgid 90 "Associate^s Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional, public/1 of 3",add
label define label_dfrcgid 91 "Associate^s Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional, public/2 of 3",add
label define label_dfrcgid 92 "Associate^s Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional, public/3 of 3",add
label define label_dfrcgid 93 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Nontraditional, public/1 of 4",add
label define label_dfrcgid 94 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Nontraditional, public/2 of 4",add
label define label_dfrcgid 95 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Nontraditional, public/3 of 4",add
label define label_dfrcgid 96 "Associate^s Colleges: Mixed Transfer/Career & Technical-High Nontraditional, public/4 of 4",add
label define label_dfrcgid 97 "Associate^s Colleges: High Career & Technical-High Traditional, public/1 of 2",add
label define label_dfrcgid 98 "Associate^s Colleges: High Career & Technical-High Traditional, public/2 of 2",add
label define label_dfrcgid 99 "Associate^s Colleges: High Career & Technical-High Traditional, private for-profit",add
label define label_dfrcgid 100 "Associate^s Colleges: High Career & Technical-Mixed Traditional/Nontraditional, public/1 of 2",add
label define label_dfrcgid 101 "Associate^s Colleges: High Career & Technical-Mixed Traditional/Nontraditional, public/2 of 2",add
label define label_dfrcgid 102 "Associate^s Colleges: High Career & Technical-Mixed Traditional/Nontraditional, private for-profit",add
label define label_dfrcgid 103 "Associate^s Colleges: High Career & Technical-High Nontraditional, public/1 of 3",add
label define label_dfrcgid 104 "Associate^s Colleges: High Career & Technical-High Nontraditional, public/2 of 3",add
label define label_dfrcgid 105 "Associate^s Colleges: High Career & Technical-High Nontraditional, public/3 of 3",add
label define label_dfrcgid 106 "Associate^s Colleges: High Career & Technical-High Nontraditional, private not-for-profit",add
label define label_dfrcgid 107 "Associate^s Colleges: High Career & Technical-High Nontraditional, private for-profit/1 of 2",add
label define label_dfrcgid 108 "Associate^s Colleges: High Career & Technical-High Nontraditional, private for-profit/2 of 2",add
label define label_dfrcgid 109 "Associate colleges: High/mixed transfer, private not-for-profit",add
label define label_dfrcgid 110 "Associate colleges: High/mixed transfer, private for-profit",add
label define label_dfrcgid 111 "Associate colleges: Career & Technical, private not-for-profit",add
label define label_dfrcgid 200 "Special Focus Two Year: Any, public",add
label define label_dfrcgid 201 "Special Focus Two Year: Health, private not-for-profit",add
label define label_dfrcgid 202 "Special Focus Two Year: Health, private for-profit/1 of 6",add
label define label_dfrcgid 203 "Special Focus Two Year: Health, private for-profit/2 of 6",add
label define label_dfrcgid 204 "Special Focus Two Year: Health, private for-profit/3 of 6",add
label define label_dfrcgid 205 "Special Focus Two Year: Health, private for-profit/4 of 6",add
label define label_dfrcgid 206 "Special Focus Two Year: Health, private for-profit/5 of 6",add
label define label_dfrcgid 207 "Special Focus Two Year: Health, private for-profit/6 of 6",add
label define label_dfrcgid 208 "Special Focus Two Year: Technical, private not-for-profit",add
label define label_dfrcgid 209 "Special Focus Two Year: Technical, private for-profit",add
label define label_dfrcgid 210 "Special Focus Two Year: Art & Design, private not-for-profit",add
label define label_dfrcgid 211 "Special Focus Two Year: Art & Design, private for-profit",add
label define label_dfrcgid 212 "Special Focus Two Year: Other, private not-for-profit",add
label define label_dfrcgid 213 "Special Focus Two Year: Other, private for-profit",add
label define label_dfrcgid 238 "Other Associate^s Colleges, public",add
label define label_dfrcgid 239 "Other Associate^s Colleges, private not-for-profit",add
label define label_dfrcgid 240 "Other Associate^s Colleges, private for-profit/1 of 4",add
label define label_dfrcgid 241 "Other Associate^s Colleges, private for-profit/2 of 4",add
label define label_dfrcgid 242 "Other Associate^s Colleges, private for-profit/3 of 4",add
label define label_dfrcgid 243 "Other Associate^s Colleges, private for-profit/4 of 4",add
label define label_dfrcgid 1 "Nondegree-granting, public, academic year reporter",add
label define label_dfrcgid 2 "Nondegree-granting, public, program reporter, largest program - business",add
label define label_dfrcgid 3 "Nondegree-granting, public, program reporter, largest program - cosmetology",add
label define label_dfrcgid 4 "Nondegree-granting, public, program reporter, largest program - health/1 of 7",add
label define label_dfrcgid 5 "Nondegree-granting, public, program reporter, largest program - health/2 of 7",add
label define label_dfrcgid 6 "Nondegree-granting, public, program reporter, largest program - health/3 of 7",add
label define label_dfrcgid 7 "Nondegree-granting, public, program reporter, largest program - health/4 of 7",add
label define label_dfrcgid 8 "Nondegree-granting, public, program reporter, largest program - health/5 of 7",add
label define label_dfrcgid 9 "Nondegree-granting, public, program reporter, largest program - health/6 of 7",add
label define label_dfrcgid 10 "Nondegree-granting, public, program reporter, largest program - health/7 of 7",add
label define label_dfrcgid 11 "Nondegree-granting, public, program reporter, largest program - other/1 of 2",add
label define label_dfrcgid 12 "Nondegree-granting, public, program reporter, largest program - other/2 of 2",add
label define label_dfrcgid 13 "Nondegree-granting, private not-for-profit, academic year reporter/1 of 2",add
label define label_dfrcgid 14 "Nondegree-granting, private not-for-profit, academic year reporter/2 of 2",add
label define label_dfrcgid 15 "Nondegree-granting, private not-for-profit, program reporter, largest program - health/1 of 2",add
label define label_dfrcgid 16 "Nondegree-granting, private not-for-profit, program reporter, largest program - health/2 of 2",add
label define label_dfrcgid 17 "Nondegree-granting, private not-for-profit, program reporter, largest program - other",add
label define label_dfrcgid 18 "Nondegree-granting, private for-profit, academic year reporter/1 of 2",add
label define label_dfrcgid 19 "Nondegree-granting, private for-profit, academic year reporter/2 of 2",add
label define label_dfrcgid 20 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/1 of 39",add
label define label_dfrcgid 21 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/2 of 39",add
label define label_dfrcgid 22 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/3 of 39",add
label define label_dfrcgid 23 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/4 of 39",add
label define label_dfrcgid 24 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/5 of 39",add
label define label_dfrcgid 25 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/6 of 39",add
label define label_dfrcgid 26 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/7 of 39",add
label define label_dfrcgid 27 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/8 of 39",add
label define label_dfrcgid 28 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/9 of 39",add
label define label_dfrcgid 29 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/10 of 39",add
label define label_dfrcgid 30 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/11 of 39",add
label define label_dfrcgid 31 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/12 of 39",add
label define label_dfrcgid 32 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/13 of 39",add
label define label_dfrcgid 33 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/14 of 39",add
label define label_dfrcgid 34 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/15 of 39",add
label define label_dfrcgid 35 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/16 of 39",add
label define label_dfrcgid 36 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/17 of 39",add
label define label_dfrcgid 37 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/18 of 39",add
label define label_dfrcgid 38 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/19 of 39",add
label define label_dfrcgid 39 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/20 of 39",add
label define label_dfrcgid 40 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/21 of 39",add
label define label_dfrcgid 41 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/22 of 39",add
label define label_dfrcgid 42 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/23 of 39",add
label define label_dfrcgid 43 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/24 of 39",add
label define label_dfrcgid 44 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/25 of 39",add
label define label_dfrcgid 45 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/26 of 39",add
label define label_dfrcgid 46 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/27 of 39",add
label define label_dfrcgid 47 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/28 of 39",add
label define label_dfrcgid 48 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/29 of 39",add
label define label_dfrcgid 49 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/30 of 39",add
label define label_dfrcgid 50 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/31 of 39",add
label define label_dfrcgid 51 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/32 of 39",add
label define label_dfrcgid 52 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/33 of 39",add
label define label_dfrcgid 53 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/34 of 39",add
label define label_dfrcgid 54 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/35 of 39",add
label define label_dfrcgid 55 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/36 of 39",add
label define label_dfrcgid 56 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/37 of 39",add
label define label_dfrcgid 57 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/38 of 39",add
label define label_dfrcgid 58 "Nondegree-granting, private for-profit, program reporter, largest program - cosmetology/39 of 39",add
label define label_dfrcgid 59 "Nondegree-granting, private for-profit, program reporter, largest program - health/1 of 11",add
label define label_dfrcgid 60 "Nondegree-granting, private for-profit, program reporter, largest program - health/2 of 11",add
label define label_dfrcgid 61 "Nondegree-granting, private for-profit, program reporter, largest program - health/3 of 11",add
label define label_dfrcgid 62 "Nondegree-granting, private for-profit, program reporter, largest program - health/4 of 11",add
label define label_dfrcgid 63 "Nondegree-granting, private for-profit, program reporter, largest program - health/5 of 11",add
label define label_dfrcgid 64 "Nondegree-granting, private for-profit, program reporter, largest program - health/6 of 11",add
label define label_dfrcgid 65 "Nondegree-granting, private for-profit, program reporter, largest program - health/7 of 11",add
label define label_dfrcgid 66 "Nondegree-granting, private for-profit, program reporter, largest program - health/8 of 11",add
label define label_dfrcgid 67 "Nondegree-granting, private for-profit, program reporter, largest program - health/9 of 11",add
label define label_dfrcgid 68 "Nondegree-granting, private for-profit, program reporter, largest program - health/10 of 11",add
label define label_dfrcgid 69 "Nondegree-granting, private for-profit, program reporter, largest program - health/11 of 11",add
label define label_dfrcgid 70 "Nondegree-granting, private for-profit, program reporter, largest program - other/1 of 5",add
label define label_dfrcgid 71 "Nondegree-granting, private for-profit, program reporter, largest program - other/2 of 5",add
label define label_dfrcgid 72 "Nondegree-granting, private for-profit, program reporter, largest program - other/3 of 5",add
label define label_dfrcgid 73 "Nondegree-granting, private for-profit, program reporter, largest program - other/4 of 5",add
label define label_dfrcgid 74 "Nondegree-granting, private for-profit, program reporter, largest program - other/5 of 5",add
label define label_dfrcgid 236 "Private, not-for-profit, Distance Education",add
label define label_dfrcgid 237 "Private, for-profit, Distance Education",add
label define label_dfrcgid 234 "Degree-granting, 4-year institutions in jurisdictions other than Puerto Rico",add
label define label_dfrcgid 235 "Degree-granting, 2-year public institutions in jurisdictions other than Puerto Rico",add
label define label_dfrcgid 244 "Public, less than 4 year in Puerto Rico",add
label define label_dfrcgid 245 "Public, 4 year, degree-granting in Puerto Rico",add
label define label_dfrcgid 246 "Degree-granting, private not-for-profit in Puerto Rico/1 of 2",add
label define label_dfrcgid 247 "Degree-granting, private not-for-profit in Puerto Rico/2 of 2",add
label define label_dfrcgid 248 "Degree-granting, private for-profit in Puerto Rico",add
label define label_dfrcgid 249 "Nondegree-granting private not-for-profit and for-profit in Puerto Rico/1 of 2",add
label define label_dfrcgid 250 "Nondegree-granting private not-for-profit and for-profit in Puerto Rico/2 of 2",add
label define label_dfrcgid 229 "Non-Title IV, degree-granting",add
label define label_dfrcgid 230 "Non-Title IV, nondegree-granting, largest program -cosmetology",add
label define label_dfrcgid 231 "Non-Title IV, nondegree-granting, largest program - health",add
label define label_dfrcgid 232 "Non-Title IV, nondegree-granting",add
label define label_dfrcgid -1 "Non-Title IV institution, that did not respond to all component surveys",add
label define label_dfrcgid -2 "Not applicable - Institution is inactive or adminstrative unit",add
label values dfrcgid label_dfrcgid
label define label_dfrcuscg 1 "Yes, institution submitted a custom comparison group"
label define label_dfrcuscg 2 "No, institution did not submit a custom comparison group",add
label define label_dfrcuscg -1 "Not reported",add
label define label_dfrcuscg -2 "Not applicable",add
label values dfrcuscg label_dfrcuscg
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
tab stabbr
tab fips
tab obereg
tab opeflag
tab sector
tab iclevel
tab control
tab hloffer
tab ugoffer
tab groffer
tab hdegofr1
tab deggrant
tab hbcu
tab hospital
tab medical
tab tribal
tab locale
tab openpubl
tab act
tab deathyr
tab cyactive
tab postsec
tab pseflag
tab pset4flg
tab rptmth
tab instcat
tab c15basic
tab c15ipug
tab c15ipgrd
tab c15ugprf
tab c15enprf
tab c15szset
tab ccbasic
tab carnegie
tab landgrnt
tab instsize
tab f1systyp
tab f1syscod
tab cbsa
tab cbsatype
tab csa
tab necta
tab countycd
tab cngdstcd
tab dfrcgid
tab dfrcuscg
summarize ein
summarize duns
summarize opeid
summarize newid
summarize longitud
summarize latitude

gen year=2016
sort unitid
save "$PATH\Academic Calendar\Data\directory2016.dta", replace

