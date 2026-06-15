========================= ===============
love.sugarcane.uniformity R Documentation
========================= ===============

Uniformity Trial of Sugarcane in Puerto Rico
--------------------------------------------

Description
~~~~~~~~~~~

Uniformity Trial of Sugarcane in Puerto Rico

Usage
~~~~~

.. code:: R

   data("love.sugarcane.uniformity")

Format
~~~~~~

A data frame with 400 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot, pounds

Details
~~~~~~~

Data from an experiment provided by F. Chadron for a first ratoon crop
at Rio Piedras Agricultural Experiment Station.

Field width: 20 "sections" \* 10 feet = 200 feet.

Field length: 20 rows, spaced about 4 feet apart = 80 feet.

Weight in pounds per plot

Note: Love does not give the distance between the rows, but "Soil Survey
of Puerto Rico" says furrows are planted about 4 feet apart.

Love (1943) says the manuscript is based on lecture notes given in 1940,
so the data of the experiment is before 1940.

Transcription details: Data were scanned from source with iPhone,
checked by K.Wright. Thanks to C.Wright for providing a copy of the
source book.

Source
~~~~~~

Love, Harry (1943). Experimental Methods in Agricultural Research. The
Agricultural Experiment Station of the University of Puerto Rico.

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   library(agridat)
   data(love.sugarcane.uniformity)
   dat <- love.sugarcane.uniformity

   require(desplot)
   desplot(dat, yield ~ col*row,
           flip=TRUE, aspect=(20*4)/(20*10),
           main="love.sugarcane.uniformity")

   ## End(Not run)
