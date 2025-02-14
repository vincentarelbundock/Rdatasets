.. container::

   .. container::

      ========= ===============
      sandy_311 R Documentation
      ========= ===============

      .. rubric:: The (Very) Long Tail Of Hurricane Recovery
         :name: the-very-long-tail-of-hurricane-recovery

      .. rubric:: Description
         :name: description

      The raw data behind the story "The (Very) Long Tail Of Hurricane
      Recovery" https://projects.fivethirtyeight.com/sandy-311/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         sandy_311

      .. rubric:: Format
         :name: format

      A data frame with 1783 rows representing dates and 25 variables:

      date
         Date

      nyc_311
         No description provided.

      acs
         The number of emergency hotline (311) calls made to the
         Administration for Children's Services related to Hurricane
         Sandy on the given date

      bpsi
         The number of emergency hotline (311) calls made to Building
         Protection Systems, Inc related to Hurricane Sandy

      cau
         The number of emergency hotline (311) calls made to the
         Community Affairs Unit related to Hurricane Sandy

      chall
         The number of emergency hotline (311) calls made to the City
         Hall related to Hurricane Sandy

      dep
         The number of emergency hotline (311) calls made to the
         Department of Environmental Protection related to Hurricane
         Sandy

      dob
         The number of emergency hotline (311) calls made to the
         Department of Buildings related to Hurricane Sandy

      doe
         The number of emergency hotline (311) calls made to the
         Department of Education related to Hurricane Sandy

      dof
         The number of emergency hotline (311) calls made to the
         Department of Finance related to Hurricane Sandy

      dohmh
         The number of emergency hotline (311) calls made to the
         Department of Health and Mental Hygiene related to Hurricane
         Sandy

      dpr
         The number of emergency hotline (311) calls made to the
         Department of Parks and Recreation related to Hurricane Sandy

      fema
         The number of emergency hotline (311) calls made to the Federal
         Emergency Management Agency related to Hurricane Sandy

      hpd
         The number of emergency hotline (311) calls made to the
         Department of Housing Preservation and Development related to
         Hurricane Sandy

      hra
         The number of emergency hotline (311) calls made to the Human
         Resources Administration related to Hurricane Sandy

      mfanyc
         The number of emergency hotline (311) calls made to the Mayor's
         Fund to Advance NYC related to Hurricane Sandy

      mose
         The number of emergency hotline (311) calls made to the Mayor's
         Office of Special Enforcement related to Hurricane Sandy

      nycem
         The number of emergency hotline (311) calls made to Emergency
         Management related to Hurricane Sandy

      nycha
         The number of emergency hotline (311) calls made to the New
         York City Housing Authority related to Hurricane Sandy

      nyc_service
         The number of emergency hotline (311) calls made to NYC Service
         related to Hurricane Sandy

      nypd
         The number of emergency hotline (311) calls made to the New
         York Police Department related to Hurricane Sandy

      nysdol
         The number of emergency hotline (311) calls made to the NYC
         Department of Labor related to Hurricane Sandy

      sbs
         The number of emergency hotline (311) calls made to Small
         Business Services related to Hurricane Sandy

      nys_emergency_mg
         The number of emergency hotline (311) calls made to NYS
         Emergency Management related to Hurricane Sandy

      total
         The total number of emergency hotline (311) calls made related
         to Hurricane Sandy

      .. rubric:: Source
         :name: source

      Data from NYC Open Data
      https://data.cityofnewyork.us/City-Government/311-Call-Center-Inquiry/tdd6-3ysr,
      Agency acronyms from the Data Dictionary. See also
      https://github.com/fivethirtyeight/data/tree/master/sandy-311-calls

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         sandy_311_tidy <- sandy_311 %>%
           pivot_longer(-c("date", "total"), names_to = "agency", values_to = "num_calls") %>%
           arrange(date) %>%
           select(date, agency, num_calls, total) %>%
           rename(total_calls = total) %>%
           mutate(agency = as.factor(agency))
