.. container::

   .. container::

      === ===============
      aml R Documentation
      === ===============

      .. rubric:: Remission Times for Acute Myelogenous Leukaemia
         :name: remission-times-for-acute-myelogenous-leukaemia

      .. rubric:: Description
         :name: description

      The ``aml`` data frame has 23 rows and 3 columns.

      A clinical trial to evaluate the efficacy of maintenance
      chemotherapy for acute myelogenous leukaemia was conducted by
      Embury et al. (1977) at Stanford University. After reaching a
      stage of remission through treatment by chemotherapy, patients
      were randomized into two groups. The first group received
      maintenance chemotherapy and the second group did not. The aim of
      the study was to see if maintenance chemotherapy increased the
      length of the remission. The data here formed a preliminary
      analysis which was conducted in October 1974.

      .. rubric:: Usage
         :name: usage

      ::

         aml

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``time``
         The length of the complete remission (in weeks).

      ``cens``
         An indicator of right censoring. 1 indicates that the patient
         had a relapse and so ``time`` is the length of the remission. 0
         indicates that the patient had left the study or was still in
         remission in October 1974, that is the length of remission is
         right-censored.

      ``group``
         The group into which the patient was randomized. Group 1
         received maintenance chemotherapy, group 2 did not.

      .. rubric:: Note
         :name: note

      Package survival also has a dataset ``aml``. It is the same data
      with different names and with ``group`` replaced by a factor
      ``x``.

      .. rubric:: Source
         :name: source

      The data were obtained from

      Miller, R.G. (1981) *Survival Analysis*. John Wiley.

      .. rubric:: References
         :name: references

      Davison, A.C. and Hinkley, D.V. (1997) *Bootstrap Methods and
      Their Application*. Cambridge University Press.

      Embury, S.H, Elias, L., Heller, P.H., Hood, C.E., Greenberg, P.L.
      and Schrier, S.L. (1977) Remission maintenance therapy in acute
      myelogenous leukaemia. *Western Journal of Medicine*, **126**,
      267-272.
