-- Final Project
-- PGBS 698
-- Team Member: Yijin Fu, Liuyi Jiang, Helma Zecena

USE OE
go

-- Normalized the data

-- Alldata

SELECT COUNT (*)        -- Count number of rows of the table
from dbo.oeAlldata
-- 5680603 rows
select TOP(10) *		-- Select Top 10 rows of the table
from dbo.oeAlldata
/*
series_id                     	year	period	   value	footnote_codes
OEUM001018000000000000001     	2020	A01	       66060	
OEUM001018000000000000002     	2020	A01	         1.9	
OEUM001018000000000000003     	2020	A01	       20.64	
OEUM001018000000000000004     	2020	A01	       42930	
OEUM001018000000000000005     	2020	A01	         1.8	
OEUM001018000000000000006     	2020	A01	        9.13	
OEUM001018000000000000007     	2020	A01	       11.40	
OEUM001018000000000000008     	2020	A01	       16.41	
OEUM001018000000000000009     	2020	A01	       24.82	
OEUM001018000000000000010     	2020	A01	       36.23	
*/ go

-- Area

SELECT COUNT (*)
from dbo.oeArea
-- 585 rows
select TOP(10) *
from dbo.oeArea
/*
state_code	area_code	areatype_code	area_name
00			0000000			N			National
01			0011500			M			Anniston-Oxford-Jacksonville, AL
01			0012220			M			Auburn-Opelika, AL
01			0013820			M			Birmingham-Hoover, AL
01			0019300			M			Daphne-Fairhope-Foley, AL
01			0019460			M			Decatur, AL
01			0020020			M			Dothan, AL
01			0022520			M			Florence-Muscle Shoals, AL
01			0023460			M			Gadsden, AL
01			0026620			M			Huntsville, AL
*/ go

-- Areatype

SELECT COUNT (*)
from dbo.oeAreatype
-- 3 rows
select TOP(10) *
from dbo.oeAreatype
/*
areatype_code	areatype_name
M				Metropolitan or nonmetropolitan area
N				National
S				State
*/ go

-- Contacts

SELECT COUNT (*)
from dbo.oeContacts
-- 61 rows
select TOP(10) *
from dbo.oeContacts
/*
Occupational Employment and Wage Statistics Contacts

For additional information concerning the Occupational Employment and Wage Statistics (OEWS) Survey,
contact an OEWS staff member at: 

      Email address: oesinfo@bls.gov
      Telephone number: 202-691-6569
      Fax number: 202-691-6444
      Mail address: Office of Employment and Unemployment Statistics, Occupational Employment 
and Wage Statistics, Suite 2135, 2 Massachusetts Avenue, NE, Washington DC 20212-0001
*/ go

-- Current

SELECT COUNT (*)
from dbo.oeCurrent
-- 5680603 rows
select TOP(10) *
from dbo.oeCurrent
/*
series_id                     	year	period	       value	footnote_codes
OEUM001018000000000000001     	2020	A01				66060	
OEUM001018000000000000002     	2020	A01				1.9	
OEUM001018000000000000003     	2020	A01				20.64	
OEUM001018000000000000004     	2020	A01				42930	
OEUM001018000000000000005     	2020	A01				 1.8	
OEUM001018000000000000006     	2020	A01				 9.13	
OEUM001018000000000000007     	2020	A01				11.40	
OEUM001018000000000000008     	2020	A01				16.41	
OEUM001018000000000000009     	2020	A01				24.82	
OEUM001018000000000000010     	2020	A01				36.23	
*/ go

-- Datatype

SELECT COUNT (*)
from dbo.oeDatatype
-- 17 rows
select TOP(10) *
from dbo.oeDatatype
/*
datatype_code	datatype_name
01				Employment
02				Employment percent relative standard error
03				Hourly mean wage
04				Annual mean wage
05				Wage percent relative standard error
06				Hourly 10th percentile wage
07				Hourly 25th percentile wage
08				Hourly median wage
09				Hourly 75th percentile wage
10				Hourly 90th percentile wage
*/ go

-- Footnote

SELECT COUNT (*)
from dbo.oeFootnote
-- 6 rows
select TOP(10) *
from dbo.oeFootnote
/*
footnote_code	footnote_text
1				Estimates for detailed occupations do not sum to the totals because the totals include occupations not shown separately. Estimates do not include self-employed workers.
2				Annual wages have been calculated by multiplying the corresponding hourly wage by 2,080 hours.
3				The relative standard error (RSE) is a measure of the reliability of a survey statistic. The smaller the relative standard error, the more precise the estimate.
4				Wages for some occupations that do not generally work year-round, full time, are reported either as hourly wages or annual salaries depending on how they are typically paid.
5				This wage is equal to or greater than $100.00 per hour or $208,000 per year.
8				Estimate not released.
*/ go

-- Industry

SELECT COUNT (*)
from dbo.oeIndustry
-- 450 rows
select TOP(10) *
from dbo.oeIndustry
/*
industry_code	industry_name													display_level	selectable	sort_sequence
000000			Cross-industry, Private, Federal, State, and Local Government	0				T			0
000001			Cross-industry, Private Ownership Only							1				T			1
11--12			Sector 11 - Agriculture, Forestry, Fishing and Hunting			2				T			2
113000			Forestry and Logging											3				T			3
113300			Logging															4				T			4
115000			Support Activities for Agriculture and Forestry					3				T			5
115100			Support Activities for Crop Production							4				T			6
115200			Support Activities for Animal Production						4				T			7
21--22			Sector 21 - Mining												2				T			8
211000			Oil and Gas Extraction											3				T			9
*/ go

-- Occupation

SELECT COUNT (*)
from dbo.oeOccupation
-- 1040 rows
select TOP(10) *
from dbo.oeOccupation
/*
occupation_code	occupation_name																display_level	selectable	sort_sequence
000000			All Occupations																0				T			0
110000			Management Occupations														0				T			1
111000			Top Executives																1				T			2
111011			Chief Executives															3				T			3
111021			General and Operations Managers												3				T			4
111031			Legislators																	3				T			5
112000			Advertising, Marketing, Promotions, Public Relations, and Sales Managers	1				T			6
112011			Advertising and Promotions Managers											3				T			7
112020			Marketing and Sales Managers												2				T			8
112021			Marketing Managers															3				T			9
*/ go

-- Release

SELECT COUNT (*)
from dbo.oeRelease
-- 1 rows
select TOP(10) *
from dbo.oeRelease
/*
release_date	description
2020A01			May 2020
*/ go

-- Seasonal

SELECT COUNT (*)
from dbo.oeSeasonal
-- 2 rows
select TOP(10) *
from dbo.oeSeasonal
/*
seasonal_code	seasonal_text
S				Seasonally Adjusted
U				Not Seasonally Adjusted
*/ go

-- Sector

SELECT COUNT (*)
from dbo.oeSector
-- 21 rows
select TOP(10) *
from dbo.oeSector
/*
sector_code	sector_name
00--01		Sector 00 - Cross-industry, Private, Federal, State, and Local Government
11--12		Sector 11 - Agriculture, Forestry, Fishing and Hunting
21--22		Sector 21 - Mining
22--23		Sector 22 - Utilities
23--24		Sector 23 - Construction
31--34		Sectors 31, 32, and 33 - Manufacturing
42--43		Sector 42 - Wholesale Trade
44--46		Sectors 44 and 45 - Retail Trade
48--50		Sectors 48 and 49 - Transportation and Warehousing
51--52		Sector 51 - Information
*/ go

-- Series

SELECT COUNT (*)
from dbo.oeSeries
-- 5680603 rows
select TOP(10) *
from dbo.oeSeries
/*
series_id                     	seasonal	areatype_code	industry_code	occupation_code	datatype_code	state_code	area_code	sector_code	series_title	footnote_codes	begin_year	begin_period	end_year	end_period
OEUM007960000000031112015     	U	M	000000	311120	15	25	0079600	00--01	Annual 90th percentile wage for Home Health and Personal Care Aides in All Industries in Worcester, MA-CT	2	2020	A01	2020	A01
OEUM007960000000031112016     	U	M	000000	311120	16	25	0079600	00--01	Employment per 1,000 jobs for Home Health and Personal Care Aides in All Industries in Worcester, MA-CT		2020	A01	2020	A01
OEUM007960000000031112017     	U	M	000000	311120	17	25	0079600	00--01	Location Quotient for Home Health and Personal Care Aides in All Industries in Worcester, MA-CT		2020	A01	2020	A01
OEUM007960000000031113101     	U	M	000000	311131	01	25	0079600	00--01	Employment for Nursing Assistants in All Industries in Worcester, MA-CT	1	2020	A01	2020	A01
OEUM007960000000031113102     	U	M	000000	311131	02	25	0079600	00--01	Employment percent relative standard error for Nursing Assistants in All Industries in Worcester, MA-CT	3	2020	A01	2020	A01
OEUM007960000000031113103     	U	M	000000	311131	03	25	0079600	00--01	Hourly mean wage for Nursing Assistants in All Industries in Worcester, MA-CT		2020	A01	2020	A01
OEUM007960000000031113104     	U	M	000000	311131	04	25	0079600	00--01	Annual mean wage for Nursing Assistants in All Industries in Worcester, MA-CT	2	2020	A01	2020	A01
OEUM007960000000031113105     	U	M	000000	311131	05	25	0079600	00--01	Wage percent relative standard error for Nursing Assistants in All Industries in Worcester, MA-CT	3	2020	A01	2020	A01
OEUM007960000000031113106     	U	M	000000	311131	06	25	0079600	00--01	Hourly 10th percentile wage for Nursing Assistants in All Industries in Worcester, MA-CT		2020	A01	2020	A01
OEUM007960000000031113107     	U	M	000000	311131	07	25	0079600	00--01	Hourly 25th percentile wage for Nursing Assistants in All Industries in Worcester, MA-CT		2020	A01	2020	A01
*/ go

-- Create Schema

create schema wrk
go

-- Insert Data

-- 1. Alldata

update dbo.oeAlldata			--- Delete the blank prior or behind the value
set value=rtrim(ltrim(value))
go
---(5680603 rows affected)

update dbo.oeAlldata			--- Convert dash sign to the null value, otherwise SQL cannot convert the data type of value from varchar to float.
set value=case when value='-' then null 
				else value 
		  end
go
---(5680603 rows affected)

select TOP(10) * from dbo.oeAlldata
select TOP(10) * from wrk.oeAlldata

drop table wrk.oeAlldata				-- Drop the table
create table wrk.oeAlldata (			-- Create a new table
	series_id	varchar(50)
,	year		int
,	period		varchar(50)
,	value		float
,	footnote_codes	varchar(50)
)
go
insert into wrk.oeAlldata (				-- Insert variables into new table
	series_id	
,	year		
,	period		
,	value		
,	footnote_codes	
)(
	select								-- Select variables from original table
	series_id
,	year
,	period
,	value
,	footnote_codes
	from	dbo.oeAlldata
)
go

-- 2. Area

select TOP(10)* from wrk.oeArea
select TOP(10) * from dbo.oeArea
select * from dbo.oeArea
drop table wrk.oeArea
create table wrk.oeArea (
	state_code	varchar(10)
,	area_code	varchar(10)
,	areatype_code	varchar(2)
,	area_name	varchar(100)
)
go
insert into wrk.oeArea (
	state_code	
,	area_code	
,	areatype_code	
,	area_name	
)(
	select
	state_code	
,	area_code	
,	areatype_code	
,	area_name
	from	dbo.oeArea
)---(585 rows affected)
go

-- 3. Areatype

select TOP(10) * from dbo.oeAreatype
select TOP(10) * from wrk.oeAreatype

drop table wrk.oeAreatype
create table wrk.oeAreatype (
	areatype_code	varchar(2)
,	areatype_name	varchar(50)
)
go
insert into wrk.oeAreatype (
	areatype_code	
,	areatype_name	
)(
	select
	areatype_code	
,	areatype_name
	from	dbo.oeAreatype
)---(3 rows affected)
go


-- 4. Contacts

select TOP(10) * from dbo.oeContacts
select TOP(10) * from wrk.oeContacts


drop table wrk.oeContacts
create table wrk.oeContacts (
	[Occupational Employment and Wage Statistics Contacts]	varchar(500)
)
go
insert into wrk.oeContacts (
	[Occupational Employment and Wage Statistics Contacts]
)(
	select
	[Occupational Employment and Wage Statistics Contacts]
	from	dbo.oeContacts
)---(61 rows affected)
go

-- 5. Current

update dbo.oeCurrent
set value=rtrim(ltrim(value))
go
---(5680603 rows affected)
---explain---------

update dbo.oeCurrent
set value=case when value='-' then null 
				else value 
		  end
go
---(5680603 rows affected)
---explain---------

select TOP(10) * from dbo.oeCurrent
select TOP(10) * from wrk.oeCurrent

drop table wrk.oeCurrent
create table wrk.oeCurrent (
	series_id	varchar(50)
,	year		int
,	period		varchar(10)
,	value		float
,	footnote_codes	varchar(50)
)
go
insert into wrk.oeCurrent(
	series_id	
,	year		
,	period		
,	value		
,	footnote_codes	
)(
	select
	series_id	
,	year		
,	period		
,	value		
,	footnote_codes
	from	dbo.oeCurrent
)---(5680603 rows affected)
go

-- 6. Datatype

select TOP(10) * from dbo.oeDatatype
select TOP(10) * from wrk.oeDatatype

drop table wrk.oeDatatype
create table wrk.oeDatatype (
	datatype_code	varchar(10)
,	datatype_name	varchar(50)
)
go
insert into wrk.oeDatatype(
	datatype_code	
,	datatype_name	
)(
	select
	datatype_code	
,	datatype_name	
	from	dbo.oeDatatype
)---(17 rows affected)
go

-- 7. Footnote

select TOP(10) * from dbo.oeFootnote
select TOP(10) * from wrk.oeFootnote

drop table wrk.oeFootnote
create table wrk.oeFootnote (
	footnote_code	varchar(10)
,	footnote_text	varchar(500)
)
go
insert into wrk.oeFootnote(
	footnote_code	
,	footnote_text	
)(
	select
	footnote_code	
,	footnote_text	
	from	dbo.oeFootnote
)---(6 rows affected)
go

-- 8. Industry

select TOP(50) * from dbo.oeIndustry
select TOP(50) * from wrk.oeIndustry

drop table wrk.oeIndustry
create table wrk.oeIndustry (
	industry_code	varchar(10)
,	industry_name	varchar(500)
,	display_level	int
,	selectable		varchar(10)
,	sort_sequence	int
)
go
insert into wrk.oeIndustry(
	industry_code	
,	industry_name	
,	display_level	
,	selectable		
,	sort_sequence	
)(
	select
	industry_code	
,	industry_name	
,	display_level	
,	selectable		
,	sort_sequence	
	from	dbo.oeIndustry
)---(450 rows affected)
go

-- 9. Occupation

select TOP(10) * from dbo.oeOccupation
select TOP(10) * from wrk.oeOccupation

drop table wrk.oeOccupation
create table wrk.oeOccupation (
	occupation_code	varchar(10)
,	occupation_name	varchar(500)
,	display_level	int
,	selectable		varchar(10)
,	sort_sequence	int
)
go
insert into wrk.oeOccupation(
	occupation_code	
,	occupation_name	
,	display_level	
,	selectable		
,	sort_sequence	
)(
	select
	occupation_code	
,	occupation_name	
,	display_level	
,	selectable		
,	sort_sequence
	from	dbo.oeOccupation
)---(1040 rows affected)
go

-- 10. Release

select TOP(10) * from dbo.oeRelease
select TOP(10) * from wrk.oeRelease

drop table wrk.oeRelease
create table wrk.oeRelease (
	release_date	varchar(50)
,	description		varchar(50)
)
go
insert into wrk.oeRelease(
	release_date	
,	description		
)(
	select
	release_date	
,	description		
	from	dbo.oeRelease
)---(1 row affected)
go

-- 11. Seasonal

select TOP(10) * from dbo.oeSeasonal
select TOP(10) * from wrk.oeSeasonal

drop table wrk.oeSeasonal
create table wrk.oeSeasonal (
	seasonal_code	varchar(2)
,	seasonal_text	varchar(50)
)
go
insert into wrk.oeSeasonal(
	seasonal_code	
,	seasonal_text	
)(
	select
	seasonal_code	
,	seasonal_text	
	from	dbo.oeSeasonal
)---(2 rows affected)
go

-- 12. Sector

select TOP(10) * from dbo.oeSector
select TOP(10) * from wrk.oeSector

drop table wrk.oeSector
create table wrk.oeSector (
	sector_code	varchar(10)
,	sector_name	varchar(500)
)
go
insert into wrk.oeSector(
	sector_code	
,	sector_name	
)(
	select
	sector_code	
,	sector_name	
	from	dbo.oeSector
)---(21 rows affected)
go

-- 13. Series

select TOP(10) * from dbo.oeSeries
select TOP(10) * from wrk.oeSeries

drop table wrk.oeSeries
create table wrk.oeSeries (
	series_id		varchar(50)
,	seasonal		varchar(2)
,	areatype_code	varchar(2)
,	industry_code	varchar(10)
,	occupation_code	varchar(10)
,	datatype_code	varchar(10)
,	state_code		varchar(10)
,	area_code		varchar(10)
,	sector_code		varchar(10)
,	series_title	varchar(500)
,	footnote_code	varchar(10)
,	begin_year		int
,	begin_period	varchar(10)
,	end_year		int
,	end_period		varchar(10)
)
go
insert into wrk.oeSeries(
	series_id		
,	seasonal		
,	areatype_code	
,	industry_code	
,	occupation_code	
,	datatype_code	
,	state_code		
,	area_code		
,	sector_code		
,	series_title	
,	footnote_code	
,	begin_year		
,	begin_period	
,	end_year		
,	end_period		
)(
	select
	series_id		
,	seasonal		
,	areatype_code	
,	industry_code	
,	occupation_code	
,	datatype_code	
,	state_code		
,	area_code		
,	sector_code		
,	series_title	
,	footnote_codes	
,	begin_year		
,	begin_period	
,	end_year		
,	end_period	
	from	dbo.oeSeries
)---(5680603 rows affected)
go

---Date Processing

select distinct period 
from wrk.oeCurrent
---only one output 'A01'
select distinct begin_period 
from wrk.oeSeries
---only one output 'A01'
select distinct year
from  wrk.oeCurrent
go
---only one output '2020'
---Our dataset is annual data of year 2020.

alter table wrk.oeSector
add sector_code_new varchar(2)
go

update wrk.oeSector
set sector_code_new=SUBSTRING(sector_code,1,2)
go
--(42 rows affected)
update wrk.oeSector
set sector_name=RTRIM(LTRIM(REVERSE(SUBSTRING(REVERSE(sector_name),1,(PATINDEX('%-%',REVERSE(sector_name))-1)))))
go
--(42 rows affected)


select *
from wrk.oeSector
/* sector_code - 12th&13th code in series_id
11	Agriculture, Forestry, Fishing and Hunting
21	Mining
22	Utilities
23	Construction
31	Manufacturing
42	Wholesale Trade
44	Retail Trade
*/

select *
from wrk.oeArea
order by areatype_code,state_code,area_name
/* We will focus on national level data and state level data.
00	0000000	N	National
01	0100000	S	Alabama
02	0200000	S	Alaska
04	0400000	S	Arizona
05	0500000	S	Arkansas
06	0600000	S	California
*/

select *
from wrk.oeOccupation
where display_level=0
/* 22 primary category of occupation
000000	All Occupations	0
110000	Management Occupations	0
130000	Business and Financial Operations Occupations	0
150000	Computer and Mathematical Occupations	0
170000	Architecture and Engineering Occupations	0
190000	Life, Physical, and Social Science Occupations	0
210000	Community and Social Service Occupations	0
230000	Legal Occupations	0
250000	Educational Instruction and Library Occupations	0
270000	Arts, Design, Entertainment, Sports, and Media Occupations	0
290000	Healthcare Practitioners and Technical Occupations	0
310000	Healthcare Support Occupations	0
330000	Protective Service Occupations	0
350000	Food Preparation and Serving Related Occupations	0
370000	Building and Grounds Cleaning and Maintenance Occupations	0
390000	Personal Care and Service Occupations	0
410000	Sales and Related Occupations	0
430000	Office and Administrative Support Occupations	0
450000	Farming, Fishing, and Forestry Occupations	0
470000	Construction and Extraction Occupations	0
490000	Installation, Maintenance, and Repair Occupations	0
510000	Production Occupations	0
530000	Transportation and Material Moving Occupations	0
*/

select *
from wrk.oeDatatype
/*
01	Employment
03	Hourly mean wage
04	Annual mean wage
*/

select *
from wrk.oeCurrent
where series_id in ('OEUN000000000000000000001','OEUN000000000000000000003','OEUN000000000000000000004')
go
select *
from wrk.oeSeries
where areatype_code='S'
and series_id in ('OEUN000000000000000000001','OEUN000000000000000000003','OEUN000000000000000000004')
go
/*
For year 2020, the national employment for All Occupations in All Industries in the United States is 139099570. 
The hourly mean wage is $27.07. The annual mean wage is $56310.
*/

---Employmemt by state
select a.series_id, c.area_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeArea c
	on b.state_code=c.state_code
where a.series_id like 'OEUS%00000000000001'
and c.areatype_code='S'
order by a.value desc
/* Top 10 state: Employment number
California		16430660
Texas			12102370
New York		8691440
Florida		    8441750
Illinois		5627660
Pennsylvania	5512120
Ohio			5137540
Georgia			4308600
North Carolina	4288450
Michigan		3924010
*/

---Annual mean wage by state
select a.series_id, c.area_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeArea c
	on b.state_code=c.state_code
where a.series_id like 'OEUS%00000000000004'
and c.areatype_code='S'
order by a.value desc

/* Top 10 state: Annual mean wage
District of Columbia	95330
Massachusetts			70010
New York				67850
Washington				66870
California				65740
Connecticut				65450
New Jersey				63690
Maryland				63610
Alaska					61760
Colorado				60840
*/

---Employmemt by industry sector
select a.series_id, c.sector_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeSector c
	on b.industry_code=c.sector_code
where a.series_id like 'OEU%00000001'
order by a.value desc
/* Top 5 Industry Sector: Employment number
Health Care and Social Assistance	20569100
Retail Trade						14707570
Educational Services				12740960
Manufacturing						12105940
Accommodation and Food Services		11439650
*/

---Annual mean wage by industry sector
select a.series_id, c.sector_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeSector c
	on b.industry_code=c.sector_code
where a.series_id like 'OEU%00000004'
order by a.value desc
/* Top 5 Industry Sector: annual mean wage
Management of Companies and Enterprises				89950
Professional, Scientific, and Technical Services	88920
Information											85350
Utilities											84080
Finance and Insurance								77930
*/

---Employmemt by Occupation
select a.series_id, c.occupation_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeOccupation c
	on b.occupation_code=c.occupation_code
where a.series_id like 'OEUN0000000000000%01'
and c.display_level=0
order by a.value desc
/* Top 5 Occupation: Employment number
Office and Administrative Support Occupations		18548360
Sales and Related Occupations						13120320
Transportation and Material Moving Occupations		12163360
Food Preparation and Serving Related Occupations	11262850
Healthcare Practitioners and Technical Occupations	8579180
*/

---Annual mean wage by Occupation
select a.series_id, c.occupation_name,a.value
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeOccupation c
	on b.occupation_code=c.occupation_code
where a.series_id like 'OEUN0000000000000%04'
and c.display_level=0
order by a.value desc
/* Top 5 Occupation: annual mean wage
Management Occupations								126480
Legal Occupations									112320
Computer and Mathematical Occupations				96770
Architecture and Engineering Occupations			90300
Healthcare Practitioners and Technical Occupations	85900
*/

---Because the dataset is too large and we only have data in 2020, so we only focus on data of Carlifonia and New York in order to do more deep dive analysis.
---Add a new series_id

alter table wrk.oeSeries
add new_series_id varchar(30)
go

update wrk.oeSeries
set new_series_id=SUBSTRING(series_id,1,(len(series_id)-2))
go

--Add a CLUSTERED INDEX

if exists (select name
			from sys.indexes
			where name = N'cidx_oeSeries_new_series_id')
drop index cidx_oeSeries_new_series_id on wrk.oeSeries
go
create clustered index cidx_oeSeries_new_series_id on wrk.oeSeries (new_series_id) 
go


drop view vw_CA_NY_Overview
go

create view vw_CA_NY_Overview as
select b.new_series_id, a.year, a.value, b.datatype_code, c.area_name, b.occupation_code, d.occupation_name, b.sector_code, e.sector_name
from wrk.oeCurrent a
inner join wrk.oeSeries b
	on a.series_id=b.series_id
inner join wrk.oeArea c
	on b.area_code=c.area_code
inner join wrk.oeOccupation d
	on b.occupation_code=d.occupation_code
inner join wrk.oeSector e
	on b.sector_code=e.sector_code
where b.seasonal = 'U'
and b.area_code = '0600000' OR b.area_code = '3600000'
go

select *
from vw_CA_NY_Overview

---This can work, but it costs too much time.
select a.new_series_id, a.year, 
	   a.value as employment,
	   b.value as annual_25pct_wage,
	   c.value as annual_mean_wage,
	   d.value as annual_75pct_wage
from (
	select *
	from vw_CA_NY_Overview 
	where datatype_code='01') as a
inner join (
	select *
	from vw_CA_NY_Overview
	where datatype_code='12') as b
	on a.new_series_id=b.new_series_id
inner join (
	select *
	from vw_CA_NY_Overview
	where datatype_code='13') as c
	on a.new_series_id=c.new_series_id
inner join (
	select *
	from vw_CA_NY_Overview
	where datatype_code='14') as d
	on a.new_series_id=d.new_series_id
go

select a.new_series_id, a.year, a.area_name, a.occupation_name,
	   a.value as employment,
	   c.value as annual_mean_wage
from (
	select *
	from vw_CA_NY_Overview 
	where datatype_code='01') as a
inner join (
	select *
	from vw_CA_NY_Overview
	where datatype_code='13') as c
	on a.new_series_id=c.new_series_id
order by employment desc
go

/* Top 10 Employment
State		   Occupation				 						Employment
California	All Occupations										16430660
New York	All Occupations										8691440
California	Office and Administrative Support Occupations		2016470
California	Sales and Related Occupations						1462430
California	Transportation and Material Moving Occupations		1399640
California	Food Preparation and Serving Related Occupations	1328970
California	Business and Financial Operations Occupations		1064160
California	Management Occupations								1061750
California	Educational Instruction and Library Occupations		1025580
California	Healthcare Support Occupations						929110
California	Healthcare Practitioners and Technical Occupations	844740
California	Production Occupations								794720

New York	Office and Administrative Support Occupations		1232690
New York	Sales and Related Occupations						772460
New York	Educational Instruction and Library Occupations		669080
New York	Healthcare Support Occupations						638750
New York	Business and Financial Operations Occupations		613850
New York	Food Preparation and Serving Related Occupations	572430
New York	Transportation and Material Moving Occupations		565210
New York	Healthcare Practitioners and Technical Occupations	531520
New York	Management Occupations								473070
New York	Home Health and Personal Care Aides					469370
*/

select a.new_series_id, a.year, a.area_name, a.occupation_name,
	   a.value as employment,
	   c.value as annual_mean_wage
from (
	select *
	from vw_CA_NY_Overview 
	where datatype_code='01') as a
inner join (
	select *
	from vw_CA_NY_Overview
	where datatype_code='13') as c
	on a.new_series_id=c.new_series_id
order by annual_mean_wage desc
go
/* Top 10 Annual_mean_wage
State		   Occupation							  Annual_mean_wage		 				
California	Judges, Magabistrate Judges, and Magistrates	206420
California	Orthodontists									205980
California	General Internal Medicine Physicians			203480
California	Pediatricians, General							201520
California	Dentists, All Other Specialists					200180
California	Computer and Information Systems Managers		184280
California	Natural Sciences Managers						181960
California	Architectural and Engineering Managers			178310
California	Astronomers										170800
California	Nurse Midwives									170270

New York Dentists, All Other Specialists					204780
New York	Financial Managers								201920
New York	Nurse Anesthetists								200090
New York	Psychiatrists									195720
New York	Family Medicine Physicians						191180
New York	Sales Managers									188660
New York	Marketing Managers								181240
New York	Computer and Information Systems Managers		179830
New York	Compensation and Benefits Managers				173190
New York	Judges, Magistrate Judges, and Magistrates		167000
*/

select *
from (
	select a.area_name, a.occupation_name,
		   a.value as employment
	from (
		select *
		from vw_CA_NY_Overview 
		where datatype_code='01') as a
	inner join (
		select *
		from vw_CA_NY_Overview
		where datatype_code='13') as c
		on a.new_series_id=c.new_series_id
) as tbl
PIVOT (
		a.value FOR a.area_name in (['California'],['New York'])
) as pvt
order by a.value desc
go

select distinct industry_code
from wrk.oeSeries
order by industry_code

select top(10)*
from wrk.oeSeries

select *
from wrk.oeIndustry

select *
from wrk.oeOccupation

select *
from wrk.oeArea

select *
from wrk.oeDatatype