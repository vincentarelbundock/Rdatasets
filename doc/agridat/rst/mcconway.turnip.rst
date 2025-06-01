.. container::

   .. container::

      =============== ===============
      mcconway.turnip R Documentation
      =============== ===============

      .. rubric:: RCB experiment of turnips
         :name: rcb-experiment-of-turnips

      .. rubric:: Description
         :name: description

      RCB experiment of turnips, 2 treatments for planting date and
      density

      .. rubric:: Format
         :name: format

      A data frame with 64 observations on the following 6 variables.

      ``gen``
         genotype

      ``date``
         planting date, levels ``21Aug1990`` ``28Aug1990``

      ``density``
         planting density, 1, 2, 4, 8 kg/ha

      ``block``
         block, 4 levels

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      This is a randomized block experiment with 16 treatments allocated
      at random to each of four blocks. The 16 treatments were
      combinations of two varieties, two planting dates, and four
      densities.

      Lee et al (2008) proposed an analysis using mixed models with
      changing treatment variances.

      Piepho (2009) proposed an ordinary ANOVA using transformed data.

      Used with permission of Kevin McConway.

      .. rubric:: Source
         :name: source

      K. J. McConway, M. C. Jones, P. C. Taylor. Statistical Modelling
      Using Genstat.

      .. rubric:: References
         :name: references

      Michael Berthold, D. J. Hand. Intelligent data analysis: an
      introduction, 1998. Pages 75–82.

      Lee, C.J. and O Donnell, M. and O Neill, M. (2008). Statistical
      analysis of field trials with changing treatment variance.
      Agronomy Journal, 100, 484–489.

      Piepho, H.P. (2009), Data transformation in statistical analysis
      of field trials with changing treatment variance. Agronomy
      Journal, 101, 865–869. https://doi.org/10.2134/agronj2008.0226x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(mcconway.turnip)
         dat <- mcconway.turnip
         dat$densf <- factor(dat$density)

         # Table 2 of Lee et al.
         m0 <- aov( yield ~ gen * densf * date + block, dat )
         summary(m0)
         ##                Df Sum Sq Mean Sq F value   Pr(>F)
         ## gen             1   84.0   83.95   8.753  0.00491 **
         ## densf           3  470.4  156.79  16.347 2.51e-07 ***
         ## date            1  233.7  233.71  24.367 1.14e-05 ***
         ## block           3  163.7   54.58   5.690  0.00216 **
         ## gen:densf       3    8.6    2.88   0.301  0.82485
         ## gen:date        1   36.5   36.45   3.800  0.05749 .
         ## densf:date      3  154.8   51.60   5.380  0.00299 **
         ## gen:densf:date  3   18.0    6.00   0.626  0.60224
         ## Residuals      45  431.6    9.59
         ## ---
         ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

         # Boxplots suggest heteroskedasticity for date, density
         libs("HH")
         interaction2wt(yield ~ gen + date + densf +block, dat,
                        x.between=0, y.between=0,
                        main="mcconway.turnip - yield")


         libs(nlme)
         # Random block model
         m1 <- lme(yield ~ gen * date * densf, random= ~1|block, data=dat)
         summary(m1)
         anova(m1)

         # Multiplicative variance model over densities and dates
         m2 <- update(m1,
                      weights=varComb(varIdent(form=~1|densf),
                        varIdent(form=~1|date)))
         summary(m2)
         anova(m2)

         # Unstructured variance model over densities and dates
         m3 <- update(m1, weights=varIdent(form=~1|densf*date))
         summary(m3)
         anova(m3)

         # Table 3 of Piepho, using transformation
         m4 <- aov( yield^.235 ~ gen * date * densf + block, dat )
         summary(m4)


         ## End(Not run)
