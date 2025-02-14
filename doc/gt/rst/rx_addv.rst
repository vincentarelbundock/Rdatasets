.. container::

   .. container::

      ======= ===============
      rx_addv R Documentation
      ======= ===============

      .. rubric:: An ADDV-flavored clinical trial toy dataset
         :name: an-addv-flavored-clinical-trial-toy-dataset

      .. rubric:: Description
         :name: description

      This tibble contains artificial protocol deviation data for 180
      subjects in the Intent-to-Treat (ITT) population of the ``GT01``
      study. The dataset contains the usual parameters (``PARAM``,
      ``PARAMCD``) for an addv. There is summary parameter
      (``PARCAT1 == "OVERALL"``) for each subject of the ``GT01``
      ITT-population, indicating whether or not at least one major
      protocol deviation (PD) occurred throughout the course of the
      study for the respective subject. Individual records for protocol
      deviations per subject exist, indicating which specific type of PD
      occurred. The additional flag ``CRIT1FL``, shows whether a PD was
      related to COVID-19 or not.

      Although the data was intentionally created to mimic a typical
      clinical trial dataset following the CDISC format, it might not
      strictly comply with CDISC ADaM rules. The intent is to showcase
      the workflow for clinical table creation rather than creating a
      fully CDISC-compliant ADaM dataset.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         rx_addv

      .. rubric:: Format
         :name: format

      A tibble with 291 rows and 20 variables:

      STUDYID, STUDYIDN
         The unique study identifier and its numeric version.

      USUBJID
         The unique subject identifier.

      TRTA, TRTAN
         The study intervention and its numeric version, which is either
         ``"Placebo"`` (``1``), ``"Drug 1"`` (``2``), or ``NA`` (``3``),
         missing for screen failures).

      ITTFL
         Intent-to-Treat (ITT) population flag, where ``"Y"`` indicates
         a subject belongs to the ITT population and ``"N"`` indicates a
         subject is not in the ITT population.

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

      DVTERM
         The Protocol Deviation Term.

      PARAMCD, PARAM
         The Parameter Code and decoded parameter description for the
         protocol deviation.

      PARCAT1
         Parameter category. Can be ``"OVERALL"`` for derived PD
         summaries or ``"PROTOCOL DEVIATION"`` for individual PDs.

      DVCAT
         Category for PD, indicating whether the PD is a major one or
         not.

      ACAT1
         Analysis category 1. Only populated for individual PDs, not for
         summary scores. High level category for PDs.

      AVAL
         Analysis Value. Either ``0`` or ``1``.

      CRIT1, CRIT1FL
         Analysis Criterion 1 and analysis criterion 1 flag, indicating
         whether PD is related to COVID-19 or not.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-18

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.9.0`` (Mar 31, 2023)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``peeps``, ``photolysis``, ``pizzaplace``,
      ``reactions``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(rx_addv)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_rx_addv.png
