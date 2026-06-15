========================= ===============
mercer.mangold.uniformity R Documentation
========================= ===============

Uniformity trial of mangolds
----------------------------

Description
~~~~~~~~~~~

Uniformity trial of mangolds at Rothamsted Experiment Station, England,
1910.

Usage
~~~~~

.. code:: R

   data("mercer.mangold.uniformity")

Format
~~~~~~

A data frame with 200 observations on the following 4 variables.

``row``
   row

``col``
   column

``roots``
   root yields, pounds

``leaves``
   leaf yields, pounds

Details
~~~~~~~

Grown in 1910.

Each plot was 3 drills, each drill being 2.4 feet wide. Plots were 1/200
acres, 7.2 feet by 30.25 feet long The length of the plots runs with the
horizontal lines of figures [in Table I], this being also the direction
of the drills across the field.

Field width: 10 plots \* 30.25ft = 302.5 feet

Field length: 20 plots \* 7.25 ft = 145 feet

Source
~~~~~~

Mercer, WB and Hall, AD, (1911). The experimental error of field trials.
The Journal of Agricultural Science, 4, 107-132. Table 1.
https://doi.org/10.1017/S002185960000160X

References
~~~~~~~~~~

Ehrenberg, P. (1915). Versuch eines Beweises für die Anwendbarkeit der
Wahrscheinlichkeitsrechnung bei Feldversuchen. Die
Landwwirthschaftlichen Versuchs-Stationen 87, 29-88.
https://www.google.com/books/edition/Die_Landwirthschaftlichen_Versuchs_Stati/qFPbIBaHZKUC

McCullagh, P. and Clifford, D., (2006). Evidence for conformal
invariance of crop yields. Proceedings of the Royal Society A:
Mathematical, Physical and Engineering Science, 462, 2119–2143.
https://doi.org/10.1098/rspa.2006.1667

Roemer, Theodor (1920). Der Feldversuch. Page 64, table 5.
https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
     
     data(mercer.mangold.uniformity)
     dat <- mercer.mangold.uniformity
     
     libs(desplot)
     desplot(dat, leaves~col*row,
             aspect=145/302, # true aspect
             main="mercer.mangold.uniformity - leaves")

     libs(desplot)
     desplot(dat, roots~col*row,
             aspect=145/302, # true aspect
             main="mercer.mangold.uniformity - roots")

     libs(lattice)
     xyplot(roots~leaves, data=dat)
     

   ## End(Not run)
