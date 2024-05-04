.. container::

   .. container::

      ======= ===============
      rx_adsl R Documentation
      ======= ===============

      .. rubric:: An ADSL-flavored clinical trial toy dataset
         :name: an-adsl-flavored-clinical-trial-toy-dataset

      .. rubric:: Description
         :name: description

      This tibble contains artificial data for 182 subjects of the
      ``GT01`` study. Each row corresponds to demographic
      characteristics of a single trial participant. Two out of 182
      study participants were screen failures and thus not treated, the
      rest of the study population was randomized with a 1:1 ratio to
      receive either ``"Placebo"`` (as comparator) or ``"Drug 1"``. The
      dataset entails subject level demographics such as age, age group,
      sex, ethnicity, and body mass index (BMI) at baseline, as well as
      an event flag, indicating whether the subject experienced a
      specific event throughout the course of the study or not.

      Although the data was intentionally created to mimic a typical
      clinical trial dataset following the CDISC format, it might not
      strictly comply with CDISC ADaM rules. The intent is to showcase
      the workflow for clinical table creation rather than creating a
      fully CDISC-compliant ADaM dataset.

      .. rubric:: Usage
         :name: usage

      ::

         rx_adsl

      .. rubric:: Format
         :name: format

      A tibble with 182 rows and 14 variables:

      STUDYID, STUDYIDN
         The unique study identifier and its numeric version.

      USUBJID
         The unique subject identifier.

      TRTA, TRTAN
         The study intervention and its numeric version, which is either
         ``"Placebo"`` (``1``), ``"Drug 1"`` (``2``) or ``NA`` (``3``),
         missing for screen failures).

      ITTFL
         Intent-to-Treat (ITT) population flag, where ``"Y"`` indicates
         a subject belongs to the ITT population and ``"N"`` indicates a
         subject is not in the ITT population.

      RANDFL
         Randomization flag, where ``"Y"`` indicates a subject was
         randomized to receive either ``"Placebo"`` or ``"Drug 1"`` and
         ``"N"`` indicates a subject was not randomized at all.

      SCRFREAS
         The reason for screen failure. This is either missing (``""``)
         for non-screen failure subjects or indicates the reason for
         screen failure

      AGE
         The age of a subject at baseline in years.

      AAGEGR1
         The analysis age group, indicating if a subject was strictly
         younger than 40 years at baseline or older.

      SEX
         Sex of a subject. Can be either ``"Male"``, ``"Female"`` or
         ``"Undifferentiated"``.

      ETHNIC
         Ethnicity of a subject. Can be either ``"Hispanic or Latino"``,
         ``"Not Hispanic or Latino"`` or missing (``""``).

      BLBMI
         Body Mass Index (BMI) of a subject at baseline in kg/m2.

      EVNTFL
         Event Flag. Indicates whether the subject experienced a
         specific event during the course of the study or not. Can be
         either ``"Y"`` (if if the subject had the event) or ``"N"``.

      .. rubric:: Examples
         :name: examples

      Here is a glimpse at the data available in ``rx_adsl``.

      .. container:: sourceCode r

         ::

            dplyr::glimpse(rx_adsl)
            #> Rows: 182
            #> Columns: 14
            #> $ STUDYID  <chr> "GT01", "GT01", "GT01", "GT01", "GT01", "GT01", "GT01", "GT01~
            #> $ STUDYIDN <chr> "4001", "4001", "4001", "4001", "4001", "4001", "4001", "4001~
            #> $ USUBJID  <chr> "GT1000", "GT1001", "GT1002", "GT1003", "GT1004", "GT1005", "~
            #> $ TRTA     <fct> NA, Placebo, Placebo, Placebo, Placebo, Placebo, Placebo, Pla~
            #> $ TRTAN    <dbl> 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1~
            #> $ ITTFL    <chr> "N", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "~
            #> $ RANDFL   <chr> "N", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "~
            #> $ SCRFREAS <chr> "WITHDRAWAL BY SUBJECT", "", "", "", "", "", "", "", "", "", ~
            #> $ AGE      <int> 37, 41, 39, 38, 45, 35, 42, 35, 42, 38, 48, 36, 46, 34, 44, 4~
            #> $ AAGEGR1  <fct> <40, >=40, <40, <40, >=40, <40, >=40, <40, >=40, <40, >=40, <~
            #> $ SEX      <fct> Male, Male, Female, Male, Male, Female, Female, Male, Male, F~
            #> $ ETHNIC   <fct> Hispanic or Latino, Not Hispanic or Latino, Not Hispanic or L~
            #> $ BLBMI    <dbl> 33.76723, 33.35073, 30.45862, 22.85986, 23.89713, 29.09856, 2~
            #> $ EVNTFL   <chr> "", "Y", "Y", "N", "Y", "Y", "N", "N", "N", "N", "N", "N", "Y~

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-11

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.9.0`` (Mar 31, 2023)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``gtcars``, ``illness``, ``metro``, ``pizzaplace``, ``rx_addv``,
      ``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_rx_adsl.png
