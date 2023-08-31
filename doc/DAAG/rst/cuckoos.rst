.. container::

   ======= ===============
   cuckoos R Documentation
   ======= ===============

   .. rubric:: Cuckoo Eggs Data
      :name: cuckoos

   .. rubric:: Description
      :name: description

   Length and breadth measurements of 120 eggs lain in the nests of six
   different species of host bird.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      cuckoos

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   length
      the egg lengths in millimeters

   breadth
      the egg breadths in millimeters

   species
      a factor with levels ``hedge.sparrow``, ``meadow.pipit``,
      ``pied.wagtail``, ``robin``, ``tree.pipit``, ``wren``

   id
      a numeric vector

   .. rubric:: Source
      :name: source

   Latter, O.H. (1902). The eggs of Cuculus canorus. An Inquiry into the
   dimensions of the cuckoo's egg and the relation of the variations to
   the size of the eggs of the foster-parent, with notes on coloration,
   &c. Biometrika i, 164. Tippett (1931) gives summary details of the
   data.

   .. rubric:: References
      :name: references

   Tippett, L.H.C. 1931: "The Methods of Statistics". Williams &
   Norgate, London.

   .. rubric:: Examples
      :name: examples

   .. code:: R

       
      print("Strip and Boxplots - Example 2.1.2")

      attach(cuckoos)
      oldpar <- par(las = 2) # labels at right angle to axis.
      stripchart(length ~ species) 
      boxplot(split(cuckoos$length, cuckoos$species),
               xlab="Length of egg", horizontal=TRUE)
      detach(cuckoos)
      par(oldpar)
      pause()

      print("Summaries - Example 2.2.2")
      sapply(split(cuckoos$length, cuckoos$species), sd)
      pause()

      print("Example 4.1.4")
      wren <- split(cuckoos$length, cuckoos$species)$wren
      median(wren)
      n <- length(wren)
      sqrt(pi/2)*sd(wren)/sqrt(n)  # this s.e. computation assumes normality
