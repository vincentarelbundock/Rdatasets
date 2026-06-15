============ ===============
episodes_raw R Documentation
============ ===============

Each episodes' challenges (raw)
-------------------------------

Description
~~~~~~~~~~~

Details about the three challenges (signature, technical, and
showstopper) for each baker/episode across all 10 GBBO series.

Usage
~~~~~

.. code:: R

   episodes_raw

Format
~~~~~~

A data frame with 704 rows representing individual bakers per episode
and 6 variables:

series
   A factor denoting UK series (``1``-``10``).

episode
   A factor denoting episode number within a series.

baker
   A character string giving given or nickname.

signature
   A character string containing the bake for the signature challenge
   for that baker/episode.

technical
   An integer denoting the rank on the technical challenge for that
   baker/episode. A rank of ``1`` is winner of the technical challenge.

showstopper
   A character string containing the bake for the showstopper challenge
   for that baker/episode.

Source
~~~~~~

See https://en.wikipedia.org/wiki/The_Great_British_Bake_Off#Format

Examples
~~~~~~~~

.. code:: R

   if (require('tibble')) {
     episodes_raw
    }
   head(episodes_raw)
