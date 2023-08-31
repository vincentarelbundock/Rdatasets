.. container::

   ======== ===============
   Hauser79 R Documentation
   ======== ===============

   .. rubric:: Hauser (1979) Data on Social Mobility
      :name: Hauser79

   .. rubric:: Description
      :name: description

   Hauser (1979) presented this two-way frequency table,
   cross-classifying occupational categories of sons and fathers in the
   United States.

   It is a good example for exploring a variety of models for square
   tables: quasi-independence, quasi-symmetry, row/column effects,
   uniform association, etc., using the facilities of the gnm.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Hauser79)

   .. rubric:: Format
      :name: format

   A frequency data frame with 25 observations on the following 3
   variables, representing the cross-classification of 19912 individuals
   by father's occupation and son's first occupation.

   ``Son``
      a factor with levels ``UpNM`` ``LoNM`` ``UpM`` ``LoM`` ``Farm``

   ``Father``
      a factor with levels ``UpNM`` ``LoNM`` ``UpM`` ``LoM`` ``Farm``

   ``Freq``
      a numeric vector

   .. rubric:: Details
      :name: details

   Hauser's data was first presented in 1979, and then published in
   1980. The name of the dataset reflects the earliest use.

   It reflects the "frequencies in a classification of son's first
   full-time civilian occupation by father's (or other family head's)
   occupation at son's sixteenth birthday among American men who were
   aged 20 to 64 in 1973 and were not currently enrolled in school".

   As noted in Hauser's Table 1, "Counts are based on observations
   weighted to estimate population counts and compensate for departures
   of the sampling design from simple random sampling. Broad occupation
   groups are upper nonmanual: professional and kindred workers,
   managers and officials, and non-retail sales workers; lower
   nonmanual: proprietors, clerical and kindred workers, and retail
   sales workers; upper manual: craftsmen, foremen, and kindred workers;
   lower manual: service workers, operatives and kindred workers, and
   laborers (except farm); farm: farmers and farm managers, farm
   laborers, and foremen. density of mobility or immobility in the cells
   to which they refer."

   The table levels for ``Son`` and ``Father`` have been arranged in
   order of decreasing status as is common for mobility tables.

   .. rubric:: Source
      :name: source

   R.M. Hauser (1979), Some exploratory methods for modeling mobility
   tables and other cross-classified data. In: K.F. Schuessler (Ed.),
   *Sociological Methodology*, 1980, Jossey-Bass, San Francisco, pp.
   413-458. Table 1.

   .. rubric:: References
      :name: references

   Powers, D.A. and Xie, Y. (2008). *Statistical Methods for Categorical
   Data Analysis*, Bingley, UK: Emerald.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Hauser79)
      str(Hauser79)

      # display table
      structable(~Father+Son, data=Hauser79)

      #Examples from Powers & Xie, Table 4.15
      # independence model
      mosaic(Freq ~ Father + Son, data=Hauser79, shade=TRUE)

      hauser.indep <- gnm(Freq ~ Father + Son, 
        data=Hauser79, 
        family=poisson)

      mosaic(hauser.indep, ~Father+Son, 
             main="Independence model", 
             gp=shading_Friendly)

      # Quasi-independence
      hauser.quasi <-  update(hauser.indep, 
                              ~ . + Diag(Father,Son))
      mosaic(hauser.quasi, ~Father+Son, 
             main="Quasi-independence model", 
             gp=shading_Friendly)

      # Quasi-symmetry
      hauser.qsymm <-  update(hauser.indep, 
                              ~ . + Diag(Father,Son) + Symm(Father,Son))

      mosaic(hauser.qsymm, ~Father+Son, 
             main="Quasi-symmetry model", 
             gp=shading_Friendly)


      # numeric scores for row/column effects
      Sscore <- as.numeric(Hauser79$Son)
      Fscore <- as.numeric(Hauser79$Father)

      # row effects model
      hauser.roweff <- update(hauser.indep, ~ . + Father*Sscore)
      LRstats(hauser.roweff)

      # uniform association
      hauser.UA <- update(hauser.indep, ~ . + Fscore*Sscore)
      LRstats(hauser.UA)

      # uniform association, omitting diagonals
      hauser.UAdiag <- update(hauser.indep, ~ . + Fscore*Sscore + Diag(Father,Son))
      LRstats(hauser.UAdiag)

      # Levels for Hauser 5-level model
      levels <- matrix(c(
        2,  4,  5,  5,  5,
        3,  4,  5,  5,  5,
        5,  5,  5,  5,  5,
        5,  5,  5,  4,  4,
        5,  5,  5,  4,  1
        ), 5, 5, byrow=TRUE)

      hauser.topo <- update(hauser.indep, 
                            ~ . + Topo(Father, Son, spec=levels))

      mosaic(hauser.topo, ~Father+Son, 
             main="Topological model", gp=shading_Friendly)

      # RC model
      hauser.RC <- update(hauser.indep, ~ . + Mult(Father, Son), verbose=FALSE)
      mosaic(hauser.RC, ~Father+Son, main="RC model", gp=shading_Friendly)
      LRstats(hauser.RC)

      # crossings models 
      hauser.CR <- update(hauser.indep, ~ . + Crossings(Father,Son))
      mosaic(hauser.topo, ~Father+Son, main="Crossings model", gp=shading_Friendly)
      LRstats(hauser.CR)

      hauser.CRdiag <- update(hauser.indep, ~ . + Crossings(Father,Son) + Diag(Father,Son))
      LRstats(hauser.CRdiag)


      # compare model fit statistics
      modlist <- glmlist(hauser.indep, hauser.roweff, hauser.UA, hauser.UAdiag, 
                         hauser.quasi, hauser.qsymm,  hauser.topo, 
                         hauser.RC, hauser.CR, hauser.CRdiag)
      sumry <- LRstats(modlist)
      sumry[order(sumry$AIC, decreasing=TRUE),]
      # or, more simply
      LRstats(modlist, sortby="AIC")

      mods <- substring(rownames(sumry),8)
      with(sumry,
          {plot(Df, AIC, cex=1.3, pch=19, xlab='Degrees of freedom', ylab='AIC')
          text(Df, AIC, mods, adj=c(0.5,-.5), col='red', xpd=TRUE)
          })
