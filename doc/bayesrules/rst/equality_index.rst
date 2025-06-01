.. container::

   .. container::

      ============== ===============
      equality_index R Documentation
      ============== ===============

      .. rubric:: LGBTQ+ Rights Laws by State
         :name: lgbtq-rights-laws-by-state

      .. rubric:: Description
         :name: description

      Data on the number of LGBTQ+ equality laws (as of 2019) and
      demographics in each U.S. state.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         equality_index

      .. rubric:: Format
         :name: format

      A data frame with 50 observations, one per state, and 6 variables:

      state
         state name

      region
         region in which the state falls

      gop_2016
         percent of the 2016 presidential election vote earned by the
         Republican ("GOP") candidate

      laws
         number of LGBTQ+ rights laws (as of 2019)

      historical
         political leaning of the state over time (gop = Republican, dem
         = Democrat, swing = swing state)

      percent_urban
         percent of state's residents that live in urban areas (by the
         2010 census)

      .. rubric:: Source
         :name: source

      Data on LGBTQ+ laws were obtained from Warbelow, Sarah, Courtnay
      Avant, and Colin Kutney (2020). 2019 State Equality Index.
      Washington, DC. Human Rights Campaign Foundation.
      https://assets2.hrc.org/files/assets/resources/HRC-SEI-2019-Report.pdf?_ga=2.148925686.1325740687.1594310864-1928808113.1594310864&_gac=1.213124768.1594312278.EAIaIQobChMI9dP2hMzA6gIVkcDACh21GgLEEAAYASAAEgJiJvD_BwE/.
      Data on urban residency obtained from
      https://www.icip.iastate.edu/tables/population/urban-pct-states/.
