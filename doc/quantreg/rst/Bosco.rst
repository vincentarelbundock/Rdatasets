.. container::

   ===== ===============
   Bosco R Documentation
   ===== ===============

   .. rubric:: Boscovich Data
      :name: Bosco

   .. rubric:: Description
      :name: description

   Boscovich data used to estimate the ellipticity of the earth. There
   are five measurements of the arc length of one degree of latitude
   taken at 5 different latitudes. See Koenker (2005) for further
   details and references.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Bosco)

   .. rubric:: Format
      :name: format

   A data frame containing 5 observations on 2 variables

   x
      sine squared of latitude measured in degrees

   y
      arc length of one degree of latitude measured in toise - 56,700,
      one toise approximately equals 1.95 meters.

   .. rubric:: References
      :name: references

   Koenker, R. (2005), "Quantile Regression", Cambridge.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Bosco)
      plot(0:10/10,0:10*100,xlab="sin^2(latitude)",
              ylab="arc-length of 1 degree of latitude",type="n")
      points(Bosco)
      text(Bosco, pos = 3, rownames(Bosco))
      z <- rq(y ~ x, tau = -1, data = Bosco)
      title("Boscovitch Ellipticity of the Earth Example")
      xb <- c(.85,.9,.6,.6)
      yb <- c(400,600,450,600)
      for(i in 1:4){
              abline(c(z$sol[4:5,i]))
              interval <- paste("t=(",format(round(z$sol[1,i],2)),",",
                      format(round(z$sol[1,i+1],2)),")",delim="")
              text(xb[i],yb[i],interval)
              }
