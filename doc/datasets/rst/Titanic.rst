.. container::

   ======= ===============
   Titanic R Documentation
   ======= ===============

   .. rubric:: Survival of passengers on the Titanic
      :name: Titanic

   .. rubric:: Description
      :name: description

   This data set provides information on the fate of passengers on the
   fatal maiden voyage of the ocean liner ‘Titanic’, summarized
   according to economic status (class), sex, age and survival.

   .. rubric:: Usage
      :name: usage

   ::

      Titanic

   .. rubric:: Format
      :name: format

   A 4-dimensional array resulting from cross-tabulating 2201
   observations on 4 variables. The variables and their levels are as
   follows:

   == ======== ===================
   No Name     Levels
   1  Class    1st, 2nd, 3rd, Crew
   2  Sex      Male, Female
   3  Age      Child, Adult
   4  Survived No, Yes
   == ======== ===================

   .. rubric:: Details
      :name: details

   The sinking of the Titanic is a famous event, and new books are still
   being published about it. Many well-known facts—from the proportions
   of first-class passengers to the ‘women and children first’ policy,
   and the fact that that policy was not entirely successful in saving
   the women and children in the third class—are reflected in the
   survival rates for various classes of passenger.

   These data were originally collected by the British Board of Trade in
   their investigation of the sinking. Note that there is not complete
   agreement among primary sources as to the exact numbers on board,
   rescued, or lost.

   Due in particular to the very successful film ‘Titanic’, the last
   years saw a rise in public interest in the Titanic. Very detailed
   data about the passengers is now available on the Internet, at sites
   such as *Encyclopedia Titanica*
   (https://www.encyclopedia-titanica.org/).

   .. rubric:: Source
      :name: source

   Dawson, Robert J. MacG. (1995), The ‘Unusual Episode’ Data Revisited.
   *Journal of Statistics Education*, **3**.
   `doi:10.1080/10691898.1995.11910499 <https://doi.org/10.1080/10691898.1995.11910499>`__.

   The source provides a data set recording class, sex, age, and
   survival status for each person on board of the Titanic, and is based
   on data originally collected by the British Board of Trade and
   reprinted in:

   British Board of Trade (1990), *Report on the Loss of the ‘Titanic’
   (S.S.)*. British Board of Trade Inquiry Report (reprint). Gloucester,
   UK: Allan Sutton Publishing.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      mosaicplot(Titanic, main = "Survival on the Titanic")
      ## Higher survival rates in children?
      apply(Titanic, c(3, 4), sum)
      ## Higher survival rates in females?
      apply(Titanic, c(2, 4), sum)
      ## Use loglm() in package 'MASS' for further analysis ...
