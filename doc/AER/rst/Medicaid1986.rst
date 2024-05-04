.. container::

   .. container::

      ============ ===============
      Medicaid1986 R Documentation
      ============ ===============

      .. rubric:: Medicaid Utilization Data
         :name: medicaid-utilization-data

      .. rubric:: Description
         :name: description

      Cross-section data originating from the 1986 Medicaid Consumer
      Survey. The data comprise two groups of Medicaid eligibles at two
      sites in California (Santa Barbara and Ventura counties): a group
      enrolled in a managed care demonstration program and a
      fee-for-service comparison group of non-enrollees.

      .. rubric:: Usage
         :name: usage

      ::

         data("Medicaid1986")

      .. rubric:: Format
         :name: format

      A data frame containing 996 observations on 14 variables.

      visits
         Number of doctor visits.

      exposure
         Length of observation period for ambulatory care (days).

      children
         Total number of children in the household.

      age
         Age of the respondent.

      income
         Annual household income (average of income range in million
         USD).

      health1
         The first principal component (divided by 1000) of three
         health-status variables: functional limitations, acute
         conditions, and chronic conditions.

      health2
         The second principal component (divided by 1000) of three
         health-status variables: functional limitations, acute
         conditions, and chronic conditions.

      access
         Availability of health services (0 = low access, 1 = high
         access).

      married
         Factor. Is the individual married?

      gender
         Factor indicating gender.

      ethnicity
         Factor indicating ethnicity (``"cauc"`` or ``"other"``).

      school
         Number of years completed in school.

      enroll
         Factor. Is the individual enrolled in a demonstration program?

      program
         Factor indicating the managed care demonstration program: Aid
         to Families with Dependent Children (``"afdc"``) or
         non-institutionalized Supplementary Security Income
         (``"ssi"``).

      .. rubric:: Source
         :name: source

      Journal of Applied Econometrics Data Archive.

      http://qed.econ.queensu.ca/jae/1997-v12.3/gurmu/

      .. rubric:: References
         :name: references

      Gurmu, S. (1997). Semi-Parametric Estimation of Hurdle Regression
      Models with an Application to Medicaid Utilization. *Journal of
      Applied Econometrics*, **12**, 225–242.

      .. rubric:: Examples
         :name: examples

      ::

         ## data and packages
         data("Medicaid1986")
         library("MASS")
         library("pscl")

         ## scale regressors
         Medicaid1986$age2 <- Medicaid1986$age^2 / 100
         Medicaid1986$school <- Medicaid1986$school / 10
         Medicaid1986$income <- Medicaid1986$income / 10

         ## subsets
         afdc <- subset(Medicaid1986, program == "afdc")[, c(1, 3:4, 15, 5:9, 11:13)]
         ssi <- subset(Medicaid1986, program == "ssi")[, c(1, 3:4, 15, 5:13)]

         ## Gurmu (1997):
         ## Table VI., Poisson and negbin models
         afdc_pois <- glm(visits ~ ., data = afdc, family = poisson)
         summary(afdc_pois)
         coeftest(afdc_pois, vcov = sandwich)

         afdc_nb <- glm.nb(visits ~ ., data = afdc)
         ssi_pois <- glm(visits ~ ., data = ssi, family = poisson)
         ssi_nb <- glm.nb(visits ~ ., data = ssi)

         ## Table VII., Hurdle models (without semi-parametric effects)
         afdc_hurdle <- hurdle(visits ~ . | . - access, data = afdc, dist = "negbin")
         ssi_hurdle <- hurdle(visits ~ . | . - access, data = ssi, dist = "negbin")

         ## Table VIII., Observed and expected frequencies
         round(cbind(
           Observed = table(afdc$visits)[1:8],
           Poisson = sapply(0:7, function(x) sum(dpois(x, fitted(afdc_pois)))),
           Negbin = sapply(0:7, function(x) sum(dnbinom(x, mu = fitted(afdc_nb), size = afdc_nb$theta))),
           Hurdle = colSums(predict(afdc_hurdle, type = "prob")[,1:8])
           )/nrow(afdc), digits = 3) * 100
         round(cbind(
           Observed = table(ssi$visits)[1:8],
           Poisson = sapply(0:7, function(x) sum(dpois(x, fitted(ssi_pois)))),
           Negbin = sapply(0:7, function(x) sum(dnbinom(x, mu = fitted(ssi_nb), size = ssi_nb$theta))),
           Hurdle = colSums(predict(ssi_hurdle, type = "prob")[,1:8])
           )/nrow(ssi), digits = 3) * 100
