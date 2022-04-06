.. container::

   ============= ===============
   usa_migration R Documentation
   ============= ===============

   .. rubric:: U.S. Inbound/Outbound Migration Data, 1990-2017
      :name: u.s.-inboundoutbound-migration-data-1990-2017

   .. rubric:: Description
      :name: description

   This data set contains counts/estimates for the number of inbound
   migrants in the U.S as well as outbound migrants of American origin
   to other countries from 1990 to 2017.

   .. rubric:: Usage
      :name: usage

   ::

      usa_migration

   .. rubric:: Format
      :name: format

   A data frame with 3535 observations on the following 5 variables.

   ``year``
      a numeric vector for 1990, 1995, 2000, 2005, 2010, 2015, 2017

   ``country``
      a character vector/constant for the United States

   ``category``
      a character vector for whether the ``count`` is inbound to the
      U.S. from the ``area`` variable or outbound (i.e. American expats)
      to the ``area`` variable in a given year.

   ``area``
      a character vector for the area of origin (if ``category`` ==
      "Inbound") or destination for American migrants (if ``category``
      == "Outbound")

   ``count``
      a numeric vector for the count of inbound/outbound migrants

   .. rubric:: Details
      :name: details

   "Cote d'Ivoire", "Curacao", and "Reunion" originally had UTF-8
   characters, which were removed for maximal compliance with CRAN. CRAN
   raises a note for every non-ASCII character it sees.

   .. rubric:: Source
      :name: source

   United Nations Population Division (DESA)
