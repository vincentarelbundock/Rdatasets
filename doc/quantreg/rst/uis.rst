.. container::

   .. container::

      === ===============
      uis R Documentation
      === ===============

      .. rubric:: UIS Drug Treatment study data
         :name: uis-drug-treatment-study-data

      .. rubric:: Description
         :name: description

      There are 628 data points in the original data, 575 of which have
      no missing values.

      Variable descriptions:

      ======== =============================== ==============================
      Variable Description                     Codes/Values
      ID       Identification Code             1 - 628
      AGE      Age at Enrollment               Years
      BECK     Beck DepressionScore            0.000 - 54.000
      HC       Heroin/Cocaine Use During       1 = Heroin & Cocaine
      \        3 Months Prior to Admission     2 = Heroin Only
      \                                        3 = Cocaine Only
      \                                        4 = Neither Heroin nor Cocaine
      IV       History of IV Drug Use          1 = Never
      \                                        2 = Previous
      \                                        3 = Recent
      NDT      Number of Prior Drug Treatments 0 - 40
      RACE     Subject's Race                  0 = White
      \                                        1 = Non-White
      TREAT    Treatment Randomization         0 = Short
      \        Assignment                      1 = Long
      SITE     Treatment Site                  0 = A
      \                                        1 = B
      LEN.T    Length of Stay in Treatment     Days
      \        (Admission Date to Exit Date)   
      TIME     Time to Drug Relapse            Days
      \        (Measured from Admission Date)  
      CENSOR   Event for Treating Lost to      1 = Returned to Drugs
      \        Follow-Up as Returned to Drugs  or Lost to Follow-Up
      \                                        0 = Otherwise
      Y        log of TIME                     
      ND1      Component of NDT                
      ND2      Component of NDT                
      LNDT                                     
      FRAC     Compliance fraction             LEN.T/90 for short trt
      \                                        LEN.T/180 for long trt
      IV3      Recent IV use                   1 = Yes
      \                                        0 = No
      ======== =============================== ==============================

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(uis)

      .. rubric:: Format
         :name: format

      A data frame with dimension 575 by 18.

      .. rubric:: Source
         :name: source

      Table 1.3 of Hosmer,D.W. and Lemeshow, S. (1998)

      .. rubric:: References
         :name: references

      Hosmer,D.W. and Lemeshow, S. (1998) Applied Survival Analysis:
      Regression Modeling of Time to Event Data, John Wiley and Sons
      Inc., New York, NY
