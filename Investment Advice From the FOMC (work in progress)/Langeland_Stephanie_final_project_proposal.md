# QMSS G5072 Final Project Proposal
Stephanie Langeland  
2017-12-01  

# Final Project Proposal

  __Name of project:__ "Investment Advice from the FOMC"  
    
  __Type of project:__ Data (A1/A2)
    
  __Brief description of the purpose__: Refer to the next section for details.  
    
  __Links to data sources/API etc.:__ Refer to the next section for details. 
    
  __Outline the technical steps/challenges you plan to address and include__
  __in your submission:__ Refer to the next section for details. 
    
  __Are there any significant hurdles that you have doubts about? Would not__
  __solving them render the project incomplete?__: Transforming the code used
  throughout this project into a package will be a challenge.  I'm unsure 
  which aspects of my code need to be converted into a package or how many
  functions are required in the final package.  So far, I made one function
  that calls FRED data using the FRED API key (refer to the `FOMC Policy Statements.R`
  file for this code) and I will create a web scrapping function to obtain Yahoo 
  Finance data (refer to the `VIX.R` file for this code).  Are these two functions 
  enough for the final package?  Also, which license should I use for my package?
    
# __Investment Advice from the FOMC__

## 1 Overview 

The Federal Reserve ("FED") is the central bank of the United States.  The Federal
Open Market Committee (FOMC) is responsible for implementing monetary policy by 
adjusting the discount rate, reserve requirements, and open market operations 
(Federal Reserve Bank of Saint Louis).
The FOMC has eight regularly scheduled meetings each year to determine the 
future path of monetary policy.  The FOMC may also add meetings in times 
of economic stress or crisis.  Before 1995, the FOMC did not announce
the results (future stance of monetary policy) of each meeting.  However,
in February of 1994, the FOMC released its first statement explaining
the results of the meeting.  In February 1995, the FOMC decided that
all changes to the monetary policy stance would be announced after every meeting.
Until May 1999, the FOMC only released a statement when there was a change to 
monetary policy.  Thereafter, the FOMC began releasing a statement after every 
meeting, detailing the current and future stance of the economy and monetary policy, 
irrespective of whether a change to the current monetary policy stance was made
(Federal Reserve Bank of Dallas).  Each policy statement 
details the current conditions and expectations for the economy as well as 
the current and future path of monetary policy, e.g. 
the discount rate, open market operations, and federal funds rate.  

Specifically, the FOMC changes the target federal funds rate in conjunction with 
other adjustments to the discount rate and/or open market operations to influence 
the effective federal funds rate.  It was not until July 1995 that the FOMC statements made 
reference to a specific federal funds rate level.  However, in May 1999, the
FOMC began referring to the "target" federal funds rate to increase transparency.
Although the target rate is set by the FED, the effective federal funds rate 
is the final rate at which financial institutions lend to each other.  The 
effective federal funds rate is the rate that influences all interest rates as it
typically acts as a floor since financial institutions do not have incentives to offer
lower rates as they would incur losses.  Therefore, the effective federal funds
rate is the rate that is set by the market and influenced by the FOMC when it sets the 
target federal funds rate, discount rate, and open market operations. 

Each scheduled FOMC meeting spans two days.  Typically, the FOMC policy statement
is released on day two at 2 PM EDT.  Although the market typically factors in 
future changes to monetary policy, given the FED's commitment to transparency, 
there is a noticeable market reaction.  This study will examine how the FOMC's 
decision, regarding the target federal funds rate, affects volatility and Treasury 
yields.  

## 2 Data & Methodology 

In order to study the relationship between FOMC policy statements,
target federal funds rate, volatility, and Treasury yields,
data will be scrapped from the FED's website and obtained using
a FRED API key.

### 2.1 Time Period 

Although the FED has archived and made available all FOMC meeting materials since 
1936, data for this study will begin in 1995, which is when the 
FOMC started releasing statements at the conclusion of certain meetings.  For the FOMC
meetings from 1995 - 1999, when no change to the current monetary policy stance was made, 
and no policy statement issued, the policy statement from the previous meeting will 
be used in order to create a complete data set.

### 2.2 FOMC Policy Statements

The date that the FOMC policy statement was released or will be released in 2018
will be scrapped from the FED's website.  Statements released before 2011 have 
been archived, whereas statements released since 2012 have not yet been archived 
and are available in a different location of the FED's website.  Therefore, the 
web scrapping techniques used to scrape the date of each statement will differ 
based on its website location. Please refer to the `FOMC Policy Statements.R`
file for this code (this portion of the project is complete).

### 2.3 Target Federal Funds Rate

Changes to the target federal funds rate are implemented the day 
after the FOMC policy statement is released (Board of Governors of the 
Federal Reserve System).  Therefore, the target rate/range data on the day
after each meeting will be used.

The daily target federal funds rate data are only available from September 27, 1982
to December 15, 2008, while the upper and lower limits of the target federal funds 
rate data are available from December 16, 2008 to present. Therefore, both sets
of data will be pulled from FRED using a FRED API key.  Once the data are obtained,
the the difference between the current rate/limits and previous rate/limits will be
calculated.  Changes in the target federal funds rate will be compared to changes
in volatility.  Please refer to the `Target Rates.R` file for this code.

The Research Division of the Federal Reserve Bank of Saint Louis developed 
FRED.  [FRED](https://research.stlouisfed.org/about.html) is a database that 
offers regional and national financial and economic data and information to 
enhance economic research.  FRED is constantly updated and accessible at all times.
The FRED API allows users to retrieve economic data from FRED.  API requests can be 
tailored to retrieve data source, release, category, series, and more. 
[The FRED API documentation is available on FRED's website.](https://research.stlouisfed.org/docs/api)

### 2.4 Volatility 

Changes to the target federal funds rate/limits will be compared to changes in 
volatility (close minus open price`*` on the day the FOMC policy statement is released) 
to analyze the market's reaction to the FOMC's announcement made in the FOMC 
policy statement.  This look-back analysis will explore whether a significant 
relationship exists between FOMC announcements about the target federal funds 
rate and volatility.

`*` Intraday data are not available free of charge, therefore, open and close 
data must be used instead.  The assumption is that the open price reflects
market conditions before the FOMC announcement whereas the close price
reflects market conditions as a result of the FOMC announcement.

Daily volatility data will be represented by the Chicago Board Options Exchange
Volatility Index ("VIX").  These data will be obtained from yahoo finance.
Please refer to the `VIX.R` file for this code (this portion of the project 
is not yet complete per the "next steps" notes in the code).

### 2.5 Treasury Bills

Changes (close minus open price`*` on the day the FOMC policy statement is released) 
in the 10-year Treasury Yield will be analyzed in relation
to changes in the VIX.  The hypothesis is that when volatility increases, on an 
FOMC meeting day, the quantity demanded for 10-year Treasury Bills will increase, 
driving price up.  Inversely, when volatility decreases, on FOMC meeting days, the 
quantity demanded for 10-year Treasury Bills will decrease, driving the price down.

`*` Intraday data are not available, therefore, open and close 
data must be used instead.  The assumption is that the open price reflects
market conditions before the FOMC announcement whereas the close price
reflects market conditions as a result of the FOMC announcement.

Daily 10-year Treasury Bill data will be obtained from Yahoo Finance.

## 3 Works Cited

Board of Governors of the Federal Reserve System. FOMC's target federal funds 
rate or range, change (basis points) and level. 14 June 2017. 22 November 2017
<https://www.federalreserve.gov/monetarypolicy/openmarket.htm>.

Federal Reserve Bank of Dallas. A Short History of FOMC Communication Vol. 8, 
No. 8, September 2013 . 19 November 2017 
<https://www.dallasfed.org/research/eclett/2013/el1308.cfm>.
	
Federal Reserve Bank of Saint Louis. How Monetary Policy Works. 19 November 
2017 <https://www.stlouisfed.org/in-plain-english/how-monetary-policy-works>.
