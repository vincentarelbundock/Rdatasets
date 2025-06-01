.. container::

   .. container::

      ==================== ===============
      interaction_triptych R Documentation
      ==================== ===============

      .. rubric:: Interaction Triptych Data
         :name: interaction-triptych-data

      .. rubric:: Description
         :name: description

      This dataset contains 2,700 observations, generated under 3
      different conditions

      -  (1) Ideal case

      -  (2) Floor effect, No latent interaction

      -  (3) Smaller correlation at larger slope

      .. rubric:: Usage
         :name: usage

      .. code:: R

         interaction_triptych

      .. rubric:: Format
         :name: format

      A dataframe with 2700 rows and 5 variables:

      -  ``dataset``: ideal, floor, or smaller correlation at larger
         slope

      -  ``moderator``: a factor that potentially interacts with ``x``,
         values: low, medium, or high

      -  ``x``

      -  ``y``

      .. rubric:: Details
         :name: details

      In the ideal scenario, only the slopes differ by moderator level.
      In the "floor effect" scenario, there is an illusion of an
      interaction, even though only main effects were simulated. In the
      third scenario, the slopes increase with higher moderator values
      but the correlation decreases. Running only a linear model would
      not allow for appropriate differentiation between these effects.

      In each case there is a potential moderator with "low" "medium"
      and "high" values.

      .. rubric:: References
         :name: references

      Rohrer, Julia M., and Ruben C. Arslan. "Precise answers to vague
      questions: Issues with interactions." Advances in Methods and
      Practices in Psychological Science 4.2 (2021): 25152459211007368.
