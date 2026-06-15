==== ===============
ipod R Documentation
==== ===============

Length of songs on an iPod
--------------------------

Description
~~~~~~~~~~~

A simulated dataset on lengths of songs on an iPod.

Usage
~~~~~

.. code:: R

   ipod

Format
~~~~~~

A data frame with 3000 observations on the following variable.

song_length
   Length of song (in minutes).

Source
~~~~~~

Simulated data.

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   ggplot(ipod, aes(x = song_length)) +
     geom_histogram(binwidth = 0.5)
