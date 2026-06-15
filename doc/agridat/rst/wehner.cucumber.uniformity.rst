========================== ===============
wehner.cucumber.uniformity R Documentation
========================== ===============

Uniformity trial of cucumber in North Carolina
----------------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of cucumber in North Carolina

Usage
~~~~~

.. code:: R

   data("wehner.cucumber.uniformity")

Format
~~~~~~

A data frame with 150 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot in number of fruit

Details
~~~~~~~

A uniformity trial was planted in July 1982 near Clinton, North
Carolina. Harvested September when 10 Yield data were considered missing
in plots where the plant stand was at all questionable.

Seeds for the pickling variety 'Calypso' were planted on raised beds in
rows 1.5 m apart. Each row was 25 plots 1.5 m long.

Source
~~~~~~

Todd C. Wehner. (1984). Variation for Yield within Locations in
Homogeneous and Heterogeneous Cucumber Populations Cucurbit Genetics
Cooperative Report, 7, 33-34.
https://cucurbit.info/1984/07/variation-for-yield-within-locations-in-homogeneous-and-heterogeneous-cucumber-populations/

References
~~~~~~~~~~

William H. Swallow and todd C. Wehner (1986). Optimum plot size
determination and its application to cucumber yield trials. Euphytica,
35, 421-432.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     libs(agridat)
     data(wehner.cucumber.uniformity)
     dat <- wehner.cucumber.uniformity

     require(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, tick=TRUE, aspect=(25 * 1.5)/(22 * 1.5),
           main="wehner.cucumber.uniformity")


   ## End(Not run)
