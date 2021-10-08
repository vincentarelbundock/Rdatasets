.. container::

   ===================== ===============
   USclassifiedDocuments R Documentation
   ===================== ===============

   .. rubric:: Official Secrecy of the United States Government
      :name: official-secrecy-of-the-united-states-government

   .. rubric:: Description
      :name: description

   Data on classification activity of the United States government.

   Fitzpatrick (2013) notes that the dramatic jump in derivative
   classification activity (``DerivClassActivity``) that occurred in
   2009 coincided with "New guidance issued to include electronic
   environment". Apart from the jump in 2009, the ``DerivClassActivity``
   tended to increase by roughly 12 percent per year (with a standard
   deviation of the increase in the natural logarithm of
   ``DerivClassActivity`` of 0.18).

   .. rubric:: Usage
      :name: usage

   ::

      data(USclassifiedDocuments)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   year
      the calendar year

   OCAuthority
      Number of people in the government designated as Original
      Classification Authorities for the indicated ``year``.

   OCActivity
      Original classification activity for the indicated year: These are
      the number of documents created with an original classification,
      i.e., so designated by an official Original Classification
      Authority.

   TenYearDeclass
      Percent of ``OCActivity`` covered by the 10 year declassification
      rules.

   DerivClassActivity
      Derivative classification activity for the indicated year: These
      are the number of documents created that claim another document as
      the authority for classification.

   .. rubric:: Details
      :name: details

   The lag 1 autocorrelation of the first difference of the logarithms
   of ``DerivClassActivity`` through 2008 is ``-0.52``. However, because
   there are only 13 numbers (12 differences), this negative correlation
   is not statistically significant.

   .. rubric:: Source
      :name: source

   Fitzpatrick, John P. (2013) *Annual Report to the President for
   2012*, United States Information Security Oversight Office, National
   Archives and Record Administration, June 20, 2013. `Information
   Security Oversight Office (ISOO) of the National
   Archives. <https://www.archives.gov/isoo/reports>`__

   .. rubric:: Examples
      :name: examples

   ::

      ##
      ## 1.  plot DerivClassActivity 
      ##
      plot(DerivClassActivity~year, USclassifiedDocuments)
      #  Exponential growth?  

      plot(DerivClassActivity~year, USclassifiedDocuments, 
           log='y')
      # A jump in 2009 as discussed by Fitzpatrick (2013).  
      # Otherwise plausibly a straight line.   

      ##
      ## 2.  First difference? 
      ##
      plot(diff(log(DerivClassActivity))~year[-1], 
           USclassifiedDocuments)
      # Jump in 2009 but otherwise on distribution 

      ##
      ## 3.  autocorrelation?  
      ##
      sel <- with(USclassifiedDocuments, 
                  (1995 < year) & (year < 2009) )
      acf(diff(log(USclassifiedDocuments$
                   DerivClassActivity[sel])))
      # lag 1 autocorrelation = (-0.52).  
      # However, with only 12 numbers, 
      # this is not statistically significant.  
