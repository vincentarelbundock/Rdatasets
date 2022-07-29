.. container::

   ==== ===============
   ipod R Documentation
   ==== ===============

   .. rubric:: Length of songs on an iPod
      :name: length-of-songs-on-an-ipod

   .. rubric:: Description
      :name: description

   A simulated data set on lengths of songs on an iPod.

   .. rubric:: Usage
      :name: usage

   ::

      ipod

   .. rubric:: Format
      :name: format

   A data frame with 3000 observations on the following variable.

   song_length
      Length of song (in minutes).

   .. rubric:: Source
      :name: source

   Simulated data.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(ipod, aes(x = song_length)) +
        geom_histogram(binwidth = 0.5)
