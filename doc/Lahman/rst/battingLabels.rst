.. container::

   .. container::

      ============= ===============
      battingLabels R Documentation
      ============= ===============

      .. rubric:: Variable Labels
         :name: variable-labels

      .. rubric:: Description
         :name: description

      These data frames provide descriptive labels for the variables in
      the ``Batting``, ``Pitching`` and ``Fielding`` files (and related
      ``*Post`` files). They are useful for plots and other output using
      ``Label``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(battingLabels)

         data(fieldingLabels)

         data(pitchingLabels)

      .. rubric:: Format
         :name: format

      Each is data frame with observations on the following 2 variables.

      ``variable``
         variable name

      ``label``
         variable label

      .. rubric:: See Also
         :name: see-also

      ``Label``

      .. rubric:: Examples
         :name: examples

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
