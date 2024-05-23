.. container::

   .. container::

      ======== ===============
      Grunfeld R Documentation
      ======== ===============

      .. rubric:: Grunfeld's Investment Data
         :name: grunfelds-investment-data

      .. rubric:: Description
         :name: description

      A balanced panel of 10 observational units (firms) from 1935 to
      1954

      .. rubric:: Format
         :name: format

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

      .. rubric:: Details
         :name: details

      *total number of observations* : 200

      *observation* : production units

      *country* : United States

      .. rubric:: Note
         :name: note

      The Grunfeld data as provided in package ``plm`` is the same data
      as used in Baltagi (2001), see **Examples** below.

      | NB:
      | Various versions of the Grunfeld data circulate online. Also,
        various text books (and also varying among editions) and papers
        use different subsets of the original Grunfeld data, some of
        which contain errors in a few data points compared to the
        original data used by Grunfeld (1958) in his PhD thesis. See
        Kleiber/Zeileis (2010) and its accompanying website for a
        comparison of various Grunfeld data sets in use.

      .. rubric:: Source
         :name: source

      Online complements to Baltagi (2001):

      https://www.wiley.com/legacy/wileychi/baltagi/

      https://www.wiley.com/legacy/wileychi/baltagi/supp/Grunfeld.fil

      Online complements to Baltagi (2013):

      https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

      .. rubric:: References
         :name: references

      Baltagi BH (2001). *Econometric Analysis of Panel Data*, 3rd
      edition. John Wiley and Sons ltd.

      Baltagi BH (2013). *Econometric Analysis of Panel Data*, 5th
      edition. John Wiley and Sons ltd.

      Grunfeld Y (1958). *The determinants of corporate investment*.
      Ph.D. thesis, Department of Economics, University of Chicago.

      Kleiber C, Zeileis A (2010). “The Grunfeld Data at 50.” *German
      Economic Review*, **11**, 404-417.
      https://doi.org/10.1111/j.1468-0475.2010.00513.x.

      website accompanying the paper with various variants of the
      Grunfeld data: https://www.zeileis.org/grunfeld/.

      .. rubric:: See Also
         :name: see-also

      For the complete Grunfeld data (11 firms), see AER::Grunfeld, in
      the ``AER`` package.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
         # Compare plm's Grunfeld data to Baltagi's (2001) Grunfeld data:
           data("Grunfeld", package="plm")
           Grunfeld_baltagi2001 <- read.csv("http://www.wiley.com/legacy/wileychi/
             baltagi/supp/Grunfeld.fil", sep="", header = FALSE)
           library(compare)
           compare::compare(Grunfeld, Grunfeld_baltagi2001, allowAll = T) # same data set
           
         ## End(Not run)
