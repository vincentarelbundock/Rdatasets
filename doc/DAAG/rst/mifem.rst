.. container::

   .. container::

      ====== ===============
      monica R Documentation
      ====== ===============

      .. rubric:: WHO Monica Data
         :name: who-monica-data

      .. rubric:: Description
         :name: description

      The ``monica`` data frame has 6357 rows and 12 columns. The
      dataset ``mifem`` (1295 rows) is the subset that has data for
      females.

      .. rubric:: Usage
         :name: usage

      .. code:: R

           data(monica)
           data(mifem)
           

      .. rubric:: Format
         :name: format

      Columns are:

      outcome
         mortality outcome, a factor with levels ``live``, ``dead``

      age
         age at onset

      sex
         m = male, f = female

      hosp
         y = hospitalized, n = not hospitalized

      yronset
         year of onset

      premi
         previous myocardial infarction event, a factor with levels
         ``y``, ``n``, ``nk`` not known

      smstat
         smoking status, a factor with levels ``c`` current, ``x``
         ex-smoker, ``n`` non-smoker, ``nk`` not known

      diabetes
         a factor with levels ``y``, ``n``, ``nk`` not known

      highbp
         high blood pressure, a factor with levels ``y``, ``n``, ``nk``
         not known

      hichol
         high cholesterol, a factor with levels ``y``, ``n`` ``nk`` not
         known

      angina
         a factor with levels ``y``, ``n``, ``nk`` not known

      stroke
         a factor with levels ``y``, ``n``, ``nk`` not known

      .. rubric:: Source
         :name: source

      Newcastle (Australia) centre of the Monica project; see the web
      site http://www.ktl.fi/monica

      .. rubric:: Examples
         :name: examples

      .. code:: R

         print("CART - Example 10.7")
         summary(monica)
         pause()

         library(rpart)
         monica.rpart <- rpart(outcome ~ ., data = monica, cp = 0.0025)
         plotcp(monica.rpart)
         printcp(monica.rpart)
         pause()
         monicab.rpart <- prune(monica.rpart, cp=0.006)
         print(monicab.rpart)
         summary(mifem)
         pause()
         mifem.rpart <- rpart(outcome ~ ., data = mifem, cp = 0.0025)
         plotcp(mifem.rpart)
         printcp(mifem.rpart)
         pause()

         mifemb.rpart <- prune(mifem.rpart, cp=0.006)
         print(mifemb.rpart)
