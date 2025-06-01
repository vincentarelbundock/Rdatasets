.. container::

   .. container::

      ========================= ===============
      jurowski.wheat.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of wheat in Russia
         :name: uniformity-trial-of-wheat-in-russia

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat in Russia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("jurowski.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 480 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, Pud per plot

      .. rubric:: Details
         :name: details

      The experiment was conducted in Russia at Ofrossimowka. This word
      "Ofrossimowka" appeared in the German text of Sapehin, but is
      otherwise extremely difficult to find. There may be alternate ways
      the actual Russian name is translated into German/English.

      Likewise, the name "Jurowski" is very difficult to find and may
      have other transliterations.

      Sapehin gives the original source as: Arbeiten d. Vers.-St. d.
      Russ. Ges. f. Zuckerind. 1913. which may expand to Arbeiten der
      Versuchsstationen der Russ. Ges. f. Zuckerindustrie. 1913.

      Sepehin appendix says the plot size is "4 x 12 m^2". It is not
      clear which plot dimension is 4 m and which is 12 m. If 4m wide
      12m tall, then field is 48m wide x 480m long. If 4m tall 12m wide,
      then field is 144m wide x 160m long. This seems much more likely.

      Sapehin says the std dev is "21.8 pud". A "pud" is a Russian unit
      of weight equal to 16.38 kilograms.

      Data converted by OCR from Sapehin and hand-checked by K.Wright.

      .. rubric:: Source
         :name: source

      Sapehin, A. A. (1927). Beitrage zur Methodik des Feldversuches.
      Die Landwirtschaflichen Versuchsstationen, 105, 243-259.
      https://www.google.com/books/edition/Die_Landwirthschaftlichen_Versuchs_Stati/cLZGAAAAYAAJ?hl=en&pg=PA243

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(jurowski.wheat.uniformity)
           dat <- jurowski.wheat.uniformity
           
           sd(dat$yield)
           libs(desplot)
           desplot(dat, yield~col*row,
                   aspect=(40*4)/(12*12), flip=TRUE, tick=TRUE,
                   main="jurowski.wheat.uniformity")

         ## End(Not run)
