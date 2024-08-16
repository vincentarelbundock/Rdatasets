.. container::

   .. container::

      === ===============
      cpr R Documentation
      === ===============

      .. rubric:: CPR dataset
         :name: cpr-dataset

      .. rubric:: Description
         :name: description

      These patients were randomly divided into a treatment group where
      they received a blood thinner or the control group where they did
      not receive a blood thinner. The outcome variable of interest was
      whether the patients survived for at least 24 hours.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cpr

      .. rubric:: Format
         :name: format

      A data frame with 90 observations on the following 2 variables.

      group
         a factor with levels ``control`` and ``treatment``

      outcome
         a factor with levels ``died`` and ``survived``

      .. rubric:: Source
         :name: source

      Efficacy and safety of thrombolytic therapy after initially
      unsuccessful cardiopulmonary resuscitation: a prospective clinical
      trial, by Bottiger et al., The Lancet, 2001.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         table(cpr)
