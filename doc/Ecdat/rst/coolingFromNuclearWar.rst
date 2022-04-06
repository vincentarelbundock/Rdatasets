.. container::

   ===================== ===============
   coolingFromNuclearWar R Documentation
   ===================== ===============

   .. rubric:: Global cooling from a nuclear war
      :name: global-cooling-from-a-nuclear-war

   .. rubric:: Description
      :name: description

   Average surface temperature changes world wide and in the Northern
   Hemisphere 3 and 10 years after the injections of 5, 50 and 150 Tg
   (teragrams = millions of metric tons) of smoke into the upper
   troposphere, per Robock, Oman, and Stenchikov (2007).

   These numbers are relative to the average for 1925-1975, which
   explains why the numbers are positive with smoke = 0.

   .. rubric:: Usage
      :name: usage

   ::

      data(coolingFromNuclearWar)

   .. rubric:: Format
      :name: format

   A dataframe containing :

   smoke
      teragrams = millions of metric tons

   dC3g, dC10g, dC3n, dC10n
      average change in surface temperature 3 and 10 years after
      injection of ``smoke`` into the upper troposphere globally (``g``)
      or in the Northern Hemisphere (``n``) in degrees Celsius.

   .. rubric:: Source
      :name: source

   Alan Robock, Luke Oman, and Georgiy L. Stenchikov (2007) Nuclear
   winter revisited with a modern climate model and current nuclear
   arsenals: Still catastrophic consequences, *Journal of Geophysical
   Research*, 112

   .. rubric:: Examples
      :name: examples

   ::

      data(coolingFromNuclearWar)
      matplot(coolingFromNuclearWar[, 'smoke'], 
          coolingFromNuclearWar[, 2:5], type='l')
      (linFit <- lm(cbind(dC3g, dC10g, dC3n, dC10n)~smoke, 
            coolingFromNuclearWar))
            
      # total change 
      dC <- as.matrix(coolingFromNuclearWar[, 2:5] - 
              rep(unlist(coolingFromNuclearWar[1, -1]), e=4))
      (linFit0 <- lm(dC~smoke, coolingFromNuclearWar))
      summary(linFit0)
