============== ===============
photo_classify R Documentation
============== ===============

Photo classifications: fashion or not
-------------------------------------

Description
~~~~~~~~~~~

This is a simulated data set for photo classifications based on a
machine learning algorithm versus what the true classification is for
those photos. While the data are not real, they resemble performance
that would be reasonable to expect in a well-built classifier.

Usage
~~~~~

::

   photo_classify

Format
~~~~~~

A data frame with 1822 observations on the following 2 variables.

mach_learn
   The prediction by the machine learning system as to whether the photo
   is about fashion or not.

truth
   The actual classification of the photo by a team of humans.

Details
~~~~~~~

The hypothetical ML algorithm has a precision of 90\\ photos it claims
are fashion, about 90\\ The recall of the ML algorithm is about 64\\
about fashion, it correctly predicts that they are about fashion about
64\\ of the time.

Source
~~~~~~

The data are simulated / hypothetical.

Examples
~~~~~~~~

::


   data(photo_classify)
   table(photo_classify)
