.. container::

   ======= ===============
   stent30 R Documentation
   ======= ===============

   .. rubric:: Stents for the treatment of stroke
      :name: stent30

   .. rubric:: Description
      :name: description

   An experiment that studies effectiveness of stents in treating
   patients at risk of stroke with some unexpected results. ``stent30``
   represents the results 30 days after stroke and ``stent365``
   represents the results 365 days after stroke.

   .. rubric:: Usage
      :name: usage

   ::

      stent30

   .. rubric:: Format
      :name: format

   A data frame with 451 observations on the following 2 variables.

   group
      a factor with levels ``control`` and ``treatment``

   outcome
      a factor with levels ``no event`` and ``stroke``

   .. rubric:: Source
      :name: source

   Chimowitz MI, Lynn MJ, Derdeyn CP, et al. 2011. Stenting versus
   Aggressive Med- ical Therapy for Intracranial Arterial Stenosis. New
   England Journal of Medicine 365:993- 1003.
   `doi:10.1056/NEJMoa1105335 <https://doi.org/10.1056/NEJMoa1105335>`__.
   NY Times article reporting on the study:
   https://www.nytimes.com/2011/09/08/health/research/08stent.html.

   .. rubric:: Examples
      :name: examples

   ::

      # 30-day results
      table(stent30)

      # 365-day results
      table(stent365)
