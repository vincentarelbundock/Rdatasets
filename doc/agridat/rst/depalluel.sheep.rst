=============== ===============
depalluel.sheep R Documentation
=============== ===============

Latin square of four breeds of sheep with four diets
----------------------------------------------------

Description
~~~~~~~~~~~

Latin square of four breeds of sheep with four diets

Usage
~~~~~

.. code:: R

   data("depalluel.sheep")

Format
~~~~~~

A data frame with 32 observations on the following 5 variables.

``food``
   diet

``animal``
   animal number

``breed``
   sheep breed

``weight``
   weight, pounds

``date``
   months after start

Details
~~~~~~~

This may be the earliest known Latin Square experiment.

Four sheep from each of four breeds were randomized to four feeds and
four slaughter dates.

Sheep that eat roots will eat more than sheep eating corn, but each acre
of land produces more roots than corn.

de Palleuel said: In short, by adopting the use of roots, instead of
corn, for the fattening of all sorts of cattle, the farmers in the
neighborhood of the capital will not only gain great profit themselves,
but will also very much benefit the public by supplying this great city
with resources, and preventing the sudden rise of meat in her markets,
which is often considerable.

Source
~~~~~~

M. Crette de Palluel (1788). On the advantage and economy of feeding
sheep in the house with roots. *Annals of Agriculture*, 14, 133-139.
https://books.google.com/books?id=LXIqAAAAYAAJ&pg=PA133

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

   data(depalluel.sheep)
   dat <- depalluel.sheep

   # Not the best view...weight gain is large in the first month, then slows down
   # and the linear line hides this fact
   libs(lattice)
   xyplot(weight ~ date|food, dat, group=animal, type='l', auto.key=list(columns=4),
          xlab="Months since start",
          main="depalluel.sheep")

   ## End(Not run)
