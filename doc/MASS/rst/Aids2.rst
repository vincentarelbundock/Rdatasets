.. container::

   ===== ===============
   Aids2 R Documentation
   ===== ===============

   .. rubric:: Australian AIDS Survival Data
      :name: australian-aids-survival-data

   .. rubric:: Description
      :name: description

   Data on patients diagnosed with AIDS in Australia before 1 July 1991.

   .. rubric:: Usage
      :name: usage

   ::

      Aids2

   .. rubric:: Format
      :name: format

   This data frame contains 2843 rows and the following columns:

   ``state``
      Grouped state of origin: ``"NSW "``\ includes ACT and ``"other"``
      is WA, SA, NT and TAS.

   ``sex``
      Sex of patient.

   ``diag``
      (Julian) date of diagnosis.

   ``death``
      (Julian) date of death or end of observation.

   ``status``
      ``"A"`` (alive) or ``"D"`` (dead) at end of observation.

   ``T.categ``
      Reported transmission category.

   ``age``
      Age (years) at diagnosis.

   .. rubric:: Note
      :name: note

   This data set has been slightly jittered as a condition of its
   release, to ensure patient confidentiality.

   .. rubric:: Source
      :name: source

   Dr P. J. Solomon and the Australian National Centre in HIV
   Epidemiology and Clinical Research.

   .. rubric:: References
      :name: references

   Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics
   with S.* Fourth edition. Springer.
