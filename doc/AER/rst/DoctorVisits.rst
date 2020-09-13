============ ===============
DoctorVisits R Documentation
============ ===============

Australian Health Service Utilization Data
------------------------------------------

Description
~~~~~~~~~~~

Cross-section data originating from the 1977–1978 Australian Health
Survey.

Usage
~~~~~

::

   data("DoctorVisits")

Format
~~~~~~

A data frame containing 5,190 observations on 12 variables.

visits
   Number of doctor visits in past 2 weeks.

gender
   Factor indicating gender.

age
   Age in years divided by 100.

income
   Annual income in tens of thousands of dollars.

illness
   Number of illnesses in past 2 weeks.

reduced
   Number of days of reduced activity in past 2 weeks due to illness or
   injury.

health
   General health questionnaire score using Goldberg's method.

private
   Factor. Does the individual have private health insurance?

freepoor
   Factor. Does the individual have free government health insurance due
   to low income?

freerepat
   Factor. Does the individual have free government health insurance due
   to old age, disability or veteran status?

nchronic
   Factor. Is there a chronic condition not limiting activity?

lchronic
   Factor. Is there a chronic condition limiting activity?

Source
~~~~~~

Journal of Applied Econometrics Data Archive.

http://qed.econ.queensu.ca/jae/1997-v12.3/mullahy/

References
~~~~~~~~~~

Cameron, A.C. and Trivedi, P.K. (1986). Econometric Models Based on
Count Data: Comparisons and Applications of Some Estimators and Tests.
*Journal of Applied Econometrics*, **1**, 29–53.

Cameron, A.C. and Trivedi, P.K. (1998). *Regression Analysis of Count
Data*. Cambridge: Cambridge University Press.

Mullahy, J. (1997). Heterogeneity, Excess Zeros, and the Structure of
Count Data Models. *Journal of Applied Econometrics*, **12**, 337–350.

See Also
~~~~~~~~

``CameronTrivedi1998``

Examples
~~~~~~~~

::

   data("DoctorVisits", package = "AER")
   library("MASS")

   ## Cameron and Trivedi (1986), Table III, col. (1)
   dv_lm <- lm(visits ~ . + I(age^2), data = DoctorVisits)
   summary(dv_lm)

   ## Cameron and Trivedi (1998), Table 3.3 
   dv_pois <- glm(visits ~ . + I(age^2), data = DoctorVisits, family = poisson)
   summary(dv_pois)                  ## MLH standard errors
   coeftest(dv_pois, vcov = vcovOPG) ## MLOP standard errors
   logLik(dv_pois)
   ## standard errors denoted RS ("unspecified omega robust sandwich estimate")
   coeftest(dv_pois, vcov = sandwich)

   ## Cameron and Trivedi (1986), Table III, col. (4)
   dv_nb <- glm.nb(visits ~ . + I(age^2), data = DoctorVisits)
   summary(dv_nb)
   logLik(dv_nb)
