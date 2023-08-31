.. container::

   == ===============
   TV R Documentation
   == ===============

   .. rubric:: TV Viewing Data
      :name: TV

   .. rubric:: Description
      :name: description

   This data set ``TV`` comprises a 5 x 11 x 3 contingency table based
   on audience viewing data from Neilsen Media Research for the week
   starting November 6, 1995.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(TV)

   .. rubric:: Format
      :name: format

   A 5 x 11 x 3 array of cell frequencies with the following structure:

   ::

       int [1:5, 1:11, 1:3] 146 244 233 174 294 151 181 161 183 281 ...
       - attr(*, "dimnames")=List of 3
        ..$ Day    : chr [1:5] "Monday" "Tuesday" "Wednesday" "Thursday" ...
        ..$ Time   : chr [1:11] "8:00" "8:15" "8:30" "8:45" ...
        ..$ Network: chr [1:3] "ABC" "CBS" "NBC"

   .. rubric:: Details
      :name: details

   The original data, ``tv.dat``, contains two additional networks:
   "Fox" and "Other", with small frequencies. These levels were removed
   in the current version. There is also a fourth factor, transition
   State transition (turn the television Off, Switch channels, or
   Persist in viewing the current channel). The ``TV`` data here
   includes only the Persist observations.

   .. rubric:: Source
      :name: source

   The original data, ``tv.dat``, came from the initial implementation
   of mosaic displays in R by Jay Emerson (1998). Similar data had been
   used by Hartigan and Kleiner (1984) as an illustration.

   .. rubric:: References
      :name: references

   Friendly, M. and Meyer, D. (2016). *Discrete Data Analysis with R:
   Visualization and Modeling Techniques for Categorical and Count
   Data*. Boca Raton, FL: Chapman & Hall/CRC. http://ddar.datavis.ca.

   Emerson, John W. Mosaic Displays in S-PLUS: A General Implementation
   and a Case Study. *Statistical Graphics and Computing Newsletter*,
   1998, 9(1), 17–23, http://www.stat.yale.edu/~jay/R/mosaic/v91.pdf

   Hartigan, J. A. & Kleiner, B. A Mosaic of Television Ratings. *The
   American Statistician*, 1984, 38, 32-35.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(TV)
      structable(TV)
      doubledecker(TV)

      # reduce number of levels of Time
      TV.df <- as.data.frame.table(TV)
      levels(TV.df$Time) <- rep(c("8:00-8:59", "9:00-9:59", "10:00-10:44"), 
                                c(4, 4, 3))

      TV2 <- xtabs(Freq ~ Day + Time + Network, TV.df)

      # re-label for mosaic display
      levels(TV.df$Time) <- c("8", "9", "10")
      # fit mode of joint independence, showing association of Network with Day*Time
      mosaic(~ Day + Network + Time, 
        data = TV.df, 
        expected = ~ Day:Time + Network, 
        legend = FALSE)


      # with doubledecker arrangement
      mosaic(~ Day + Network + Time, 
        data = TV.df, 
        expected = ~ Day:Time + Network,
        split = c(TRUE, TRUE, FALSE), 
        spacing = spacing_highlighting, 
        legend = FALSE)
