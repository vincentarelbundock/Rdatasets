.. container::

   ======= ===============
   myeloma R Documentation
   ======= ===============

   .. rubric:: Survival times of patients with multiple myeloma
      :name: myeloma

   .. rubric:: Description
      :name: description

   Survival times of 3882 subjects with multiple myeloma, seen at Mayo
   Clinic from 1947–1996.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      myeloma
      data("cancer", package="survival")

   .. rubric:: Format
      :name: format

   A data frame with 3882 observations on the following 5 variables.

   ``id``
      subject identifier

   ``year``
      year of entry into the study

   ``entry``
      time from diagnosis of MM until entry (days)

   ``futime``
      follow up time (days)

   ``death``
      status at last follow-up: 0 = alive, 1 = death

   .. rubric:: Details
      :name: details

   Subjects who were diagnosed at Mayo will have ``entry`` =0, those who
   were diagnosed elsewhere and later referred will have positive
   values.

   .. rubric:: References
      :name: references

   R. Kyle, Long term survival in multiple myeloma. New Eng J Medicine,
   1997

   .. rubric:: Examples
      :name: examples

   .. code:: R

      # Incorrect survival curve, which ignores left truncation
      fit1 <- survfit(Surv(futime, death) ~ 1, myeloma)
      # Correct curve
      fit2 <- survfit(Surv(entry, futime, death) ~1, myeloma)
