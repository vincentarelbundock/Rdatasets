========================= ===============
igue.sugarcane.uniformity R Documentation
========================= ===============

Uniformity trial with sugarcane
-------------------------------

Description
~~~~~~~~~~~

Uniformity trial with sugarcane in Brazil, 1982.

Usage
~~~~~

.. code:: R

   data("igue.sugarcane.uniformity")

Format
~~~~~~

A data frame with 1512 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield, kg/plot

Details
~~~~~~~

A uniformity trial with sugarcane in the state of Sao Paulo, Brazil, in
1982. The field was 40 rows, each 90 m long, with 1.5 m between rows.

Field width: 36 plots \* 1.5 m = 54 m

Field length: 42 plots \* 2 m = 84 m

Source
~~~~~~

Toshio Igue, Ademar Espironelo, Heitor Cantarella, Erseni Joao Nelli.
(1991). Tamanho e forma de parcela experimental para cana-de-acucar
(Plot size and shape for sugar cane experiments). Bragantia, 50,
163-180. Appendix, page 169-170.
https://dx.doi.org/10.1590/S0006-87051991000100016

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
     
   data(igue.sugarcane.uniformity)
   dat <- igue.sugarcane.uniformity

   # match Igue CV top row of page 171
   sd(dat$yield)/mean(dat$yield) # 16.4

   libs(desplot)
   desplot(dat, yield ~ col*row,
           flip=TRUE, tick=TRUE, aspect=(42*2)/(36*1.5),
           main="igue.sugarcane.uniformity")
     

   ## End(Not run)  
