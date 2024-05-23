.. container::

   .. container::

      ================ ===============
      prostateSurvival R Documentation
      ================ ===============

      .. rubric:: prostateSurvival
         :name: prostatesurvival

      .. rubric:: Description
         :name: description

      This data set contains survival times for two competing causes:
      time from prostate cancer diagnosis to death from prostate cancer,
      and time from prostate cancer diagnosis to death from other
      causes. The data set also contains information on several risk
      factors. The data in this data set are simulated from detailed
      competing risk survival curves and counts of numbers of patients
      per group presented in Lu-Yao et al. (2009). Thus, the simulated
      data presented here contain many of the characteristics of the
      original SEER-Medicare prostate cancer data used in Lu-Yao et al.
      (2009).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("prostateSurvival")

      .. rubric:: Format
         :name: format

      A data frame with 14294 observations on the following 5 variables.

      ``grade``
         a factor with levels ``mode`` (moderately differentiated) and
         ``poor`` (poorly differentiated)

      ``stage``
         a factor with levels ``T1ab`` (Stage T1, clinically
         diagnoseed), ``T1c`` (Stage T1, diagnosed via a PSA test), and
         ``T2`` (Stage T2)

      ``ageGroup``
         a factor with levels ``66-69`` ``70-74`` ``75-79`` ``80+``

      ``survTime``
         time from diagnosis to death or last date known alive

      ``status``
         a censoring variable, ``0``, (censored), ``1`` (death from
         prostate cancer), and ``2`` (death from other causes)

      .. rubric:: Source
         :name: source

      Lu-Yao, GL, Albertsen PC, Moore DF, Shih W, Lin Y, DiPaola RS,
      Barry MJ, Zietman A, O'Leary M, Walker-Corkery E, Yao S-L (2009)
      Outcomes of localized prostate cancer following conservative
      management. Journal of the American Medical Association 302, 1202
      - 1209.)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(prostateSurvival)
