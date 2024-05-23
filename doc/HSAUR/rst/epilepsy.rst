.. container::

   .. container::

      ======== ===============
      epilepsy R Documentation
      ======== ===============

      .. rubric:: Epilepsy Data
         :name: epilepsy-data

      .. rubric:: Description
         :name: description

      A randomised clinical trial investigating the effect of an
      anti-epileptic drug.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("epilepsy")

      .. rubric:: Format
         :name: format

      A data frame with 236 observations on the following 6 variables.

      ``treatment``
         the treatment group, a factor with levels ``placebo`` and
         ``Progabide``.

      ``base``
         the number of seizures before the trial.

      ``age``
         the age of the patient.

      ``seizure.rate``
         the number of seizures (response variable).

      ``period``
         treatment period, an ordered factor with levels ``1`` to ``4``.

      ``subject``
         the patient ID, a factor with levels ``1`` to ``59``.

      .. rubric:: Details
         :name: details

      In this clinical trial, 59 patients suffering from epilepsy were
      randomized to groups receiving either the anti-epileptic drug
      Progabide or a placebo in addition to standard chemotherapy. The
      numbers of seizures suffered in each of four, two-week periods
      were recorded for each patient along with a baseline seizure count
      for the 8 weeks prior to being randomized to treatment and age.
      The main question of interest is whether taking progabide reduced
      the number of epileptic seizures compared with placebo.

      .. rubric:: Source
         :name: source

      P. F. Thall and S. C. Vail (1990), Some covariance models for
      longitudinal count data with overdispersion. *Biometrics*, **46**,
      657–671.

      .. rubric:: Examples
         :name: examples

      .. code:: R

           data("epilepsy", package = "HSAUR")
           library(lattice)
           dotplot(I(seizure.rate / base) ~ period | subject, data = epilepsy, 
                   subset = treatment == "Progabide")
           dotplot(I(seizure.rate / base) ~ period | subject, data = epilepsy, 
                   subset = treatment == "Progabide")
