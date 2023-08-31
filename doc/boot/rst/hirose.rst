.. container::

   ====== ===============
   hirose R Documentation
   ====== ===============

   .. rubric:: Failure Time of PET Film
      :name: hirose

   .. rubric:: Description
      :name: description

   The ``hirose`` data frame has 44 rows and 3 columns.

   PET film is used in electrical insulation. In this accelerated life
   test the failure times for 44 samples in gas insulated transformers.
   4 different voltage levels were used.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      hirose

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``volt``
      The voltage (in kV).

   ``time``
      The failure or censoring time in hours.

   ``cens``
      The censoring indicator; ``1`` means right-censored data.

   .. rubric:: Source
      :name: source

   The data were obtained from

   Hirose, H. (1993) Estimation of threshold stress in accelerated
   life-testing. *IEEE Transactions on Reliability*, **42**, 650–657.

   .. rubric:: References
      :name: references

   Davison, A.C. and Hinkley, D.V. (1997) *Bootstrap Methods and Their
   Application*. Cambridge University Press.
