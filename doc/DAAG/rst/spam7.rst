.. container::

   .. container::

      ===== ===============
      spam7 R Documentation
      ===== ===============

      .. rubric:: Spam E-mail Data
         :name: spam-e-mail-data

      .. rubric:: Description
         :name: description

      The data consist of 4601 email items, of which 1813 items were
      identified as spam. This is a subset of the full dataset, with six
      only of the 57 explanatory variables in the complete dataset.

      .. rubric:: Usage
         :name: usage

      ::

         spam7

      .. rubric:: Format
         :name: format

      Columns included are:

      crl.tot
         total length of uninterrupted sequences of capitals

      dollar
         Occurrences of the dollar sign, as percent of total number of
         characters

      bang
         Occurrences of ‘!’, as percent of total number of characters

      money
         Occurrences of ‘money’, as percent of total number of words

      n000
         Occurrences of the string ‘000’, as percent of total number of
         words

      make
         Occurrences of ‘make’, as a percent of total number of words

      yesno
         outcome variable, a factor with levels ``n`` not spam, ``y``
         spam

      .. rubric:: Source
         :name: source

      George Forman, Hewlett-Packard Laboratories

      The complete dataset, and documentation, are available from `Spam
      database <https://archive.ics.uci.edu/ml/datasets/spambasehttps://archive.ics.uci.edu/ml/datasets/spambase/>`__

      .. rubric:: Examples
         :name: examples

      ::

         require(rpart)
         spam.rpart <- rpart(formula = yesno ~ crl.tot + dollar + bang +
            money + n000 + make, data=spam7)
         plot(spam.rpart)
         text(spam.rpart)
