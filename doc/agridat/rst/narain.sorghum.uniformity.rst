========================= ===============
narain.sorghum.uniformity R Documentation
========================= ===============

Uniformity trial of sorghum
---------------------------

Description
~~~~~~~~~~~

Uniformity trial of sorghum in Pakistan, 1936.

Usage
~~~~~

.. code:: R

   data("narain.sorghum.uniformity")

Format
~~~~~~

A data frame with 160 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield, maunds per 1/40 acre

Details
~~~~~~~

A uniformity trial with chari (sorghum) at Rawalpindi Agricultural
Station (Pakistan) in kharif (monsoon season) in 1936. Each plot was 36
feet by 30.25 feet. The source document does not describe the
orientation of the plots, but the fertility map shown in Narain figure 1
shows the plots are taller than wide.

Field width: 10 plots \* 30.25 feet

Field length: 16 plots \* 36 feet

Source
~~~~~~

R. Narain and A. Singh, (1940). A Note on the Shape of Blocks in Field
Experiments. Ind. J. Agr. Sci., 10, 844-853. Page 845.
https://archive.org/stream/in.ernet.dli.2015.271745

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

     data(narain.sorghum.uniformity)
     dat <- narain.sorghum.uniformity
     
     # Narain figure 1
     libs(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=(16*36)/(10*30.25),
             main="narain.sorghum.uniformity")
     

   ## End(Not run)
