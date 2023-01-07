.. container::

   ======= ===============
   lalonde R Documentation
   ======= ===============

   .. rubric:: Data from National Supported Work Demonstration and PSID,
      as analyzed by Dehejia and Wahba (1999).
      :name: data-from-national-supported-work-demonstration-and-psid-as-analyzed-by-dehejia-and-wahba-1999.

   .. rubric:: Description
      :name: description

   This is a subsample of the data from the treated group in the
   National Supported Work Demonstration (NSW) and the comparison sample
   from the Population Survey of Income Dynamics (PSID). This data was
   previously analyzed extensively by Lalonde (1986) and Dehejia and
   Wahba (1999).

   .. rubric:: Format
      :name: format

   A data frame with 614 observations (185 treated, 429 control). There
   are 9 variables measured for each individual.

   -  "treat" is the treatment assignment (1=treated, 0=control).

   -  "age" is age in years.

   -  "educ" is education in number of years of schooling.

   -  "race" is the individual's race/ethnicity, (Black, Hispanic, or
      White). Note previous versions of this dataset used indicator
      variables ``black`` and ``hispan`` instead of a single race
      variable.

   -  "married" is an indicator for married (1=married, 0=not married).

   -  "nodegree" is an indicator for whether the individual has a high
      school degree (1=no degree, 0=degree).

   -  "re74" is income in 1974, in U.S. dollars.

   -  "re75" is income in 1975, in U.S. dollars.

   -  "re78" is income in 1978, in U.S. dollars.

   "treat" is the treatment variable, "re78" is the outcome, and the
   others are pre-treatment covariates.

   .. rubric:: References
      :name: references

   Lalonde, R. (1986). Evaluating the econometric evaluations of
   training programs with experimental data. *American Economic Review*
   76: 604-620.

   Dehejia, R.H. and Wahba, S. (1999). Causal Effects in Nonexperimental
   Studies: Re-Evaluating the Evaluation of Training Programs. *Journal
   of the American Statistical Association* 94: 1053-1062.
