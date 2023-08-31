.. container::

   ======= ===============
   Arrests R Documentation
   ======= ===============

   .. rubric:: Arrests for Marijuana Possession
      :name: Arrests

   .. rubric:: Description
      :name: description

   Data on police treatment of individuals arrested in Toronto for
   simple possession of small quantities of marijuana. The data are part
   of a larger data set featured in a series of articles in the Toronto
   Star newspaper.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Arrests

   .. rubric:: Format
      :name: format

   A data frame with 5226 observations on the following 8 variables.

   released
      Whether or not the arrestee was released with a summons; a factor
      with levels: ``No``; ``Yes``.

   colour
      The arrestee's race; a factor with levels: ``Black``; ``White``.

   year
      1997 through 2002; a numeric vector.

   age
      in years; a numeric vector.

   sex
      a factor with levels: ``Female``; ``Male``.

   employed
      a factor with levels: ``No``; ``Yes``.

   citizen
      a factor with levels: ``No``; ``Yes``.

   checks
      Number of police data bases (of previous arrests, previous
      convictions, parole status, etc. – 6 in all) on which the
      arrestee's name appeared; a numeric vector

   .. rubric:: Source
      :name: source

   Personal communication from Michael Friendly, York University.

   .. rubric:: Examples
      :name: examples

   .. code:: R

        summary(Arrests)
