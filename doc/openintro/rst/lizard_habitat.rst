.. container::

   ============== ===============
   lizard_habitat R Documentation
   ============== ===============

   .. rubric:: Field data on lizards observed in their natural habitat
      :name: field-data-on-lizards-observed-in-their-natural-habitat

   .. rubric:: Description
      :name: description

   Data on here lizard was observed and the level of sunlight. The data
   are collected on *Sceloporus occidentalis* (western fence lizards) by
   Stephen C. Adolph in 1983 (in desert and mountain sites) and by Dee
   Asbury in 2002-3 (in valley site).

   .. rubric:: Usage
      :name: usage

   ::

      lizard_habitat

   .. rubric:: Format
      :name: format

   A data frame with 332 observations on the following 2 variables.

   site
      Site of lizard observation: ``desert``, ``mountain``, or
      ``valley``.

   sunlight
      Sunlight level at time of observation: ``sun`` (lizard was
      observed perching in full sunlight), ``partial`` (lizard was
      observed perching with part of its body in the sun, part in the
      shade), ``shade``\ (lizard was observed perching in the shade).

   .. rubric:: Source
      :name: source

   Adolph, S. C. 1990. Influence of behavioral thermoregulation on
   microhabitat use by two Sceloporus lizards. Ecology 71: 315-327.
   Asbury, D.A., and S. C. Adolph. 2007. Behavioral plasticity in an
   ecological generalist: microhabitat use by western fence lizards.
   Evolutionary Ecology Research 9:801-815.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      # Frequencies
      table(lizard_habitat)

      # Stacked bar plots
      ggplot(lizard_habitat, aes(y = site, fill = sunlight)) +
        geom_bar(position = "fill") +
        labs(x = "Proportion")
