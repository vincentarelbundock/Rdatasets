.. container::

   ============= ===============
   InsuranceVote R Documentation
   ============= ===============

   .. rubric:: Congressional Votes on a Health Insurance Bill
      :name: congressional-votes-on-a-health-insurance-bill

   .. rubric:: Description
      :name: description

   Congressional votes on an ObamaCare health insurance bill in 2009

   .. rubric:: Format
      :name: format

   A dataset with 435 observations on the following 9 variables.

   +---------------+-----------------------------------------------------+
   | ``Party``     | Party affiliation: ``D``\ =Democrat or              |
   |               | ``R``\ =Republican                                  |
   +---------------+-----------------------------------------------------+
   | ``Dist.``     | Congressional district (State-Number)               |
   +---------------+-----------------------------------------------------+
   | ``InsVote``   | Vote on the health insurance bill: ``1``\ =yes or   |
   |               | ``0``\ =no                                          |
   +---------------+-----------------------------------------------------+
   | ``Rep``       | Indicator for Republicans                           |
   +---------------+-----------------------------------------------------+
   | ``Dem``       | Indicator for Democrats                             |
   +---------------+-----------------------------------------------------+
   | ``Private``   | Percentage of non-senior citizens in district with  |
   |               | private health insurance                            |
   +---------------+-----------------------------------------------------+
   | ``Public``    | Percentage of non-senior citizens in district with  |
   |               | public health insurance                             |
   +---------------+-----------------------------------------------------+
   | ``Uninsured`` | Percentage of non-senior citizens in district with  |
   |               | no health insurance                                 |
   +---------------+-----------------------------------------------------+
   | ``Obama``     | District winner in 2008 presidential election:      |
   |               | ``1``\ =Obama ``0``\ =McCain                        |
   +---------------+-----------------------------------------------------+
   |               |                                                     |
   +---------------+-----------------------------------------------------+

   .. rubric:: Details
      :name: details

   On 7 November 2009 the U.S. House of Representatives voted, by the
   narrow margin of 220-215, for a bill to enact health insurance
   reform. Most Democrats voted yes while almost all Republicans voted
   no. This dataset contains data for each of the 435 representatives.

   .. rubric:: Source
      :name: source

   | Insurance data are from the American Community Survey
   | (http://www.census.gov/acs/www/data_documentation/data_main/). Roll
     call of congressional votes on this bill can be found at
   | http://clerk.house.gov/evs/2009/roll887.xml.
