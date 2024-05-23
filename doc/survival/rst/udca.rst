.. container::

   .. container::

      ==== ===============
      udca R Documentation
      ==== ===============

      .. rubric:: Data from a trial of usrodeoxycholic acid
         :name: data-from-a-trial-of-usrodeoxycholic-acid

      .. rubric:: Description
         :name: description

      Data from a trial of ursodeoxycholic acid (UDCA) in patients with
      primary biliary cirrohosis (PBC).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         udca
         udca2
         data(udca, package="survival")

      .. rubric:: Format
         :name: format

      A data frame with 170 observations on the following 15 variables.

      ``id``
         subject identifier

      ``trt``
         treatment of 0=placebo, 1=UDCA

      ``entry.dt``
         date of entry into the study

      ``last.dt``
         date of last on-study visit

      ``stage``
         stage of disease

      ``bili``
         bilirubin value at entry

      ``riskscore``
         the Mayo PBC risk score at entry

      ``death.dt``
         date of death

      ``tx.dt``
         date of liver transplant

      ``hprogress.dt``
         date of histologic progression

      ``varices.dt``
         appearance of esphogeal varices

      ``ascites.dt``
         appearance of ascites

      ``enceph.dt``
         appearance of encephalopathy

      ``double.dt``
         doubling of initial bilirubin

      ``worsen.dt``
         worsening of symptoms by two stages

      .. rubric:: Details
         :name: details

      This data set is used in the Therneau and Grambsh. The ``udca1``
      data set contains the baseline variables along with the time until
      the first endpoint (any of death, transplant, ..., worsening). The
      ``udca2`` data set treats all of the endpoints as parallel events
      and has a stratum for each.

      .. rubric:: References
         :name: references

      T. M. Therneau and P. M. Grambsch, Modeling survival data:
      extending the Cox model. Springer, 2000.

      K. D. Lindor, E. R. Dickson, W. P Baldus, R.A. Jorgensen, J.
      Ludwig, P. A. Murtaugh, J. M. Harrison, R. H. Weisner, M. L.
      Anderson, S. M. Lange, G. LeSage, S. S. Rossi and A. F. Hofman.
      Ursodeoxycholic acid in the treatment of primary biliary
      cirrhosis. Gastroenterology, 106:1284-1290, 1994.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # values found in table 8.3 of the book
         fit1 <- coxph(Surv(futime, status) ~ trt + log(bili) + stage,
                   cluster =id , data=udca1)
         fit2 <- coxph(Surv(futime, status) ~ trt + log(bili) + stage +
                   strata(endpoint), cluster=id,  data=udca2)
