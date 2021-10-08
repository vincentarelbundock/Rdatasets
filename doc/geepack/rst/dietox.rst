.. container::

   ====== ===============
   dietox R Documentation
   ====== ===============

   .. rubric:: Growth curves of pigs in a 3x3 factorial experiment
      :name: growth-curves-of-pigs-in-a-3x3-factorial-experiment

   .. rubric:: Description
      :name: description

   The ``dietox`` data frame has 861 rows and 7 columns.

   .. rubric:: Usage
      :name: usage

   ::

      dietox

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Weight
      Weight in Kg

   Feed
      Cumulated feed intake in Kg

   Time
      Time (in weeks) in the experiment

   Pig
      Factor; id of each pig

   Evit
      Factor; vitamin E dose; see 'details'.

   Cu
      Factor, copper dose; see 'details'

   Start
      Start weight in experiment, i.e. weight at week 1.

   Litter
      Factor, id of litter of each pig

   .. rubric:: Details
      :name: details

   Data contains weight of slaughter pigs measured weekly for 12 weeks.
   Data also contains the startweight (i.e. the weight at week 1). The
   treatments are 3 different levels of Evit = vitamin E (dose: 0, 100,
   200 mg dl-alpha-tocopheryl acetat /kg feed) in combination with 3
   different levels of Cu=copper (dose: 0, 35, 175 mg/kg feed) in the
   feed. The cumulated feed intake is also recorded. The pigs are
   littermates.

   .. rubric:: Source
      :name: source

   Lauridsen, C., Højsgaard, S.,Sørensen, M.T. C. (1999) Influence of
   Dietary Rapeseed Oli, Vitamin E, and Copper on Performance and
   Antioxidant and Oxidative Status of Pigs. J. Anim. Sci.77:906-916

   .. rubric:: Examples
      :name: examples

   ::


      data(dietox)
      head(dietox)
      ## Not run: 
      if (require(ggplot2)){
        qplot(Time, Weight, data=dietox, col=Pig) + geom_line() +
              theme(legend.position = "none") + facet_grid(Evit~Cu)
      } else {
        coplot(Weight ~ Time | Evit * Cu, data=dietox)
      }

      ## End(Not run)
