.. container::

   .. container::

      ========== ===============
      mastectomy R Documentation
      ========== ===============

      .. rubric:: Survival Times after Mastectomy of Breast Cancer
         Patients
         :name: survival-times-after-mastectomy-of-breast-cancer-patients

      .. rubric:: Description
         :name: description

      Survival times in months after mastectomy of women with breast
      cancer. The cancers are classified as having metastized or not
      based on a histochemical marker.

      .. rubric:: Usage
         :name: usage

      ::

         data("mastectomy")

      .. rubric:: Format
         :name: format

      A data frame with 42 observations on the following 3 variables.

      time
         survival times in months.

      event
         a logical indicating if the event was observed (``TRUE``) or if
         the survival time was censored (``FALSE``).

      metastized
         a factor at levels ``yes`` and ``no``.

      .. rubric:: Source
         :name: source

      B. S. Everitt and S. Rabe-Hesketh (2001), *Analysing Medical Data
      using S-PLUS*, Springer, New York, USA.

      .. rubric:: Examples
         :name: examples

      ::

           data("mastectomy", package = "HSAUR")
           table(mastectomy$metastized)
