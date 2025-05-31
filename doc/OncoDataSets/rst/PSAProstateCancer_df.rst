.. container::

   .. container::

      ==================== ===============
      PSAProstateCancer_df R Documentation
      ==================== ===============

      .. rubric:: Factors associated with prostate specific antigen
         :name: factors-associated-with-prostate-specific-antigen

      .. rubric:: Description
         :name: description

      This dataset, PSAProstateCancer_df, is a data frame containing
      data from a study by Stamey et al. (1989) to examine the
      association between prostate specific antigen (PSA) and several
      clinical measures in men about to receive a radical prostatectomy.
      The dataset includes 97 observations and 9 variables, each
      representing a factor potentially associated with PSA.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(PSAProstateCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 97 observations and 9 variables:

      lcavol
         Logarithm of cancer volume (numeric).

      lweight
         Logarithm of prostate weight (numeric).

      age
         Age of the patient in years (integer).

      lbph
         Logarithm of benign prostatic hyperplasia (numeric).

      svi
         Seminal vesicle invasion (integer).

      lcp
         Logarithm of cancer perineural invasion (numeric).

      gleason
         Gleason score (integer).

      pgg45
         Percentage of cancerous tissue with Gleason score 4 or 5
         (integer).

      lpsa
         Logarithm of prostate specific antigen (PSA) (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'PSAProstateCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the ncvreg package. Based on data from Stamey et
      al. (1989), which examined the association between prostate
      specific antigen (PSA) and several clinical measures potentially
      associated with PSA in men about to receive a radical
      prostatectomy.
