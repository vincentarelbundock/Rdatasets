.. container::

   ===== ===============
   Heart R Documentation
   ===== ===============

   .. rubric:: Sex, Occupation and Heart Disease
      :name: Heart

   .. rubric:: Description
      :name: description

   Classification of individuals by gender, occupational category and
   occurrence of heart disease

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Heart)

   .. rubric:: Format
      :name: format

   A 3-dimensional array resulting from cross-tabulating 3 variables for
   21522 observations. The variable names and their levels are:

   == =========== ===================================
   No Name        Levels
   1  ``Disease`` ``"Disease", "None"``
   2  ``Gender``  ``"Male", "Female"``
   3  ``Occup``   ``"Unempl", "WhiteCol", "BlueCol"``
   \              
   == =========== ===================================

   .. rubric:: Source
      :name: source

   Karger, (1980).

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Heart)
      str(Heart)

      # Display the frequencies for occupational categories.
      # Each row is a 2 x 2 table
      vcd::structable(Disease + Gender ~ Occup, data=Heart)

      # display as fourfold plots
      vcd::cotabplot(~ Disease + Gender | Occup, data=Heart, panel = cotab_fourfold)
