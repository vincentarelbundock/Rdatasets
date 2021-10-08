.. container::

   ====== ===============
   Tal_Or R Documentation
   ====== ===============

   .. rubric:: Data set testing causal direction in presumed media
      influence
      :name: data-set-testing-causal-direction-in-presumed-media-influence

   .. rubric:: Description
      :name: description

   Nurit Tal-Or, Jonanathan Cohen, Yariv Tasfati, and Albert Gunther
   (2010) examined the presumed effect of media on other people and
   change in attitudes. This data set is from Study 2, and examined the
   effect of presumed influence of the media upon subsequent actions. It
   is used as an example of mediation by Hayes (2013) and for the
   mediate function.

   .. rubric:: Usage
      :name: usage

   ::

      data("Tal.Or")

   .. rubric:: Format
      :name: format

   A data frame with 123 observations on the following 6 variables.

   ``cond``
      Experimental Condition: 0 low media importance, 1 high media
      importance

   ``pmi``
      Presumed media influence (based upon the mean of two items

   ``import``
      Importance of the issue

   ``reaction``
      Subjects rated agreement about possible reactions to the story
      (mean of 4 items).

   ``gender``
      1 = male, 2 = female

   ``age``
      a numeric vector

   .. rubric:: Details
      :name: details

   Tal-Or et al. (2010) examined the presumed effect of the media in two
   experimental studies. These data are from study 2. '... perceptions
   regarding the influence of a news story about an expected shortage in
   sugar were manipulated indirectly, by manipulating the perceived
   exposure to the news story, and behavioral intentions resulting from
   the story were consequently measured." (p 801).

   .. rubric:: Source
      :name: source

   The data were downloaded from the webpages of Andrew Hayes
   (https://www.afhayes.com/public/hayes2018data.zip) supporting the
   first and second edition of his book. The name of the original data
   set was pmi. (Gender was recoded to reflect the number of X
   chromosomes).

   The original data are from Nurit Tal-Or, Jonathan Cohen, Yariv
   Tsfati, and Albert C. Gunther and are used with their kind
   permission.

   .. rubric:: References
      :name: references

   Nurit Tal-Or, Jonathan Cohen, Yariv Tsfati and Albert C. Gunther
   (2010), Testing Causal Direction in the Influence of Presumed Media
   Influence, Communication Research, 37, 801-824.

   Hayes, Andrew F. (2013) Introduction to mediation, moderation, and
   conditional process analysis: A regression-based approach. Guilford
   Press.

   .. rubric:: Examples
      :name: examples

   ::

      data(Tal.Or)
      mediate(reaction ~ cond + (pmi), data =Tal.Or,n.iter=50) 
