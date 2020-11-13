============= ===============
bankingCrises R Documentation
============= ===============

Countries in Banking Crises
---------------------------

Description
~~~~~~~~~~~

A ``data.frame`` identifying which of 70 countries had a banking crisis
each year 1800:2010. The first column is ``year``. The remaining columns
carry the names of the countries; those columns are 1 for years with
banking crises and 0 otherwise.

Usage
~~~~~

::

   data(bankingCrises)

Format
~~~~~~

A ``data.frame``

Details
~~~~~~~

This file was created using the following command:

``bankingCrises`` <- ``readFinancialCrisisFiles(FinancialCrisisFiles)``

HOWEVER: This function was in ``Ecfun`` 0.2-3 but was removed in 0.2-4.
It used ``gdata::read.xls``, and ``gdata`` users were informed that
``gdata`` might be removed from CRAN, and any package that used it would
also be removed. It seemed that the database that this function was
designed to read may not have been updated, which suggested that it made
sense to remove this function, because it there may not be any further
need for it.

This dataset is an update of a subset of the data used to create Figure
10.1. Capital Mobility and the Incidence of Banking Crises, All
Countries, 1800-2008, Reinhart and Rogoff (2009, p. 156).

The general upward trend visible in a plot of these data may be
attributed to at least two different factors:

(1) The gradual increase in the proportion of human labor that is
monetized.

(2) An increase in the general ability of cronies of those in power to
gamble with other people's money in forming and bankrupting financial
institutions. The marked feature of this plot is the virtual absence of
banking crises during the period of the Bretton Woods agreement, 1944 to
1971. This period ended when US President Nixon in effect canceled the
Bretton Woods agreement by taking the US off the silver standard.

Author(s)
~~~~~~~~~

Spencer Graves

Source
~~~~~~

http://www.reinhartandrogoff.com

References
~~~~~~~~~~

Carmen M. Reinhart and Kenneth S. Rogoff (2009) This Time Is Different:
Eight Centuries of Financial Folly, Princeton U. Pr.

Examples
~~~~~~~~

::

   data(bankingCrises)
   numberOfCrises <- rowSums(bankingCrises[-1], na.rm=TRUE)
   plot(bankingCrises$year, numberOfCrises, type='b')

   # Write to a file for Wikimedia Commons
   ## Not run: 
   if(FALSE){
     svg('bankingCrises.svg')
     plot(bankingCrises$year, numberOfCrises, type='b', 
       cex.axis=2, las=1, xlab='', ylab='', bty='n', cex=0.5)
     abline(v=c(1945, 1971), lty='dashed', col='blue')
     text(1958, 14, 'Bretton Woods', srt=90, cex=2, col='blue')
     dev.off()
     }
     
   ## End(Not run)
