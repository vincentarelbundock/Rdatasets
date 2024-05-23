.. container::

   .. container::

      ====== ===============
      Minard R Documentation
      ====== ===============

      .. rubric:: Data from Minard's famous graphic map of Napoleon's
         march on Moscow
         :name: data-from-minards-famous-graphic-map-of-napoleons-march-on-moscow

      .. rubric:: Description
         :name: description

      Charles Joseph Minard's graphic depiction of the fate of
      Napoleon's Grand Army in the Russian campaign of 1815 has been
      called the "greatest statistical graphic ever drawn" (Tufte,
      1983). Friendly (2002) describes some background for this graphic,
      and presented it as Minard's Challenge: to reproduce it using
      modern statistical or graphic software, in a way that showed the
      elegance of some computer language to both describe and produce
      this graphic.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Minard.troops)
         data(Minard.cities)
         data(Minard.temp)

      .. rubric:: Format
         :name: format

      ``Minard.troops``: A data frame with 51 observations on the
      following 5 variables giving the number of surviving troops.

      ``long``
         Longitude

      ``lat``
         Latitude

      ``survivors``
         Number of surviving troops, a numeric vector

      ``direction``
         a factor with levels ``A`` ("Advance") ``R`` ("Retreat")

      ``group``
         a numeric vector

      ``Minard.cities``: A data frame with 20 observations on the
      following 3 variables giving the locations of various places along
      the path of Napoleon's army.

      ``long``
         Longitude

      ``lat``
         Latitude

      ``city``
         City name: a factor with levels ``Bobr`` ``Chjat`` ...
         ``Witebsk`` ``Wixma``

      ``Minard.temp``: A data frame with 9 observations on the following
      4 variables, giving the temperature at various places along the
      march of retreat from Moscow.

      ``long``
         Longitude

      ``temp``
         Temperature

      ``days``
         Number of days on the retreat march

      ``date``
         a factor with levels ``Dec01`` ``Dec06`` ``Dec07`` ``Nov09``
         ``Nov14`` ``Nov28`` ``Oct18`` ``Oct24``

      .. rubric:: Details
         :name: details

      ``date`` in ``Minard.temp`` should be made a real date in 1815.

      .. rubric:: Source
         :name: source

      https://www.cs.uic.edu/~wilkinson/TheGrammarOfGraphics/minard.txt

      .. rubric:: References
         :name: references

      Friendly, M. (2002). Visions and Re-visions of Charles Joseph
      Minard, *Journal of Educational and Behavioral Statistics*, 27,
      No. 1, 31-51.

      Friendly, M. (2003). Re-Visions of Minard.
      http://datavis.ca/gallery/re-minard.html

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Minard.troops)
         data(Minard.cities)
         data(Minard.temp)

         ## Not run: 
         #' ## Load required packages
         require(ggplot2)
         require(scales)
         require(gridExtra)

         #' ## plot path of troops, and another layer for city names
          plot_troops <- ggplot(Minard.troops, aes(long, lat)) +
                 geom_path(aes(size = survivors, colour = direction, group = group),
                          lineend = "round", linejoin = "round")
          plot_cities <- geom_text(aes(label = city), size = 4, data = Minard.cities)
          
         #' ## Combine these, and add scale information, labels, etc.
         #' Set the x-axis limits for longitude explicitly, to coincide with those for temperature

         breaks <- c(1, 2, 3) * 10^5 
         plot_minard <- plot_troops + plot_cities +
             scale_size("Survivors", range = c(1, 10), 
                         breaks = breaks, labels = scales::comma(breaks)) +
           scale_color_manual("Direction", 
                              values = c("grey50", "red"), 
                              labels=c("Advance", "Retreat")) +
           coord_cartesian(xlim = c(24, 38)) +
           xlab(NULL) + 
           ylab("Latitude") + 
           ggtitle("Napoleon's March on Moscow") +
           theme_bw() +
           theme(legend.position=c(.8, .2), legend.box="horizontal")
          
         #' ## plot temperature vs. longitude, with labels for dates
         plot_temp <- ggplot(Minard.temp, aes(long, temp)) +
             geom_path(color="grey", size=1.5) +
             geom_point(size=2) +
             geom_text(aes(label=date)) +
             xlab("Longitude") + ylab("Temperature") +
             coord_cartesian(xlim = c(24, 38)) + 
             theme_bw()
             

         #' The plot works best if we  re-scale the plot window to an aspect ratio of ~ 2 x 1
         # windows(width=10, height=5)

         #' Combine the two plots into one
         grid.arrange(plot_minard, plot_temp, nrow=2, heights=c(3,1))


         ## End(Not run)
