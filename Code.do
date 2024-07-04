set maxvar 50000
cd "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets"
*__________________________________________________________________________________________________________________________________________________________________________________________________*
*#Combining#*

*#Women#*

*#Gabon#*
*#PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Gabon DHS 2019-21\GAPR71DT\GAPR71FL.DTA", clear
keep if ha0<.
rename ha0 w_line
rename hv001 cluster_line
rename hv002 hh_line
order w_line cluster_line hh_line

save "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Gabon_PR_Women_Cleaned.dta", replace

*#IR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Gabon DHS 2019-21\GAIR71DT\GAIR71FL.DTA", clear

rename v003 w_line
rename v001 cluster_line
rename v002 hh_line

order w_line cluster_line hh_line

*#Merge#*
merge 1:1 w_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Gabon_PR_Women_Cleaned.dta"
keep if _merge==3
drop _merge
save "Gabon Women's Combined Set", replace


*#Lesotho#*
*#PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Lesotho DHS 2014\LSPR71DT\LSPR71FL.DTA", clear
keep if ha0<.
rename ha0 w_line
rename hv001 cluster_line
rename hv002 hh_line
order w_line cluster_line hh_line

save "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Lesotho_PR_Women_Cleaned.dta", replace

*##IR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Lesotho DHS 2014\LSIR71DT\LSIR71FL.DTA", clear

rename v003 w_line
rename v001 cluster_line
rename v002 hh_line

order w_line cluster_line hh_line

*#Merge#
merge 1:1 w_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Lesotho_PR_Women_Cleaned.dta"
keep if _merge==3
drop _merge
save "Lesotho Women's Combined Set", replace

*#Tanzania#*
*#PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Tanzania DHS 2022\TZPR82DT\TZPR82FL.DTA", clear
keep if ha0<.
rename ha0 w_line
rename hv001 cluster_line
rename hv002 hh_line
order w_line cluster_line hh_line
save "Tanzania_PR_Women_Cleaned.dta", replace

*##IR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Tanzania DHS 2022\TZIR82DT\TZIR82FL.DTA", clear

rename v003 w_line
rename v001 cluster_line
rename v002 hh_line

order w_line cluster_line hh_line

merge 1:1 w_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Tanzania_PR_Women_Cleaned.dta"
keep if _merge==3
drop _merge
save "Tanzania Women's Combined Set", replace



*#Men's sets#*

*#Gabon#*
*##PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Gabon DHS 2019-21\GAPR71DT\GAPR71FL.DTA", clear
rename hvidx m_line
rename hv001 cluster_line
rename hv002 hh_line
order m_line cluster_line hh_line
save "Gabon_PR_Men_Cleaned.dta", replace

*##MR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Gabon DHS 2019-21\GAMR71DT\GAMR71FL.DTA", clear
rename mv003 m_line
rename mv001 cluster_line
rename mv002 hh_line

order m_line cluster_line hh_line

merge 1:1 m_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Gabon_PR_Men_Cleaned.dta"


keep if _merge==3
drop _merge

save "Gabon Men's Combined Set", replace



*#Lesotho#*
*##PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Lesotho DHS 2014\LSPR71DT\LSPR71FL.DTA", clear
rename hvidx m_line
rename hv001 cluster_line
rename hv002 hh_line
order m_line cluster_line hh_line
save "Lesotho_PR_Men_Cleaned.dta", replace

*##MR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Lesotho DHS 2014\LSMR71DT\LSMR71FL.DTA", clear
rename mv003 m_line
rename mv001 cluster_line
rename mv002 hh_line

order m_line cluster_line hh_line

merge 1:1 m_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Lesotho_PR_Men_Cleaned.dta"


keep if _merge==3
drop _merge

save "Lesotho Men's Combined Set", replace


*#Tanzania#*
*##PR Clean##*
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Tanzania DHS 2022\TZPR82DT\TZPR82FL.DTA", clear
rename hvidx m_line
rename hv001 cluster_line
rename hv002 hh_line
order m_line cluster_line hh_line
save "Tanzania_PR_Men_Cleaned.dta", replace

##MR Clean##
use "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\Hypertension sets\Tanzania DHS 2022\TZMR82DT\TZMR82FL.DTA", clear
rename mv003 m_line
rename mv001 cluster_line
rename mv002 hh_line

order m_line cluster_line hh_line

merge 1:1 m_line cluster_line hh_line using "C:\Users\sjkir\OneDrive\Desktop\KU\Thesis Files\Data\New Cleaned sets\Tanzania_PR_Men_Cleaned.dta"


keep if _merge==3
drop _merge

save "Tanzania Men's Combined Set", replace



*#__________________________________________________________________________________________________________________________________________________________________________________________________#*
*#Cleaning#*
*###Women's sets###*

*#Gabon#*
use "Gabon Women's Combined Set", clear
keep caseid w_line cluster_line hh_line v024 v447a v106 hv108 v190 s1335a s1335b v438 v437 v025 v136 s1305 v005 v021 v023 s1107a v501 v714 v463a v130 

*renaming*
rename w_line line_no
rename v021 psu
rename v023 strata
rename v024 region
rename v447a age
rename v106 educ_cat
rename hv108 educ_cont
rename v190 wealth_index
rename s1335a sbp
rename s1335b dbp
rename v438 height
rename v437 weight
rename v025 residence
rename v136 hh_size_cont
rename s1305 hyper_med
rename s1107a alcohol
rename v501 marriage
rename v714 work
rename v463a smoke
rename v130 religion
drop if missing(height)
drop if missing(weight)
drop if missing(dbp)
drop if missing(sbp)
*Generating new Vars*
gen country = ""
replace country = "Gabon"

gen sex = ""
replace sex = "Female"

gen wgt = v005/1000000
drop if dbp >130
drop if sbp >212

gen hypertension = (sbp >= 140) | (dbp >= 90) |(hyper_med == 1) 

gen n_height = height/1000
gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)
drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Libreville" 2 "Port Gentil" 3 "Estuaire" 4 "Haut-Ogooue" 5 "Moyen-Ogooue" 6 "Ngounie" 7 "Nyanga" 8 "Ogooue-Ivindo" 9 "Ogooue-lolo" 10 "Ogooue-Maritime" 11 "Woeu-Ntem"
label values region region_label
decode region, gen(region_string)

gen alco = ""
replace alco = "Never" if alcohol == 4
replace alco = "Sometimes" if alcohol ==2 |alcohol ==3
replace alco = "Everyday" if alcohol == 1

gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

gen religious = ""
replace religious = "None" if religion == 7
replace religious = "Muslim" if religion == 5
replace religious = "Traditional" if religion == 6 | religion == 9
replace religious = "Christian" if religion == 1|religion == 2| religion == 3 |religion == 4

save "Gabon Women", replace

*_______________________________________________________________________________________________________*
*#Lesotho#*
use "Lesotho Women's Combined Set", clear

keep caseid w_line cluster_line hh_line v024 v447a v106 hv108 v190 sbpaves sbpaved v438 v437 v025 v136 v005 v021 v023 v501 v714 v463a v130 
*renaming*
rename w_line line_no
rename v021 psu
rename v023 strata
rename v024 region
rename v447a age
rename v106 educ_cat
rename hv108 educ_cont
rename v190 wealth_index
rename sbpaves sbp
rename sbpaved dbp
rename v438 height
rename v437 weight
rename v025 residence
rename v136 hh_size_cont

rename v501 marriage
rename v714 work
rename v463a smoke
rename v130 religion
drop if missing(height)
drop if missing(weight)
drop if missing(dbp)
drop if missing(sbp)
*Generating new Vars*


gen country = ""
replace country = "Lesotho"

gen sex = ""
replace sex = "Female"

gen wgt = v005/1000000
drop if dbp >130
drop if sbp >212

gen hypertension = (sbp >= 140) | (dbp >= 90)

gen n_height = height/1000

gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)
drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Botha-Bothe" 2 "Leribe" 3 "Berea" 4 "Maseru" 5 "Mafeteng" 6 "Mohale's Hoek" 7 "Quthing" 8 "Qacha's-Nek" 9 "Mokhotlong" 10 "Thaba Tseka"
label values region region_label
decode region, gen(region_string)

gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

gen religious = ""
replace religious = "None" if religion == 10
replace religious = "Muslim" if religion == 8
replace religious = "Traditional" if religion == 96 
replace religious = "Christian" if religion == 1|religion == 2| religion == 3 |religion == 4 | religion == 5 ///
					|religion == 6 |religion == 7
save "Lesotho Women", replace


*_______________________________________________________________________________________________________*
*#Tanzania#*
use "Tanzania Women's Combined Set", clear
keep caseid w_line cluster_line hh_line v024 v447a v106 hv108 v190 s1210s s1210d v438 v437 v025 v136 s1128 v005 v021 v023 v485a v501 v714 v463a v130 

*renaming*
rename w_line line_no
rename v021 psu
rename v023 strata
rename v024 region
rename v447a age
rename v106 educ_cat
rename hv108 educ_cont
rename v190 wealth_index
rename s1210s sbp
rename s1210d dbp
rename v438 height
rename v437 weight
rename v025 residence
rename v136 hh_size_cont
rename s1128 hyper_med
rename v485a alcohol
rename v501 marriage
rename v714 work
rename v463a smoke
rename v130 religion
drop if missing(height)
drop if missing(weight)
drop if missing(dbp)
drop if missing(sbp)
*Generating new Vars*

gen country = ""
replace country = "Tanzania"

gen sex = ""
replace sex = "Female"

gen wgt = v005/1000000
drop if dbp >130
drop if sbp >212

gen hypertension = (sbp >= 140) | (dbp >= 90) |(hyper_med == 1) 

gen n_height = height/1000

gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)
drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Dodoma" 2 "Arusha" 3 "Kilimanjaro" 4 "Tanga" 5 "Morogoro" 6 "Pwani" 7 "Dar es Salaam" 8 "Lindi" 9 "Mtwara" 10 "Ruvuma" 11 "Iringa" 12 "Mbeya" 13 "Singida" 14 "Tabora" 15 "Rukwa" 16 "Kigoma" 17 "Shinyanga" 18 "Kagera" 19 "Mwanza" 20 "Mara" 21 "Manyara" 22 "Njombe" 23 "Katavi" 24 "Simiyu" 25 "Geita" 26 "Songwe" 51 "Kaskazini Unguja" 52 "Kusini Unguja" 53 "Mjini Magharibi" 54 "Kaskazini Pemba" 55 "Kusini Pemba"
label values region region_label
decode region, gen(region_string)

gen alco = ""
replace alco = "Never" if alcohol == 96
replace alco = "Sometimes" if alcohol >= 0 & alcohol <=31
replace alco = "Everyday" if alcohol == 95

gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

save "Tanzania Women", replace
*#__________________________________________________________________________________________________________________________________________________________________________________________________#*
*#Men's sets#*

*#Gabon#*
use "Gabon Men's Combined Set", clear
keep mcaseid m_line cluster_line hh_line mv024 mv012 mv106 hv108 mv190 sm936a sm936b hb3 hb2 mv025 mv136 sm905 mv005 mv021 mv023 sm815aa mv501 mv714 mv463aa mv130 

*renaming*
rename mcaseid caseid
rename m_line line_no
rename mv021 psu
rename mv023 strata
rename mv024 region
rename mv012 age
rename mv106 educ_cat
rename hv108 educ_cont
rename mv190 wealth_index
rename sm936a sbp
rename sm936b dbp
rename hb3 height
rename hb2 weight
rename mv025 residence
rename mv136 hh_size_cont
rename sm905 hyper_med
rename sm815aa alcohol
rename mv501 marriage
rename mv714 work
rename mv463aa smokey
rename mv130 religion
drop if missing(dbp)
drop if missing(sbp)
drop if missing(height)
drop if missing(weight)
*Generating new Vars*

gen country = ""
replace country = "Gabon"

gen sex = ""
replace sex = "Male"

gen wgt = mv005/1000000

gen hypertension = (sbp >= 140) | (dbp >= 90)  |(hyper_med == 1) 

gen n_height = height/1000

gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)

drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Libreville" 2 "Port Gentil" 3 "Estuaire" 4 "Haut-Ogooue" 5 "Moyen-Ogooue" 6 "Ngounie" 7 "Nyanga" 8 "Ogooue-Ivindo" 9 "Ogooue-lolo" 10 "Ogooue-Maritime" 11 "Woeu-Ntem"
label values region region_label
decode region, gen(region_string)
gen alco = ""

replace alco = "Never" if alcohol == 4
replace alco = "Sometimes" if alcohol ==2 |alcohol ==3
replace alco = "Everyday" if alcohol == 1

gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

recode smokey (1/2 = 1 "yes") (0 = 0 "no"), gen (smoke)

gen religious = ""
replace religious = "None" if religion == 7
replace religious = "Muslim" if religion == 5
replace religious = "Traditional" if religion == 6 | religion == 9
replace religious = "Christian" if religion == 1|religion == 2| religion == 3 |religion == 4

save "Gabon Men", replace

*_______________________________________________________________________________________________________*
*#Lesotho#*
use "Lesotho Men's Combined Set", clear

keep mcaseid m_line cluster_line hh_line mv024 mv012 mv106 hv108 mv190 smbpaves smbpaved hb3 hb2 mv025 mv136 mv005 mv021 mv023 mv501 mv714 mv463a mv130 
*renaming*
rename mcaseid caseid
rename m_line line_no
rename mv021 psu
rename mv023 strata
rename mv024 region
rename mv012 age
rename mv106 educ_cat
rename hv108 educ_cont
rename mv190 wealth_index
rename smbpaves sbp
rename smbpaved dbp
rename hb3 height
rename hb2 weight
rename mv025 residence
rename mv136 hh_size_cont

rename mv501 marriage
rename mv714 work
rename mv463a smoke
rename mv130 religion
drop if missing(dbp)
drop if missing(sbp)
drop if missing(height)
drop if missing(weight)

*Generating new Vars*

gen country = ""
replace country = "Lesotho"

gen sex = ""
replace sex = "Male"

gen wgt = mv005/1000000
drop if dbp >130
drop if sbp >212

gen hypertension = (sbp >= 140) | (dbp >= 90)

gen n_height = height/1000

gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)
drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Botha-Bothe" 2 "Leribe" 3 "Berea" 4 "Maseru" 5 "Mafeteng" 6 "Mohale's Hoek" 7 "Quthing" 8 "Qacha's-Nek" 9 "Mokhotlong" 10 "Thaba Tseka"
label values region region_label
decode region, gen(region_string)

gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

gen religious = ""
replace religious = "None" if religion == 10
replace religious = "Muslim" if religion == 8
replace religious = "Traditional" if religion == 96 
replace religious = "Christian" if religion == 1|religion == 2| religion == 3 |religion == 4 | religion == 5 ///
					|religion == 6 |religion == 7

save "Lesotho Men", replace

*_______________________________________________________________________________________________________*
*#Tanzania#*

*#Tanzania#*
use "Tanzania Men's Combined Set", clear

keep mcaseid m_line cluster_line hh_line mv024 mv012 mv106 hv108 mv190 sm1010s sm1010d hb3 hb2 mv025 mv136 sm905 mv005 mv021 mv023 mv485a mv501 mv714 mv463aa mv130

*renaming*
rename mcaseid caseid
rename m_line line_no
rename mv021 psu
rename mv023 strata
rename mv024 region
rename mv012 age
rename mv106 educ_cat
rename hv108 educ_cont
rename mv190 wealth_index
rename sm1010s sbp
rename sm1010d dbp
rename hb3 height
rename hb2 weight
rename mv025 residence
rename mv136 hh_size_cont
rename sm905 hyper_med
rename mv485a alcohol
rename mv501 marriage
rename mv714 work
rename mv463aa smokey
rename mv130 religion
drop if missing(dbp)
drop if missing(sbp)
drop if missing(height)
drop if missing(weight)
*Generating new Vars*

gen country = ""
replace country = "Tanzania"

gen sex = ""
replace sex = "Male"
gen wgt = mv005/1000000
drop if dbp >140
drop if sbp >214

gen hypertension = (sbp >= 140) | (dbp >= 90) |(hyper_med == 1) 

gen n_height = height/1000

gen n_weight = weight/10
drop if n_height > 2 | missing(n_height)
drop if n_weight > 200 | missing(n_weight)

gen bmi = n_weight/(n_height^2)
label define region_label 1 "Dodoma" 2 "Arusha" 3 "Kilimanjaro" 4 "Tanga" 5 "Morogoro" 6 "Pwani" 7 "Dar es Salaam" 8 "Lindi" 9 "Mtwara" 10 "Ruvuma" 11 "Iringa" 12 "Mbeya" 13 "Singida" 14 "Tabora" 15 "Rukwa" 16 "Kigoma" 17 "Shinyanga" 18 "Kagera" 19 "Mwanza" 20 "Mara" 21 "Manyara" 22 "Njombe" 23 "Katavi" 24 "Simiyu" 25 "Geita" 26 "Songwe" 51 "Kaskazini Unguja" 52 "Kusini Unguja" 53 "Mjini Magharibi" 54 "Kaskazini Pemba" 55 "Kusini Pemba"
label values region region_label
decode region, gen(region_string)

gen alco = ""
replace alco = "Never" if alcohol == 96
replace alco = "Sometimes" if alcohol >= 0 & alcohol <=31
replace alco = "Everyday" if alcohol == 95


gen marry = ""
replace marry = "Never" if marriage == 0
replace marry = "Married" if marriage == 1| marriage == 2
replace marry = "Others" if marriage >= 3

recode smokey (1/2 = 1 "yes") (0 = 0 "no"), gen (smoke)
save "Tanzania Men", replace

*#Appending#*
*#Gabon#*
use "Gabon Women", clear
append using "Gabon Men"
save "Gabon Combined", replace

*# Lesotho#*
use "Lesotho Women", clear
append using "Lesotho Men"

save "Lesotho Combined", replace

*#Tanzania#*
use "Tanzania Women", clear
append using "Tanzania Men"
save "Tanzania Combined", replace

*#Combined#*
use "Gabon combined", clear
append using "Lesotho Combined"
append using "Tanzania Combined"
save "All combined", replace



*# Combined Cleaning#*
use "All combined", clear

sort country region_string

*#Regional Level Statistics#*

*Mean BMI#*

use "All combined", clear
sort country region_string
collapse (mean) mean_bmi = bmi, by(region_string)
save "mean_bmi",replace

*#Wealth Index#*
use "All combined", clear
sort country region_string
gen poor = (wealth_index <=2)
collapse (mean) pct_poor = poor, by(region_string)
save "pct_poor", replace

*#Obesity#*
use "All combined", clear
sort country region_string
gen obese = (bmi>30)
collapse (mean) pct_obese= obese, by (region_string)
save "pct_obese", replace

*#Secondary or higher education#*
use "All combined", clear
sort country region_string
gen educated = (educ_cat>1)
collapse (mean) pct_educ= educated, by (region_string)
save "pct_educ", replace

*#Merge#*
use "All combined", clear
merge m:1 region_string using mean_bmi
drop _merge
merge m:1 region_string using pct_poor
drop _merge
merge m:1 region_string using pct_obese
drop _merge
merge m:1 region_string using pct_educ
drop _merge


*#Age Categories#*
gen age_group = ""
replace age_group = "15-24" if age >= 15 & age < 25
replace age_group = "25-34" if age >= 25 & age < 35
replace age_group = "35-44" if age >= 35 & age < 45
replace age_group = "45-54" if age >= 45 & age < 55
replace age_group = "55+" if age >=55

encode age_group, gen(age_cat) label(age_group)

*#HH Size#*
gen HH_Size = ""
replace HH_Size = "1" if hh_size_cont == 1
replace HH_Size = "2-3" if hh_size_cont >= 2 & hh_size_cont < 4
replace HH_Size = "4-5" if hh_size_cont >= 4 & hh_size_cont < 6
replace HH_Size = "6-10" if hh_size_cont >= 6 & hh_size_cont < 11
replace HH_Size = "More than 10" if hh_size_cont >= 11
encode HH_Size, gen (HH_cat) label(HH_Size)

*#BMI#*
gen bmi_class = ""
replace bmi_class = "Underweight" if bmi < 18.5
replace bmi_class = "Normal weight" if bmi >= 18.5 & bmi < 25
replace bmi_class = "Overweight" if bmi >= 25 & bmi < 30
replace bmi_class = "Obese" if bmi >= 30
encode bmi_class, gen (bmi_cat) label (bmi_class)

*#BINARY BMI#*
gen bmi_bin = ""
replace bmi_bin = "normal or under" if bmi <25
replace bmi_bin = "over and obese" if bmi >= 25

encode bmi_bin, gen (binary_bmi) label (bmi_bin)


encode alco, gen (alco_cat) label (alco)
encode marry, gen (marry_cat) label (marry)
encode religious, gen (religious_cat) label (religious)
save "All Combined", replace


*#Country Level Statistics#*

*Mean BMI#*

use "All combined", clear
sort country region_string
collapse (mean) cmean_bmi = bmi, by(country)
save "cmean_bmi",replace

*#Wealth Index#*
use "All combined", clear
sort country region_string
gen poor = (wealth_index <=2)
collapse (mean) cpct_poor = poor, by(country)
save "cpct_poor", replace

*#Obesity#*
use "All combined", clear
sort country region_string
gen obese = (bmi>30)
collapse (mean) cpct_obese= obese, by (country)
save "cpct_obese", replace

*#Secondary or higher education#*
use "All combined", clear
sort country region_string
gen educated = (educ_cat>1)
collapse (mean) cpct_educ= educated, by (country)
save "cpct_educ", replace

*#Merge#*
use "All combined", clear
merge m:1 country using cmean_bmi
drop _merge
merge m:1 country using cpct_poor
drop _merge
merge m:1 country using cpct_obese
drop _merge
merge m:1 country using cpct_educ
drop _merge

encode sex, gen(sex_cat)
encode country, gen(country_cat)
encode region_string, gen(region_cat)
save "All Combined", replace

use "mean_bmi", clear
merge m:1 region_string using pct_poor
drop _merge
merge m:1 region_string using pct_obese
drop _merge
merge m:1 region_string using pct_educ
drop _merge



*Further Analysis*
use "All combined", clear

svyset [pw = wgt], psu(psu) strata(strata)

egen cluster_id = concat(country cluster_line), punct("_")

levelsof country, local(countries)

foreach c in `countries' {
    preserve
    keep if country == "`c'"
    save country_`c'.dta, replace
    restore
}


*Country by Country Analysis*
use country_Gabon, replace
svyset [pw = wgt], psu(psu) strata(strata)

svy: tabulate sex_cat,cell count
svy: tab sex_cat hypertension,cell count row


svy: logistic hypertension ib1.alco_cat , or



svy: logistic hypertension i.sex_cat i.age_cat i.educ_cat i.bmi_cat ib2.HH_cat i.wealth_index i.residence ib2.marry_cat i.work ib2.alco_cat  i.smoke , or









levelsof country, local(countries)
foreach c in `countries' {
    kdensity bmi if country == "`c'", name(density_`c') title("BMI Density - Country `c'")
    graph export "density_`c'.png", as(png) replace
}

kdensity bmi if country == "Gabon", name(density1) lcolor(red)
kdensity bmi if country == "Lesotho", name(density2) lcolor(blue) add
kdensity bmi if country == "Tanzania", name(density3) lcolor(green) add
graph export "combined_density.png", as(png) replace





use "All combined", clear
* Inspect your data
describe
summarize

* Define a list of colors (adjust as needed)
local colors "red blue green black purple orange brown yellow"
local plot_list
local color_index = 1

* Get the list of unique countries
levelsof country, local(countries)

foreach c of local countries {
    local color : word `color_index' of `colors'
    if `color_index' == 1 {
        local plot_list kdensity bmi if country == "`c'", lcolor(`color') lpattern(solid) legend(label("`c'"))
    } else {
        local plot_list `plot_list' || kdensity bmi if country == "`c'", lcolor(`color') lpattern(solid) legend(label("`c'"))
    }
    local color_index = `color_index' + 1
}

* Create the combined density plot using twoway
twoway `plot_list'

* Save the combined density plot
graph export "combined_density.png", as(png) replace