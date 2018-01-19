# Langeland_Stephanie
Stephanie Langeland's Final Project for Modern Data Structures (Fall 2017 - QMSS, Columbia University)

File Name:  Description 

`Langeland_Stephanie_final_project.Rmd`:  Code for the final project summary page.  

  * `Langeland_Stephanie_final_project.md`:  Knit .md file. 
  __Please note that this file contains interactive charts__
  __and graphs so please download the html file rather than reviewing__
  __the github .md file.__
  
  * `Langeland_Stephanie_final_project.html`:  Knit .rmd file 
  with all code. 
  __Please note that this file contains interactive charts__
  __and graphs so please download the html file rather than reviewing__
  __the github .md file.__
  
  __Note__: The section headings below correspond to the section headings in  
  `Langeland_Stephanie_final_project.Rmd`.

  * Section 2.2: `FOMC Policy Statements.R`: Code to obtain FOMC meeting dates data. 

    * `FOMC_meeting_dates.rds`: Data set containing all FOMC meeting dates 
    from 1995-2018.  This data set is the output of `FOMC Policy Statements.R`.
  
  * Section 2.3: `Target Rates.R`: Code to obtain all target federal funds rates and lower 
  & upper limits.

    * `Federal_Funds_Target_Rate.rds`: Data set containing all target
    federal funds rates from 1995 - 2008.  This data set is the 
    output of part 1 of `Target Rates.R`.
  
    * `Target_Fed_Funds_Upper_Limits.rds`: Data set containing all target
    federal funds rate upper limits from 2008 - Present.  This data set is the 
    output of part 2 of `Target Rates.R`.

    * `Target_Fed_Funds_Lower_Limits.rds`: Data set containing all target
    federal funds rate lower limits from 2008 - Present.  This data set is the 
    output of part 3 of `Target Rates.R`.
  
    * `Fed_Funds_Rates.rds`: Data set containing all target
    federal funds rates and lower & upper limits from 2008 - Present.  This data 
    set is the output of part 4 of `Target Rates.R`.

  * Section 2.4: `VIX.R`: Code to obtain all VIX data.
  
    * `VIX.rds`: Data set containing all VIX open, close, adjusted close, high,
    and low data. This data set is the output of `VIX.R`.
    
  * Section 2.5: `Treasury.R`: Code to obtain all Treasury Bond data.
  
    * `Treasury.rds`: Data set containing all VIX open, close, adjusted close, high,
    and low data. This data set is the output of `Treasury.R`.
    
  * Section 3: Refer to the `/EconFiData` folder for package details.  This folder
  contains a separate `README` file describing its contents. 
    
  * Section 4: `VIX_treasury_fedfunds_meetings_diff.R`: Code to merge all the VIX,
  Treasury, Federal Funds Rate, and FOMC Meeting Dates data rds files.
  
    * `VIX_treasury_fedfunds_meetings_diff.rds`: The final data set, which is the
    output of `VIX_treasury_fedfunds_meetings_diff.R`.
  
