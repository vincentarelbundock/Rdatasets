.. container::

   ======== ===============
   Marriage R Documentation
   ======== ===============

   .. rubric:: Marriage records
      :name: marriage-records

   .. rubric:: Description
      :name: description

   Marriage records from the Mobile County, Alabama, probate court.

   .. rubric:: Usage
      :name: usage

   ::

      data(Marriage)

   .. rubric:: Format
      :name: format

   A data frame with 98 observations on the following variables.

   -  ``bookpageID`` a factor with levels for each book and page (unique
      identifier)

   -  ``appdate`` date on which the application was filed

   -  ``ceremonydate`` date of the ceremony

   -  ``delay`` number of days between the application and the ceremony

   -  ``officialTitle`` a factor with levels ``BISHOP``
      ``CATHOLIC PRIEST`` ``CHIEF CLERK`` ``CIRCUIT JUDGE`` ``ELDER``
      ``MARRIAGE OFFICIAL`` ``MINISTER`` ``PASTOR`` ``REVEREND``

   -  ``person`` a factor with levels ``Bride`` ``Groom``

   -  ``dob`` a factor with levels corresponding to the date of birth of
      the person

   -  ``age`` age of the person (in years)

   -  ``race`` a factor with levels ``American Indian`` ``Black``
      ``Hispanic`` ``White``

   -  ``prevcount`` the number of previous marriages of the person, as
      listed on the application

   -  ``prevconc`` the way the last marriage ended, as listed on the
      application

   -  ``hs`` the number of years of high school education, as listed on
      the application

   -  ``college`` the number of years College education, as listed on
      the application. Where no number was listed, this field was left
      blank, unless less than 12 years High School was reported, in
      which case it was entered as 0.

   -  ``dayOfBirth`` the day of birth, as a number from 1 to 365
      counting from January 1

   -  ``sign`` the astrological sign, with levels ``Aquarius`` ``Aries``
      ``Cancer`` ``Capricorn`` ``Gemini`` ``Leo`` ``Libra`` ``Pisces``
      ``Sagittarius`` ``Scorpio`` ``Taurus`` ``Virgo``

   .. rubric:: Details
      :name: details

   The calculation of the astrological sign may not correctly sort
   people directly on the borders between signs. This variable is not
   part of the original record.

   .. rubric:: Source
      :name: source

   The records were collected through
   http://www.mobilecounty.org/probatecourt/recordssearch.htm

   .. rubric:: Examples
      :name: examples

   ::

      data(Marriage)
