.. container::

   ======= ===============
   islands R Documentation
   ======= ===============

   .. rubric:: Areas of the World's Major Landmasses
      :name: islands

   .. rubric:: Description
      :name: description

   The areas in thousands of square miles of the landmasses which exceed
   10,000 square miles.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      islands

   .. rubric:: Format
      :name: format

   A named vector of length 48.

   .. rubric:: Source
      :name: source

   The World Almanac and Book of Facts, 1975, page 406.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      dotchart(log(islands, 10),
         main = "islands data: log10(area) (log10(sq. miles))")
      dotchart(log(islands[order(islands)], 10),
         main = "islands data: log10(area) (log10(sq. miles))")
