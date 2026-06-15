============= ===============
battingLabels R Documentation
============= ===============

Variable Labels
---------------

Description
~~~~~~~~~~~

These data frames provide descriptive labels for the variables in the
``Batting``, ``Pitching`` and ``Fielding`` files (and related ``*Post``
files). They are useful for plots and other output using ``Label``.

Usage
~~~~~

.. code:: R

   data(battingLabels)

   data(fieldingLabels)

   data(pitchingLabels)

Format
~~~~~~

Each is data frame with observations on the following 2 variables.

``variable``
   variable name

``label``
   variable label

See Also
~~~~~~~~

``Label``

Examples
~~~~~~~~

.. code:: R

   data(battingLabels)
   str(battingLabels)

   require("dplyr")

   # find and plot maximum number of homers per year
   batHR <- Batting %>%
              filter(!is.na(HR)) %>%
              group_by(yearID) %>%
              summarise(max=max(HR))
           
   with(batHR, {
     plot(yearID, max, 
          xlab=Label("yearID"), ylab=paste("Maximum", Label("HR")), 
          cex=0.8)
     lines(lowess(yearID, max), col="blue", lwd=2)
     abline(lm(max ~ yearID), col="red", lwd=2)
       })
