======== ===============
Grunfeld R Documentation
======== ===============

Grunfeld's Investment Data
--------------------------

Description
~~~~~~~~~~~

A balanced panel of 10 observational units (firms) from 1935 to 1954

Format
~~~~~~

A data frame containing :

firm
   observation

year
   date

inv
   gross Investment

value
   value of the firm

capital
   stock of plant and equipment

Details
~~~~~~~

*total number of observations* : 200

*observation* : production units

*country* : United States

Note
~~~~

The Grunfeld data as provided in package ``plm`` is the same data as
used in Baltagi (2001), see **Examples** below.

| NB:
| Various versions of the Grunfeld data circulate online. Also, various
  text books (and also varying among editions) and papers use different
  subsets of the original Grunfeld data, some of which contain errors in
  a few data points compared to the original data used by Grunfeld
  (1958) in his PhD thesis. See Kleiber/Zeileis (2010) and its
  accompanying website for a comparison of various Grunfeld data sets in
  use.

Source
~~~~~~

Online complements to Baltagi (2001):

http://www.wiley.com/legacy/wileychi/baltagi/

http://www.wiley.com/legacy/wileychi/baltagi/supp/Grunfeld.fil

Online complements to Baltagi (2013):

http://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

References
~~~~~~~~~~

Baltagi B (2001). *Econometric Analysis of Panel Data*, 3rd edition.
John Wiley and Sons ltd.

Baltagi B (2013). *Econometric Analysis of Panel Data*, 5th edition.
John Wiley and Sons ltd.

Grunfeld Y (1958). *The determinants of corporate investment*. Ph.D.
thesis, Department of Economics, University of Chicago.

Kleiber C, Zeileis A (2010). “The Grunfeld Data at 50.” *German Economic
Review*, **11**, 404-417.
https://EconPapers.repec.org/RePEc:bla:germec:v:11:y:2010:i::p:404-417.

website accompanying the paper with various variants of the Grunfeld
data: https://eeecon.uibk.ac.at/~zeileis/grunfeld/.

See Also
~~~~~~~~

For the complete Grunfeld data (11 firms), see AER::Grunfeld, in the
``AER`` package.

Examples
~~~~~~~~

::


   ## Not run: 
   # Compare plm's Grunfeld data to Baltagi's (2001) Grunfeld data:
     data("Grunfeld", package="plm")
     Grunfeld_baltagi2001 <- read.csv("http://www.wiley.com/legacy/wileychi/
       baltagi/supp/Grunfeld.fil", sep="", header = FALSE)
     library(compare)
     compare::compare(Grunfeld, Grunfeld_baltagi2001, allowAll = T) # same data set
     
   ## End(Not run)
