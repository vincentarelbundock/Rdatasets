============== ===============
adult_services R Documentation
============== ===============

Data from a survey of internet-mediated sex workers
---------------------------------------------------

Description
~~~~~~~~~~~

This data comes from a survey of 700 internet-mediated sex workers in
2008 and 2009, asking the same sex workers standard labor market
information over several time periods.

Usage
~~~~~

::

   adult_services

Format
~~~~~~

A data frame with 1787 rows and 31 variables

id
   Provider identifier

session
   Client session identifier

age
   Age of provider

age_cl
   Age of Client

appearance_cl
   Client Attractiveness (Scale of 1 to 10)

bmi
   Body Mass Index

schooling
   Imputed Years of Schooling

asq_cl
   Age of Client Squared

provider_second
   Second Provider Involved

asian_cl
   Asian Client

black_cl
   Black Client

hispanic_cl
   Hispanic Client

othrace_cl
   Other Ethnicity Client

reg
   Client was a Regular

hot
   Met Client in Hotel

massage_cl
   Gave Client a Massage

lnw
   Log of Hourly Wage

llength
   Ln(Length)

unsafe
   Unprotected sex with client of any kind

asian
   race==1. Asian

black
   race==2. Black

hispanic
   race==3. Hispanic

other
   race==4. Other

white
   race==5. White

asq
   Age of provider squared

cohab
   ms==Cohabitating (living with a partner) but unmarried

married
   ms==Currently married and living with your spouse

divorced
   ms==Divorced and not remarried

separated
   ms==Married but not currently living with your spouse

nevermarried
   ms==Single and never married

widowed
   ms==Widowed and not remarried

Details
~~~~~~~

This data is used in the *Panel Data* chapter of *Causal Inference: The
Mixtape* by Cunningham.

Source
~~~~~~

Cunningham, Scott, and Todd D. Kendall. 2011. “Prostitution 2.0: The
Changing Face of Sex Work.” Journal of Urban Economics 69: 273–87.

Cunningham, Scott, and Todd D. Kendall. 2014. “Examining the Role of
Client Reviews and Reputation Within Online Prostitution.” In, edited by
Scott Cunningham and Manisha Shah. Vol. Handbook on the Economics of
Prostitution. Oxford University Press.

Cunningham, Scott, and Todd D. Kendall. 2016. “Prostitution Labor Supply
and Education.” Review of Economics of the Household. Forthcoming.

References
~~~~~~~~~~

Cunningham. 2021. Causal Inference: The Mixtape. Yale Press.
https://mixtape.scunning.com/index.html.
