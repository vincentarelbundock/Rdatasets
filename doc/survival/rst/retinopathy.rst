.. container::

   .. container::

      =========== ===============
      retinopathy R Documentation
      =========== ===============

      .. rubric:: Diabetic Retinopathy
         :name: diabetic-retinopathy

      .. rubric:: Description
         :name: description

      A trial of laser coagulation as a treatment to delay diabetic
      retinopathy.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         retinopathy
         data(retinopathy, package="survival")

      .. rubric:: Format
         :name: format

      A data frame with 394 observations on the following 9 variables.

      ``id``
         numeric subject id

      ``laser``
         type of laser used: ``xenon`` ``argon``

      ``eye``
         which eye was treated: ``right`` ``left``

      ``age``
         age at diagnosis of diabetes

      ``type``
         type of diabetes: ``juvenile`` ``adult``, (diagnosis before age
         20)

      ``trt``
         0 = control eye, 1 = treated eye

      ``futime``
         time to loss of vision or last follow-up

      ``status``
         0 = censored, 1 = loss of vision in this eye

      ``risk``
         a risk score for the eye. This high risk subset is defined as a
         score of 6 or greater in at least one eye.

      .. rubric:: Details
         :name: details

      The 197 patients in this dataset were a 50% random sample of the
      patients with "high-risk" diabetic retinopathy as defined by the
      Diabetic Retinopathy Study (DRS). Each patient had one eye
      randomized to laser treatment and the other eye received no
      treatment, and has two observations in the data set. For each eye,
      the event of interest was the time from initiation of treatment to
      the time when visual acuity dropped below 5/200 two visits in a
      row. Thus there is a built-in lag time of approximately 6 months
      (visits were every 3 months). Survival times in this dataset are
      the actual time to vision loss in months, minus the minimum
      possible time to event (6.5 months). Censoring was caused by
      death, dropout, or end of the study.

      .. rubric:: References
         :name: references

      W. J. Huster, R. Brookmeyer and S. G. Self (1989). Modelling
      paired survival data with covariates, Biometrics 45:145-156.

      A. L. Blair, D. R. Hadden, J. A. Weaver, D. B. Archer, P. B.
      Johnston and C. J. Maguire (1976). The 5-year prognosis for vision
      in diabetes, American Journal of Ophthalmology, 81:383-396.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         coxph(Surv(futime, status) ~ type + trt, cluster= id, retinopathy)
