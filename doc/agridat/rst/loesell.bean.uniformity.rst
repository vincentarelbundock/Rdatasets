======================= ===============
loesell.bean.uniformity R Documentation
======================= ===============

Uniformity trial of white pea beans
-----------------------------------

Description
~~~~~~~~~~~

Uniformity trial of white pea beans

Usage
~~~~~

.. code:: R

   data("loesell.bean.uniformity")

Format
~~~~~~

A data frame with 1890 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield, grams per plot

Details
~~~~~~~

Trial conducted at Michigan Agricultural Experiment Station, 1.75 acres.
Beans were planted in rows 28 inches apart on 15 Jun 1932. Plants spaced
1 to 2 inches apart. After planting, an area 210 ft x 210 feet. This
area was divided into 21 columns, each 10 foot wide, and each
containing90 rows.

Field length: 90 rows \* 28 inches = 210 feet.

Field width: 21 series \* 10 feet = 210 feet.

Author's conclusion: Increasing the size of the plot by increasing its
length was more efficient than increasing its width.

Note, the missing values in this dataset are a result of the PDF scan
omitting corners of the table.

Source
~~~~~~

Loesell, Clarence (1936). Size of plot & number of replications
necessary for varietal trials with white pea beans. PhD Thesis, Michigan
State. Table 3, p. 9-10. https://d.lib.msu.edu/etd/5271

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     require(agridat)
     data(loesell.bean.uniformity)
     dat <- loesell.bean.uniformity
     require(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=1, tick=TRUE,
             main="loesell.bean.uniformity")

   ## End(Not run)
