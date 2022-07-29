.. container::

   ==== ===============
   ODGI R Documentation
   ==== ===============

   .. rubric:: Ozone Depleting Gas Index Data, 1992-2019
      :name: ozone-depleting-gas-index-data-1992-2019

   .. rubric:: Description
      :name: description

   The NOAA Earth System Research Laboratory has an "ozone depleting gas
   index" (ODGI) data set from 1992 to 2018. This dataset summarizes
   Table 1 and Table 2 from its website. The primary interest here (for
   my purposes) is the ODGI indices (including the new 2012 measure).
   The data set includes constituent greenhouse gases/chlorines as well
   in parts per trillion. The primary use here is for in-class
   illustration.

   .. rubric:: Usage
      :name: usage

   ::

      ODGI

   .. rubric:: Format
      :name: format

   A data frame with 56 observations on the following 16 variables.

   ``year``
      the year

   ``cat``
      categorical variable for the Antarctic or Mid-Latitudes
      measurements

   ``cfc12``
      CFC-12 concentration in parts per trillion

   ``cfc11``
      CFC-11 concentration in parts per trillion

   ``ch3cl``
      chloromethane concentration in parts per trillion

   ``ch3br``
      bromomethane concentration in parts per trillion

   ``ccl4``
      carbon tetrachloride concentration in parts per trillion

   ``ch3ccl3``
      methyl chloroform concentration in parts per trillion

   ``halons``
      aggregate concentration in parts per trillion of H-1211, H-1301
      and H-2402

   ``cfc113``
      trichlorotrifluoroethane concentration in parts per trillion

   ``hcfcs``
      aggregate concentration in parts per trillion of HCFC-22,
      HCFC-141b, and HCFC-142b

   ``wmo_minor``
      aggregate concentration in parts per trillion of CFC-114, CFC-115,
      halon 2402 and halon 1201

   ``sum``
      the sum of all greenhouse gas concentration measurements

   ``eesc``
      includes consideration of lag times for transport and mixing
      associated with transport. New as of 2012

   ``odgi_old``
      old greenhouse gas index, no longer supported as of 2012

   ``odgi_new``
      new greenhouse gas index, as of 2012

   .. rubric:: Source
      :name: source

   https://gml.noaa.gov/odgi/
