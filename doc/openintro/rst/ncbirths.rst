======== ===============
ncbirths R Documentation
======== ===============

North Carolina births, 1000 cases
---------------------------------

Description
~~~~~~~~~~~

In 2004, the state of North Carolina released to the public a large data
set containing information on births recorded in this state. This data
set has been of interest to medical researchers who are studying the
relation between habits and practices of expectant mothers and the birth
of their children. This is a random sample of 1,000 cases from this data
set.

Usage
~~~~~

::

   ncbirths

Format
~~~~~~

A data frame with 1000 observations on the following 13 variables.

fage
   Father's age in years.

mage
   Mother's age in years.

mature
   Maturity status of mother.

weeks
   Length of pregnancy in weeks.

premie
   Whether the birth was classified as premature (premie) or full-term.

visits
   Number of hospital visits during pregnancy.

gained
   Weight gained by mother during pregnancy in pounds.

weight
   Weight of the baby at birth in pounds.

lowbirthweight
   Whether baby was classified as low birthweight (``low``) or not
   (``not low``).

gender
   Gender of the baby, ``female`` or ``male``.

habit
   Status of the mother as a ``nonsmoker`` or a ``smoker``.

marital
   Whether mother is ``married`` or ``not married`` at birth.

whitemom
   Whether mom is ``white`` or ``not white``.

See Also
~~~~~~~~

We do not have ideal provenance for these data. For a better documented
and more recent dataset on a similar topic with similar variables, see
births14.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(ncbirths, aes(x = habit, y = weight)) +
     geom_boxplot() +
     labs(x = "Smoking status of mother", y = "Birth weight of baby (in lbs)")

   ggplot(ncbirths, aes(x = whitemom, y = visits)) +
     geom_boxplot() +
     labs(x = "Mother's race", y = "Number of doctor visits during pregnancy")

   ggplot(ncbirths, aes(x = mature, y = gained)) +
     geom_boxplot() +
     labs(x = "Mother's age category", y = "Weight gained during pregnancy")
