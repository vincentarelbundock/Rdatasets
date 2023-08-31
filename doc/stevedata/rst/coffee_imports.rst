.. container::

   ============== ===============
   coffee_imports R Documentation
   ============== ===============

   .. rubric:: Coffee Imports for Select Importing Countries
      :name: coffee_imports

   .. rubric:: Description
      :name: description

   A simple panel on coffee imports for importing countries.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      coffee_imports

   .. rubric:: Format
      :name: format

   A data frame with 4530 observations on the following 4 variables.

   ``country``
      a character vector for the country

   ``member``
      a numeric vector indicating whether the importer is or is not a
      member of the International Coffee Organization

   ``year``
      a numeric vector for the year

   ``value``
      a numeric vector for the coffee imports for all select importing
      countries (in thousand 60-kg bags)

   .. rubric:: Details
      :name: details

   Data come from the International Coffee Organization, of which I feel
   I should be a member.

   Observations for the People's Republic of China are removed because
   those can be obtained by adding together the values for "Macao",
   "Hong Kong", and "China (Mainland)".

   The user may want to be mindful about when 0s in the value data are
   actually communicating that the entry did not exist at the time, or
   no longer exists. For example, there is no independent Armenia in
   1990 (and whatever imports Armenia had are lumped into the USSR value
   for 1990). Likewise, the 0s for the USSR in 1992 are communicating
   the USSR no longer exists that year and you should instead look into
   one of the constituent republics for the information you want. You
   may want to benchmark this information to some kind of state system
   membership data.
