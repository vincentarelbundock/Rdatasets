.. container::

   .. container::

      ======= ===============
      err_age R Documentation
      ======= ===============

      .. rubric:: Errors in guessing ages of Southampton mathematicians
         :name: errors-in-guessing-ages-of-southampton-mathematicians

      .. rubric:: Description
         :name: description

      Errors in guessing ages of Southampton mathematicians

      .. rubric:: Usage
         :name: usage

      .. code:: R

         err_age

      .. rubric:: Format
         :name: format

      A data frame with 550 rows and 10 columns

      group
         Group number of the students guessing the ages

      size
         Number of students in the group

      females
         How many female guessers were in the group

      photo
         Photograph number guessed, can take value 1 to 10.

      sex
         Gender of the photographed person.

      race
         Race of the photographed person.

      est_age
         Estimated age of the photographed person.

      tru_age
         True age of the photographed person.

      error
         The value of error, estimated age minus true age

      abs_error
         Absolute value of the error

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(err_age)
