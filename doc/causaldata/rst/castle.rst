====== ===============
castle R Documentation
====== ===============

Data on castle-doctrine statutes and violent crime
--------------------------------------------------

Description
~~~~~~~~~~~

This data looks at the impact of castle-doctrine statutes on violent
crime. Data from the FBI Uniform Crime Reports Summary files are
combined with information on castle-doctrine/stand-your-ground law
impementation in different states.

Usage
~~~~~

::

   castle

Format
~~~~~~

A data frame with 19584 rows and 21 variables

year
   Year

sid
   state id

robbery_gun_r
   Region-quarter fixed effects

jhcitizen_c
   justifiable homicide by private citizen count

jhpolice_c
   justifiable homicide by police count

homicide
   homicide count per 100,000 state population

robbery
   Region-quarter fixed effects

assault
   aggravated assault count per 100,000 state population

burglary
   burglary count per 100,000 state population

larceny
   larceny count per 100,000 state population

motor
   motor vehicle theft count per 100,000 state population

murder
   murder count per 100,000 state population

unemployrt
   unemployment rate

blackm_15_24
   % of black male aged 15-24

whitem_15_24
   % of white male aged 15-24

blackm_25_44
   % of black male aged 25-44

whitem_25_44
   % of white male aged 25-44

poverty
   poverty rate

l_homicide
   Logged crime rate

l_larceny
   Logged crime rate

l_motor
   Logged crime rate

l_police
   Logged police presence

l_income
   Logged income

l_prisoner
   Logged number of prisoners

l_lagprisoner
   Lagged log prisoners

l_exp_subsidy
   Logged subsidy spending

l_exp_pubwelfare
   Logged public welfare spending

lead1,lead2,lead3,lead4,lead5,lead6,lead7,lead8,lead9,lag0,lag1,lag2,lag3,lag4,lag5
   Indicators of how many time periods until/since treatment

popwt
   Population weight

r20001,r20002,r20003,r20004,r20011,r20012,r20013,r20014,r20021,r20022,r20023,r20024,r20031,r20032,r20033,r20034,r20041,r20042,r20043,r20044,r20051,r20052,r20053,r20054,r20061,r20062,r20063,r20064,r20071,r20072,r20073,r20074,r20081,r20082,r20083,r20084,r20091,r20092,r20093,r20094,r20101,r20102,r20103,r20104
   Region-quarter fixed effects

trend_1,trend_10,trend_11,trend_12,trend_13,trend_14,trend_15,trend_16,trend_17,trend_18,trend_19,trend_2,trend_20,trend_21,trend_22,trend_23,trend_24,trend_25,trend_26,trend_27,trend_28,trend_29,trend_3,trend_30,trend_31,trend_32,trend_33,trend_34,trend_35,trend_36,trend_37,trend_38,trend_39,trend_4,trend_40,trend_41,trend_42,trend_43,trend_44,trend_45,trend_46,trend_47,trend_48,trend_49,trend_5,trend_50,trend_51,trend_6,trend_7,trend_8,trend_9
   State linear time trends

Details
~~~~~~~

This data is used in the *Difference-in-Differences* chapter of *Causal
Inference: The Mixtape* by Cunningham.

Source
~~~~~~

Cheng, Cheng, and Mark Hoekstra. 2013. “Does Strengthening Self-Defense
Law Deter Crime or Escalate Violence? Evidence from Expansions to Castle
Doctrine.” Journal of Human Resources 48 (3): 821–54.

References
~~~~~~~~~~

Cunningham. 2021. Causal Inference: The Mixtape. Yale Press.
https://mixtape.scunning.com/index.html.
