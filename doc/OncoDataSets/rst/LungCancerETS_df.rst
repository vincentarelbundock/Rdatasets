.. container::

   .. container::

      ================ ===============
      LungCancerETS_df R Documentation
      ================ ===============

      .. rubric:: Passive Smoking's Lung Cancer Threat in Women
         :name: passive-smokings-lung-cancer-threat-in-women

      .. rubric:: Description
         :name: description

      This dataset, LungCancerETS_df, is a data frame containing results
      from 37 studies on the risk of lung cancer in women exposed to
      environmental tobacco smoke (ETS) from their smoking spouse. The
      dataset includes data from both cohort and case-control studies,
      focusing on women who are lifelong nonsmokers but have been
      exposed to ETS.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(LungCancerETS_df)

      .. rubric:: Format
         :name: format

      A data frame with 37 observations and 11 variables:

      study
         Study identifier (integer).

      author
         Author(s) of the study (character).

      year
         Year of publication (integer).

      country
         Country where the study was conducted (character).

      design
         Design of the study (e.g., cohort or case-control) (character).

      cases
         Number of cases in the study (integer).

      or
         Odds ratio estimate (numeric).

      or.lb
         Lower bound of the odds ratio confidence interval (numeric).

      or.ub
         Upper bound of the odds ratio confidence interval (numeric).

      yi
         Effect size estimate (numeric).

      vi
         Variance of the effect size estimate (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'LungCancerETS_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the metadat package. Hackshaw, A. K., Law, M. R.,
      & Wald, N. J. (1997). The accumulated evidence on lung cancer and
      environmental tobacco smoke. British Medical Journal, 315(7114),
      980-988. https://doi.org/10.1136/bmj.315.7114.980 Hackshaw, A. K.
      (1998). Lung cancer and passive smoking. Statistical Methods in
      Medical Research, 7(2), 119-136.
      https://doi.org/10.1177/096228029800700203
