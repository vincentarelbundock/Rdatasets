.. container::

   ====== ===============
   MedExp R Documentation
   ====== ===============

   .. rubric:: Structure of Demand for Medical Care
      :name: MedExp

   .. rubric:: Description
      :name: description

   Journal of Applied Econometrics data archive :
   http://qed.econ.queensu.ca/jae/

   *number of observations* : 5574

   .. rubric:: Usage
      :name: usage

   ::

      data(MedExp)

   .. rubric:: Format
      :name: format

   A time series containing :

   med
      annual medical expenditures in constant dollars excluding dental
      and outpatient mental

   lc
      ``log(coinsrate+1)`` where coinsurance rate is 0 to 100

   idp
      individual deductible plan ?

   lpi
      ``log``\ (annual participation incentive payment) or 0 if no
      payment

   fmde
      ``log``\ (max(medical deductible expenditure)) if ``IDP``\ =1 and
      ``MDE``>1 or 0 otherwise

   physlim
      physical limitation ?

   ndisease
      number of chronic diseases

   health
      self–rate health (excellent,good,fair,poor)

   linc
      log of annual family income (in $)

   lfam
      log of family size

   educdec
      years of schooling of household head

   age
      exact age

   sex
      sex (male,female)

   child
      age less than 18 ?

   black
      is household head black ?

   .. rubric:: Source
      :name: source

   Deb, P. and P.K. Trivedi (2002) “The Structure of Demand for Medical
   Care: Latent Class versus Two-Part Models”, *Journal of Health
   Economics*, **21**, 601–625.

   .. rubric:: References
      :name: references

   Cameron, A.C. and P.K. Trivedi (2005) *Microeconometrics : methods
   and applications*, Cambridge.

   .. rubric:: See Also
      :name: see-also

   ``DoctorContacts``, ``Index.Source``, ``Index.Economics``,
   ``Index.Econometrics``, ``Index.Observations``, ``Index.Time.Series``
