.. container::

   === ===============
   bfi R Documentation
   === ===============

   .. rubric:: 25 Personality items representing 5 factors
      :name: personality-items-representing-5-factors

   .. rubric:: Description
      :name: description

   25 personality self report items taken from the International
   Personality Item Pool (ipip.ori.org) were included as part of the
   Synthetic Aperture Personality Assessment (SAPA) web based
   personality assessment project. The data from 2800 subjects are
   included here as a demonstration set for scale construction, factor
   analysis, and Item Response Theory analysis. Three additional
   demographic variables (sex, education, and age) are also included.
   This data set is deprecated and users are encouraged to use ``bfi``.

   .. rubric:: Usage
      :name: usage

   ::

      data(bfi)

   .. rubric:: Format
      :name: format

   A data frame with 2800 observations on the following 28 variables.
   (The q numbers are the SAPA item numbers).

   ``A1``
      Am indifferent to the feelings of others. (q_146)

   ``A2``
      Inquire about others' well-being. (q_1162)

   ``A3``
      Know how to comfort others. (q_1206)

   ``A4``
      Love children. (q_1364)

   ``A5``
      Make people feel at ease. (q_1419)

   ``C1``
      Am exacting in my work. (q_124)

   ``C2``
      Continue until everything is perfect. (q_530)

   ``C3``
      Do things according to a plan. (q_619)

   ``C4``
      Do things in a half-way manner. (q_626)

   ``C5``
      Waste my time. (q_1949)

   ``E1``
      Don't talk a lot. (q_712)

   ``E2``
      Find it difficult to approach others. (q_901)

   ``E3``
      Know how to captivate people. (q_1205)

   ``E4``
      Make friends easily. (q_1410)

   ``E5``
      Take charge. (q_1768)

   ``N1``
      Get angry easily. (q_952)

   ``N2``
      Get irritated easily. (q_974)

   ``N3``
      Have frequent mood swings. (q_1099

   ``N4``
      Often feel blue. (q_1479)

   ``N5``
      Panic easily. (q_1505)

   ``O1``
      Am full of ideas. (q_128)

   ``O2``
      Avoid difficult reading material.(q_316)

   ``O3``
      Carry the conversation to a higher level. (q_492)

   ``O4``
      Spend time reflecting on things. (q_1738)

   ``O5``
      Will not probe deeply into a subject. (q_1964)

   ``gender``
      Males = 1, Females =2

   ``education``
      1 = HS, 2 = finished HS, 3 = some college, 4 = college graduate 5
      = graduate degree

   ``age``
      age in years

   .. rubric:: Details
      :name: details

   This data set is deprecated and users are encouraged to use
   ``bfi``.It is kept here backward compatability for one more release.

   The first 25 items are organized by five putative factors:
   Agreeableness, Conscientiousness, Extraversion, Neuroticism, and
   Opennness. The scoring key is created using ``make.keys``, the scores
   are found using ``score.items``.

   These five factors are a useful example of using ``irt.fa`` to do
   Item Response Theory based latent factor analysis of the
   ``polychoric`` correlation matrix. The endorsement plots for each
   item, as well as the item information functions reveal that the items
   differ in their quality.

   The item data were collected using a 6 point response scale: 1 Very
   Inaccurate 2 Moderately Inaccurate 3 Slightly Inaccurate 4 Slightly
   Accurate 5 Moderately Accurate 6 Very Accurate

   as part of the Synthetic Apeture Personality Assessment (SAPA
   https://www.sapa-project.org/) project. To see an example of the data
   collection technique, visit https://www.sapa-project.org/ or the
   International Cognitive Ability Resource at
   https://icar-project.org/. The items given were sampled from the
   International Personality Item Pool of Lewis Goldberg using the
   sampling technique of SAPA. This is a sample data set taken from the
   much larger SAPA data bank.

   .. rubric:: Note
      :name: note

   This data set is deprecated and users are encouraged to use
   ``bfi``.It is kept here backward compatability for one more release.

   The bfi data set and items should not be confused with the BFI (Big
   Five Inventory) of Oliver John and colleagues (John, O. P., Donahue,
   E. M., & Kentle, R. L. (1991). The Big Five Inventory–Versions 4a and
   54. Berkeley, CA: University of California,Berkeley, Institute of
   Personality and Social Research.)

   .. rubric:: Source
      :name: source

   The items are from the ipip (Goldberg, 1999). The data are from the
   SAPA project (Revelle, Wilt and Rosenthal, 2010) , collected Spring,
   2010 ( https://www.sapa-project.org/).

   .. rubric:: References
      :name: references

   Goldberg, L.R. (1999) A broad-bandwidth, public domain, personality
   inventory measuring the lower-level facets of several five-factor
   models. In Mervielde, I. and Deary, I. and De Fruyt, F. and
   Ostendorf, F. (eds) Personality psychology in Europe. 7. Tilburg
   University Press. Tilburg, The Netherlands.

   Revelle, W., Wilt, J., and Rosenthal, A. (2010) Individual
   Differences in Cognition: New Methods for examining the
   Personality-Cognition Link In Gruszka, A. and Matthews, G. and
   Szymura, B. (Eds.) Handbook of Individual Differences in Cognition:
   Attention, Memory and Executive Control, Springer.

   Revelle, W, Condon, D.M., Wilt, J., French, J.A., Brown, A., and
   Elleman, L.G. (2016) Web and phone based data collection using
   planned missing designs. In Fielding, N.G., Lee, R.M. and Blank, G.
   (Eds). SAGE Handbook of Online Research Methods (2nd Ed), Sage
   Publcations.

   .. rubric:: See Also
      :name: see-also

   ``bi.bars`` to show the data by age and gender, ``irt.fa`` for item
   factor analysis applying the irt model.

   .. rubric:: Examples
      :name: examples

   ::

      data(bfi)
      psych::describe(bfi)
      # create the bfi.keys (actually already saved in the data file)
      keys <-
        list(agree=c("-A1","A2","A3","A4","A5"),conscientious=c("C1","C2","C3","-C4","-C5"),
      extraversion=c("-E1","-E2","E3","E4","E5"),neuroticism=c("N1","N2","N3","N4","N5"),
      openness = c("O1","-O2","O3","O4","-O5")) 

       scores <- psych::scoreItems(keys,bfi,min=1,max=6) #specify the minimum and maximum values
       scores
       #show the use of the fa.lookup with a dictionary
       #psych::keys.lookup(bfi.keys,bfi.dictionary[,1:4])   #deprecated  -- use psychTools
       
