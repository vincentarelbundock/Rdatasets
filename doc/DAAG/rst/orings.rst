.. container::

   ====== ===============
   orings R Documentation
   ====== ===============

   .. rubric:: Challenger O-rings Data
      :name: orings

   .. rubric:: Description
      :name: description

   Record of the number and type of O-ring failures prior to the tragic
   Challenger mission in January, 1986.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      orings

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Temperature
      O-ring temperature for each test firing or actual launch of the
      shuttle rocket engine

   Erosion
      Number of erosion incidents

   Blowby
      Number of blowby incidents

   Total
      Total number of incidents

   .. rubric:: Source
      :name: source

   Presidential Commission on the Space Shuttle Challenger Accident,
   Vol. 1, 1986: 129-131.

   .. rubric:: References
      :name: references

   Tufte, E. R. 1997. Visual Explanations. Graphics Press, Cheshire,
   Connecticut, U.S.A.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      oldpar <- par(mfrow=c(1,2))
      plot(Total~Temperature, data = orings[c(1,2,4,11,13,18),]) # the 
                     # observations included in the pre-launch charts
      plot(Total~Temperature, data = orings)
      par(oldpar)
