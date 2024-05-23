.. container::

   .. container::

      ====================== ===============
      us_contagious_diseases R Documentation
      ====================== ===============

      .. rubric:: Contagious disease data for US states
         :name: contagious-disease-data-for-us-states

      .. rubric:: Description
         :name: description

      Yearly counts for Hepatitis A, Measles, Mumps, Pertussis, Polio,
      Rubella, and Smallpox for US states. Original data courtesy of
      Tycho Project (http://www.tycho.pitt.edu/).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         us_contagious_diseases

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  disease. A factor containing disease names.

      -  state. A factor containing state names.

      -  year.

      -  weeks_reporting. Number of weeks counts were reported that
         year.

      -  count. Total number of reported cases.

      -  population. State population, interpolated for non-census
         years.

      .. rubric:: Source
         :name: source

      `Tycho Project <http://www.tycho.pitt.edu/>`__

      .. rubric:: References
         :name: references

      Willem G. van Panhuis, John Grefenstette, Su Yon Jung, Nian Shong
      Chok, Anne Cross, Heather Eng, Bruce Y Lee, Vladimir Zadorozhny,
      Shawn Brown, Derek Cummings, Donald S. Burke. Contagious Diseases
      in the United States from 1888 to the present. NEJM 2013; 369(22):
      2152-2158.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(us_contagious_diseases)
