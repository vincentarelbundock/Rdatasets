.. container::

   =============== ===============
   OilDeapsorbtion R Documentation
   =============== ===============

   .. rubric:: Effect of Ultrasound on Oil Deapsorbtion
      :name: effect-of-ultrasound-on-oil-deapsorbtion

   .. rubric:: Description
      :name: description

   Experiment to measure the effect of ultrasound on deapsorbing oil
   from sand

   .. rubric:: Format
      :name: format

   A data frame with 40 observations on the following 4 variables.

   ``Salt``
      Type of water (``1``\ =salt water or ``0``\ =distilled water)

   ``Ultra``
      Amount of time each sample was exposed to ultrasound (5 or 10
      minutes)

   ``Oil``
      Amount of oil in the sample (5ml or 10 ml)

   ``Diff``
      Difference in the amount of oil removed between the ultrasound run
      and an equivalent control run (no ultrasound) (``Diff`` =
      ``Treatment`` - ``Control``)

   .. rubric:: Details
      :name: details

   This data set is the result of a science fair experiment run by a
   high school student. The basic question was whether exposing sand
   with oil in it (think oil spill) to ultrasound could help the oil
   deapsorb from it better than sand that was not exposed to ultrasound.
   There were two levels of ultrasound tested (5 minutes and 10 minutes)
   and two levels of oil (5 ml and 10 ml). There was also a question of
   whether exposure to salt water or fresh water made a difference so
   half the samples had salt water, the others distilled water. Each
   combination of factor levels was replicated 5 times. There were also
   an equivalent number of control observations run, all factors being
   the same but without any exposure to ultrasound. Each experimental
   run was paired with an appropriate control run and the response
   variable is the difference in the amount of oil removed in the
   experimental run and the control run.

   .. rubric:: Source
      :name: source

   Experiment run by Las Vegas high school student Chris Mathews for a
   science fair project in spring 2016.
