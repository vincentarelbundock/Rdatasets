.. container::

   ============ ===============
   drone_blades R Documentation
   ============ ===============

   .. rubric:: Quadcopter Drone Blades
      :name: quadcopter-drone-blades

   .. rubric:: Description
      :name: description

   Quality control data set for quadcopter drone blades, where this data
   has been made up for an example.

   .. rubric:: Usage
      :name: usage

   ::

      drone_blades

   .. rubric:: Format
      :name: format

   A data frame with 2000 observations on the following 2 variables.

   supplier
      The supplier for the blade.

   inspection
      The inspection conclusion.

   .. rubric:: References
      :name: references

   OpenIntro Statistics, Third Edition and Fourth Edition.

   .. rubric:: Examples
      :name: examples

   ::


      library(dplyr)

      drone_blades %>%
        count(supplier, inspection)

