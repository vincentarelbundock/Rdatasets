.. container::

   .. container::

      ========== ===============
      pancreatic R Documentation
      ========== ===============

      .. rubric:: pancreatic
         :name: pancreatic

      .. rubric:: Description
         :name: description

      Data from a Phase II clinical trial of patients with locally
      advanced or metastatic pancreatic cancer.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("pancreatic")

      .. rubric:: Format
         :name: format

      A data frame with 41 observations on the following 4 variables.

      ``stage``
         a factor with levels ``LA`` (locally advanced) or ``M``
         (metastatic)

      ``onstudy``
         date of enrollment into the clinical trial, in month/day/year
         format

      ``progression``
         date of progression, in month/day/year format

      ``death``
         date of death, in month/day/year format

      .. rubric:: Details
         :name: details

      Since all patients in this study have known death dates, there is
      no censoring.

      .. rubric:: References
         :name: references

      Moss RA, Moore D, Mulcahy MF, Nahum K, Saraiya B, Eddy S, Kleber
      M, and Poplin EA (2012) A multi-institutional phase 2 study of
      imatinib mesylate and gemcitabine for first-line treatment of
      advanced pancreatic cancer. Gastrointestinal Cancer Research 5, 77
      - 83.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(pancreatic)
