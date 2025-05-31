.. container::

   .. container::

      ============ ===============
      Puromycin_df R Documentation
      ============ ===============

      .. rubric:: Reaction Velocity of an Enzymatic Reaction
         :name: reaction-velocity-of-an-enzymatic-reaction

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'Puromycin_df' to avoid
      confusion with datasets from other packages in the R ecosystem and
      to follow the naming convention in the 'MedDataSets' package. The
      suffix '\_df' indicates that this dataset is a data frame,
      distinguishing it both within the package and from similar
      datasets in other R packages. The original content of the dataset
      has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Puromycin_df)

      .. rubric:: Format
         :name: format

      A data frame with 23 observations and 3 variables:

      conc
         Substrate concentration (numeric).

      rate
         Reaction velocity (numeric).

      state
         A factor with two levels: ``treated`` and ``untreated``,
         indicating whether Puromycin was present.

      The dataset contains additional metadata:

      reference
         The reference for this dataset: ``"A1.3, p. 269"``.

      .. rubric:: Details
         :name: details

      This dataset contains data from an experiment on the reaction
      velocity of an enzymatic reaction with and without the use of
      Puromycin, an antibiotic that inhibits protein synthesis.

      .. rubric:: Source
         :name: source

      Experimental data on the effects of Puromycin on enzyme reaction
      rates.
