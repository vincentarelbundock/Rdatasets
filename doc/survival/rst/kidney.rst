.. container::

   .. container::

      ====== ===============
      kidney R Documentation
      ====== ===============

      .. rubric:: Kidney catheter data
         :name: kidney-catheter-data

      .. rubric:: Description
         :name: description

      Data on the recurrence times to infection, at the point of
      insertion of the catheter, for kidney patients using portable
      dialysis equipment. Catheters may be removed for reasons other
      than infection, in which case the observation is censored. Each
      patient has exactly 2 observations.

      This data has often been used to illustrate the use of random
      effects (frailty) in a survival model. However, one of the males
      (id 21) is a large outlier, with much longer survival than his
      peers. If this observation is removed no evidence remains for a
      random subject effect.

      .. rubric:: Usage
         :name: usage

      ::

         kidney
         data(cancer, package="survival")

      .. rubric:: Format
         :name: format

      ======== =========================================
      patient: id
      time:    time
      status:  event status
      age:     in years
      sex:     1=male, 2=female
      disease: disease type (0=GN, 1=AN, 2=PKD, 3=Other)
      frail:   frailty estimate from original paper
      \        
      ======== =========================================

      .. rubric:: Note
         :name: note

      The original paper ignored the issue of tied times and so is not
      exactly reproduced by the survival package.

      .. rubric:: Source
         :name: source

      CA McGilchrist, CW Aisbett (1991), Regression with frailty in
      survival analysis. *Biometrics* **47**, 461–66.

      .. rubric:: Examples
         :name: examples

      ::

         kfit <- coxph(Surv(time, status)~ age + sex + disease + frailty(id), kidney)
         kfit0 <- coxph(Surv(time, status)~ age + sex + disease, kidney)
         kfitm1 <- coxph(Surv(time,status) ~ age + sex + disease + 
                 frailty(id, dist='gauss'), kidney)
