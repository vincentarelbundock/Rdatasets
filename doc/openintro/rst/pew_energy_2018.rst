.. container::

   =============== ===============
   pew_energy_2018 R Documentation
   =============== ===============

   .. rubric:: Pew Survey on Energy Sources in 2018
      :name: pew_energy_2018

   .. rubric:: Description
      :name: description

   US-based survey on support for expanding six different sources of
   energy, including solar, wind, offshore drilling, hydrolic fracturing
   ("fracking"), coal, and nuclear.

   .. rubric:: Usage
      :name: usage

   ::

      pew_energy_2018

   .. rubric:: Format
      :name: format

   The format is: List of 6 $ solar_panel_farms : List of responses on
   solar farms. $ wind_turbine_farms : List of responses on wind turbine
   farms. $ offshore_drilling : List of responses on offshore drilling.
   $ hydrolic_fracturing : List of responses on hydrolic fracturing. $
   coal_mining : List of responses on coal mining. $
   nuclear_power_plants: List of responses on nuclear.

   .. rubric:: Details
      :name: details

   We did not have access to individual responses in original data set,
   so we took the published percentages and backed out the breakdown

   .. rubric:: Source
      :name: source

   https://www.pewresearch.org/science/2018/05/14/majorities-see-government-efforts-to-protect-the-environment-as-insufficient/

   .. rubric:: Examples
      :name: examples

   ::

      data(pew_energy_2018)
      lapply(pew_energy_2018, head)
      lapply(pew_energy_2018, length)
      lapply(pew_energy_2018, table)
      Prop <- function(x) {
        table(x) / length(x)
      }
      lapply(pew_energy_2018, Prop)
