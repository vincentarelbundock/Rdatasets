.. container::

   .. container::

      =============== ===============
      hanks.sprinkler R Documentation
      =============== ===============

      .. rubric:: Wheat yields in a line-source sprinkler experiment
         :name: wheat-yields-in-a-line-source-sprinkler-experiment

      .. rubric:: Description
         :name: description

      Three wheat varieties planted in 3 blocks, with a line sprinkler
      crossing all whole plots.

      .. rubric:: Format
         :name: format

      A data frame with 108 observations on the following 7 variables.

      ``block``
         block

      ``row``
         row

      ``subplot``
         column

      ``gen``
         genotype, 3 levels

      ``yield``
         yield (tons/ha)

      ``irr``
         irrigation level, 1..6

      ``dir``
         direction from sprinkler, N/S

      .. rubric:: Details
         :name: details

      A line-source sprinkler is placed through the middle of the
      experiment (between subplots 6 and 7). Subplots closest to the
      sprinkler receive the most irrigation. Subplots far from the
      sprinkler (near the edges) have the lowest yields.

      One data value was modified from the original (following the
      example of other authors).

      .. rubric:: Source
         :name: source

      Hanks, R.J., Sisson, D.V., Hurst, R.L, and Hubbard K.G. (1980).
      Statistical Analysis of Results from Irrigation Experiments Using
      the Line-Source Sprinkler System. *Soil Science Society of America
      Journal*, 44, 886-888.
      https://doi.org/10.2136/sssaj1980.03615995004400040048x

      .. rubric:: References
         :name: references

      Johnson, D. E., Chaudhuri, U. N., and Kanemasu, E. T. (1983).
      Statistical Analysis of Line-Source Sprinkler Irrigation
      Experiments and Other Nonrandomized Experiments Using Multivariate
      Methods. Soil Science Society American Journal, 47, 309-312.

      Stroup, W. W. (1989). Use of Mixed Model Procedure to Analyze
      Spatially Correlated Data: An Example Applied to a Line-Source
      Sprinkler Irrigation Experiment. Applications of Mixed Models in
      Agriculture and Related Disciplines, Southern Cooperative Series
      Bulletin No. 343, 104-122.

      SAS Stat User's Guide.
      https://support.sas.com/documentation/cdl/en/statug/63347/HTML/default/viewer.htm#statug_mixed_sect038.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(hanks.sprinkler)
           dat <- hanks.sprinkler

           # The line sprinkler is vertical between subplots 6 & 7
           libs(desplot)
           desplot(dat, yield~subplot*row,
                   out1=block, out2=irr, cex=1, # aspect unknown
                   num=gen, main="hanks.sprinkler")
           
           
           libs(lattice)
           xyplot(yield~subplot|block, dat, type=c('b'), group=gen,
                  layout=c(1,3), auto.key=TRUE,
                  main="hanks.sprinkler",
                  panel=function(x,y,...){
                    panel.xyplot(x,y,...)
                    panel.abline(v=6.5, col='wheat')
                  })
           

           ## This is the model from the SAS documentation
           ## proc mixed;
           ## class block gen dir irr;
           ## model yield = gen|dir|irr@2;
           ## random block block*dir block*irr;
           ## repeated / type=toep(4) sub=block*gen r;
          

           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)
               
             dat <- transform(dat, subf=factor(subplot),
                              irrf=factor(irr))
             dat <- dat[order(dat$block, dat$gen, dat$subplot),]
             
             # In asreml3, we can specify corb(subf, 3)
             # In asreml4, only corb(subf, 1) runs.  corb(subf, 3) says:
             # Correlation structure is not positive definite
             m1 <- asreml(yield ~ gen + dir + irrf + gen:dir + gen:irrf + dir:irrf,
                          data=dat,
                          random= ~ block + block:dir + block:irrf,
                          resid = ~ block:gen:corb(subf, 3))
             
             lucid::vc(m1)
             ##                   effect component std.error z.ratio bound 
             ##                    block  0.2195     0.2378    0.92      P 0.5
             ##                block:dir  0.01769    0.03156   0.56      P 0  
             ##               block:irrf  0.03539    0.0362    0.98      P 0.1
             ##         block:gen:subf!R  0.2851     0.05088   5.6       P 0  
             ## block:gen:subf!subf!cor1  0.02829    0.1142    0.25      U 0.9
             ## block:gen:subf!subf!cor2  0.004997   0.1278    0.039     U 9.5
             ## block:gen:subf!subf!cor3 -0.3245     0.09044  -3.6       U 0.1
             
             }


         ## End(Not run)
