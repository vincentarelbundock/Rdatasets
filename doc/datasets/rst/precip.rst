.. container::

   ====== ===============
   precip R Documentation
   ====== ===============

   .. rubric:: Annual Precipitation in US Cities
      :name: precip

   .. rubric:: Description
      :name: description

   The average amount of precipitation (rainfall) in inches for each of
   70 United States (and Puerto Rico) cities.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      precip

   .. rubric:: Format
      :name: format

   A named vector of length 70.

   .. rubric:: Note
      :name: note

   The dataset version up to Nov.16, 2016 had a typo in
   ``"Cincinnati"``'s name. The examples show how to recreate that
   version.

   .. rubric:: Source
      :name: source

   Statistical Abstracts of the United States, 1975.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      dotchart(precip[order(precip)], main = "precip data")
      title(sub = "Average annual precipitation (in.)")

      ## Old ("wrong") version of dataset (just name change):
      precip.O <- local({
         p <- precip; names(p)[names(p) == "Cincinnati"] <- "Cincinati" ; p })
      stopifnot(all(precip == precip.O),
            match("Cincinnati", names(precip)) == 46,
            identical(names(precip)[-46], names(precip.O)[-46]))
