.. container::

   .. container::

      =========== ===============
      OvaryCancer R Documentation
      =========== ===============

      .. rubric:: Ovary Cancer Data
         :name: ovary-cancer-data

      .. rubric:: Description
         :name: description

      Data from Obel (1975) about a retrospective study of ovary cancer
      carried out in 1973. Information was obtained from 299 women, who
      were operated for ovary cancer 10 years before.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("OvaryCancer")

      .. rubric:: Format
         :name: format

      A data frame with 16 observations and 5 variables.

      Freq
         frequency.

      stage
         factor indicating the stage of the cancer at the time of
         operation (early, advanced).

      operation
         factor indicating type of operation (radical, limited).

      survival
         factor indicating survival status after 10 years (yes, no).

      xray
         factor indicating whether X-ray treatment was received (yes,
         no).

      .. rubric:: Source
         :name: source

      E. B. Andersen (1991), The Statistical Analysis of Categorical
      Data, Table 6.4.

      .. rubric:: References
         :name: references

      E. B. Obel (1975), A Comparative Study of Patients with Cancer of
      the Ovary Who Have Survived More or Less Than 10 Years. *Acta
      Obstetricia et Gynecologica Scandinavica*, **55**, 429-439.

      E. B. Andersen (1991), *The Statistical Analysis of Categorical
      Data*. 2nd edition. Springer-Verlag, Berlin.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("OvaryCancer")
         tab <- xtabs(Freq ~ xray + survival + stage + operation, data = OvaryCancer)
         ftable(tab, col.vars = "survival", row.vars = c("stage", "operation", "xray"))

         ## model: ~ xray * operation * stage + survival * stage
         ## interpretation: treat xray, operation, stage as fixed margins,
         ##   the survival depends on stage, but not xray and operation.
         doubledecker(survival ~ stage + operation + xray, data = tab)
         mosaic(~ stage + operation + xray + survival,
           split_vertical = c(FALSE, TRUE, TRUE, FALSE), data = tab, keep_aspect_ratio = FALSE,
           gp = gpar(fill = rev(grey.colors(2))))
         mosaic(~ stage + operation + xray + survival,
           split_vertical = c(FALSE, TRUE, TRUE, FALSE), data = tab, keep_aspect_ratio = FALSE,
           expected = ~ xray * operation * stage + survival*stage)
