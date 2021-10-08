.. container::

   ===== ===============
   spam7 R Documentation
   ===== ===============

   .. rubric:: Spam E-mail Data
      :name: spam-e-mail-data

   .. rubric:: Description
      :name: description

   The data consist of 4601 email items, of which 1813 items were
   identified as spam.

   .. rubric:: Usage
      :name: usage

   ::

      spam7

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   crl.tot
      total length of words in capitals

   dollar
      number of occurrences of the \\$ symbol

   bang
      number of occurrences of the ! symbol

   money
      number of occurrences of the word ‘money’

   n000
      number of occurrences of the string ‘000’

   make
      number of occurrences of the word ‘make’

   yesno
      outcome variable, a factor with levels ``n`` not spam, ``y`` spam

   .. rubric:: Source
      :name: source

   George Forman, Hewlett-Packard Laboratories

   These data are available from the University of California at Irvine
   Repository of Machine Learning Databases and Domain Theories. The
   address is: http://www.ics.uci.edu/~Here

   .. rubric:: Examples
      :name: examples

   ::

      require(rpart)
      spam.rpart <- rpart(formula = yesno ~ crl.tot + dollar + bang +
         money + n000 + make, data=spam7)
      plot(spam.rpart)
      text(spam.rpart)
