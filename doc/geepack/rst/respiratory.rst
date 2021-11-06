.. container::

   =========== ===============
   respiratory R Documentation
   =========== ===============

   .. rubric:: Data from a clinical trial comparing two treatments for a
      respiratory illness
      :name: data-from-a-clinical-trial-comparing-two-treatments-for-a-respiratory-illness

   .. rubric:: Description
      :name: description

   The data are from a clinical trial of patients with respiratory
   illness, where 111 patients from two different clinics were
   randomized to receive either placebo or an active treatment. Patients
   were examined at baseline and at four visits during treatment. The
   respiratory status (categorized as 1 = good, 0 = poor) was determined
   at each visit.

   .. rubric:: Usage
      :name: usage

   ::

      respiratory

   .. rubric:: Format
      :name: format

   A data frame with 444 observations on the following 8 variables.

   center
      a numeric vector

   id
      a numeric vector

   treat
      treatment or placebo

   sex
      M or F

   age
      in years at baseline

   baseline
      resporatory status at baseline

   visit
      id of each of four visits

   outcome
      respiratory status at each visit

   .. rubric:: Examples
      :name: examples

   ::


      data(respiratory)
      data(respiratory, package="geepack")
      respiratory$center <- factor(respiratory$center)
      head(respiratory)

      m1 <- glm(outcome ~ center + treat + age + baseline, data=respiratory,                
                family=binomial())                                                          
      gee.ind <- geeglm(outcome ~ center + treat + age + baseline, data=respiratory, id=id, 
                family=binomial(), corstr="independence")                                   
      gee.exc <- geeglm(outcome ~ center + treat + age + baseline, data=respiratory, id=id, 
                   family=binomial(), corstr="exchangeable")                                
      gee.uns <- geeglm(outcome ~ center + treat + age + baseline, data=respiratory, id=id, 
                   family=binomial(), corstr="unstructured")                                
      gee.ar1 <- geeglm(outcome ~ center + treat + age + baseline, data=respiratory, id=id, 
                   family=binomial(), corstr="ar1")                                         

      mlist <- list(gee.ind, gee.exc, gee.uns, gee.ar1)
      do.call(rbind, lapply(mlist, QIC))
      lapply(mlist, tidy)

