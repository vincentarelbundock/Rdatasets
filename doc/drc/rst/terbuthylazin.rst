============= ===============
terbuthylazin R Documentation
============= ===============

The effect of terbuthylazin on growth rate
------------------------------------------

Description
~~~~~~~~~~~

Test on the effect of terbuthylazin on *Lemna minor*, performed on an
aseptic culture according to the OECD-guidelines.

Usage
~~~~~

::

   data(terbuthylazin)

Format
~~~~~~

A data frame with 30 observations on the following 2 variables.

dose
   a numeric vector of dose values.

rgr
   a numeric vector of relative growth rates.

Details
~~~~~~~

Dose is

*μ l^{-1}*

and rgr is the relative growth rate of *Lemna*.

Source
~~~~~~

Cedergreen N. (2004). Unpublished bioassay data.

Examples
~~~~~~~~

::


   ## displaying first 6 rows of the data set
   head(terbuthylazin)

   ## Fitting log-logistic model
   terbuthylazin.m1 <- drm(rgr~dose, data = terbuthylazin, fct = LL.4())
   summary(terbuthylazin.m1)

   ## Fitting log-logistic model
   ##  with Box-Cox transformation
   terbuthylazin.m2 <- boxcox(terbuthylazin.m1, method = "anova")
   summary(terbuthylazin.m2)
