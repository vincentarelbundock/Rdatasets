.. container::

   ========== ===============
   humanpower R Documentation
   ========== ===============

   .. rubric:: Oxygen uptake versus mechanical power, for humans
      :name: humanpower

   .. rubric:: Description
      :name: description

   Data are from Daedalus project; see the reference below.

   .. rubric:: Usage
      :name: usage

   ::

      data(humanpower1)

   .. rubric:: Format
      :name: format

   A data frame with 28 observations on the following 3 variables.

   wattsPerKg
      a numeric vector: watts per kilogram of body weight

   o2
      a numeric vector: ml/min/kg

   id
      a factor with levels 1 - 5 (``humanpower1``) or 1 - 4
      (``humanpower2``), identifying the different athletes

   .. rubric:: Details
      :name: details

   Data in ``humanpower1`` are from investigations (Bussolari 1987)
   designed to assess the feasibility of a proposed 119 kilometer human
   powered flight from the island of Crete – in the initial phase of the
   Daedalus project. Data are for five athletes – a female hockey
   player, a male amateur tri-athlete, a female amateur triathlete, a
   male wrestler and a male cyclist – who were selected from volunteers
   who were recruited through the news media, Data in
   ``humanpower2) are for four out of the 25 applicants who     were selected for further testing, in the lead-up to the eventual     selection of a pilot for the Daedalus project (Nadel and Bussolari 1988).``

   .. rubric:: Source
      :name: source

   Bussolari, S.R.(1987). Human factors of long-distance human-powered
   aircraft flights. Human Power 5: 8-12.

   Nadel and Bussolari, S.R.(1988). The Daedalus project: physiological
   problems and solutions. American Scientist 76: 351-360.

   .. rubric:: References
      :name: references

   Nadel and Bussolari, S.R.(1989). The physiological limits of
   long-duration human-power production – lessons learned from the
   Daedalus project. Human Power 7: 7-10.

   .. rubric:: Examples
      :name: examples

   ::

      str(humanpower1)
      plot(humanpower1)
      lm(o2 ~ id + wattsPerKg:id, data=humanpower1)
      lm(o2 ~ id + wattsPerKg:id, data=humanpower2)
