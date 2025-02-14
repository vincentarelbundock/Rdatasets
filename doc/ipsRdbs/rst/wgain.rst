.. container::

   .. container::

      ===== ===============
      wgain R Documentation
      ===== ===============

      .. rubric:: Weight gain data from 68 first year students during
         their first 12 weeks in college
         :name: weight-gain-data-from-68-first-year-students-during-their-first-12-weeks-in-college

      .. rubric:: Description
         :name: description

      Weight gain data from 68 first year students during their first 12
      weeks in college

      .. rubric:: Usage
         :name: usage

      .. code:: R

         wgain

      .. rubric:: Format
         :name: format

      A data frame with three columns and 68 rows:

      student
         Student number, 1 to 68.

      initial
         Initial weight in kilogram

      final
         Final weight in kilogram

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(wgain)
          plot(wgain$initial, wgain$final)
          abline(0, 1, col="red")
          plot(wgain$initial, wgain$final, xlab="Wt in Week 1", 
          ylab="Wt in Week 12", pch="*", las=1)
          abline(0, 1, col="red")
          title("A scatter plot of the weights in Week 12 against 
          the  weights in Week 1")
          # 95% Confidence interval for mean weight gain 
          x <- wgain$final - wgain$initial
          mean(x) + c(-1, 1) * qt(0.975, df=67) * sqrt(var(x)/68)
          # t-test to test the mean difference equals 0
          t.test(x)
