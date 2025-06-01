.. container::

   .. container::

      ========== ===============
      randhealth R Documentation
      ========== ===============

      .. rubric:: Health expenditures and insurance plans
         :name: health-expenditures-and-insurance-plans

      .. rubric:: Description
         :name: description

      Data from the RAND Health Insurance Experiment. The data comes
      from Deb and Trivedi (2002). It includes variables on the number
      of contacts with a medical doctor, medical expenditures,
      demographics, health status, and insurance status. Cameron and
      Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         randhealth

      .. rubric:: Format
         :name: format

      A data frame with 20,190 observations and 45 variables:

      plan
         health insurance plan number

      site
         one of six sites where experiment was conducted

      coins
         medical coinsurance

      tookphys
         took baseline physical

      year
         study year

      zper
         person id, leading digit is sit

      black
         = 1 if race of household head is black

      income
         income based on annual income

      xage
         age that year

      female
         = 1 if person is female

      educdec
         years of schooling of decision maker

      time
         time eligible during the year

      outpdol
         outpatient exp. excl. ment and

      drugdol
         drugs purchased, outpatient

      suppdol
         supplies purchased, outpatient

      mentdol
         psychotherapy exp., outpatient

      inpdol
         inpatient exp., facilities and md

      meddol
         annual medical expenditures in constant dollars, excluding
         dental and outpatient mental

      totadm
         number of hospital admissions

      inpmis
         missing any inpatient charges

      mentvis
         number psychotehrapy visits

      mdvis
         number face-to-face md visits

      notmdvis
         number face-to-face, not md visits

      num
         family size

      mhi
         mental health index, baseline

      disea
         number of chronic diseases

      physlm
         = 1 if person has physical limitation

      ghindx
         general health index, baseline

      mdeoff
         maximum expenditure offer

      pioff
         participation incentive

      child
         = 1 if age is less than 18

      fchild
         = 1 if female child

      lfam
         log of family size

      lpi
         log of annual participation incentive payment or 0 if no
         payment

      idp
         = 1 if individual deductible plan

      logc
         log(coinsurance + 1) where coinsurance rate is 0 to 100

      fmde
         log(max(medical deductible expenditure)) if idp=1 and mde>1, 0
         otherwise

      hlthg
         = 1 if self-rated health is good

      hlthf
         = 1 if self-rated health is fair

      hlthp
         = 1 if self-rated health is poor, (omitted is excellent)

      xghindx
         ghi with imputation

      linc
         log of annual family income, usd

      lnum
         log of family size

      lnmeddol
         log of medical expenditures given meddol > 0; missing otherwise

      binexp
         = 1 if medical expenditures > 0

      .. rubric:: Section in Text
         :name: section-in-text

      16.6 Selection Models, pp. 553-6, 565 20.3 Count Example: Contacts
      with Medical Doctor, p.671

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Deb, P. and Trivedi, P.K. (2002), "The Structure of Demand for
      Health Care: Latent Class versus Two-Part Models," Journal of
      Health Economics, 21, 601-625.

      RAND Corporation. "RAND's Health Insurance Experiment ."
      https://www.rand.org/health-care/projects/hie.html

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(randhealth)
