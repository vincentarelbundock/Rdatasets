.. container::

   .. container::

      ======= ===============
      housing R Documentation
      ======= ===============

      .. rubric:: Homeless Data
         :name: homeless-data

      .. rubric:: Description
         :name: description

      Housing status for 362 severely mentally ill homeless subjects
      measured at baseline and at three follow-up times.

      .. rubric:: Usage
         :name: usage

      ::

         housing

      .. rubric:: Format
         :name: format

      A data frame with 1448 observations on the following 4 variables:

      id
         Subject identifier variable.

      y
         Housing status response, coded as (1) for street living, (2)
         for community living and (3) for independent housing.

      time
         Time recorded in months.

      sec
         Section 8 rent certificate indicator.

      .. rubric:: Source
         :name: source

      Hulrburt M.S., Wood, P.A. and Hough, R.L. (1996) Providing
      independent housing for the homeless mentally ill: a novel
      approach to evaluating longitudinal housing patterns. *Journal of
      Community Psychology*, **24**, 291–310.

      .. rubric:: Examples
         :name: examples

      ::

         data(housing)
         str(housing)
