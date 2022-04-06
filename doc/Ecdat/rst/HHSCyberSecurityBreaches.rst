.. container::

   ======================== ===============
   HHSCyberSecurityBreaches R Documentation
   ======================== ===============

   .. rubric:: Cybersecurity breaches reported to the US Department of
      Health and Human Services
      :name: cybersecurity-breaches-reported-to-the-us-department-of-health-and-human-services

   .. rubric:: Description
      :name: description

   Since October 2009 organizations in the U.S. that store data on human
   health are required to report any incident that compromises the
   confidentiality of 500 or more patients / human subjects (`45 C.F.R.
   164.408 <https://www.hhs.gov/hipaa/for-professionals/breach-notification/breach-reporting/index.html>`__)
   These reports are publicly available. ``HHSCyberSecurityBreaches``
   was downloaded from `the Office for Civil Rights of the U.S.
   Department of Health and Human Services,
   2015-02-26 <https://ocrportal.hhs.gov/ocr/breach/breach_report.jsf>`__

   .. rubric:: Usage
      :name: usage

   ::

      data(HHSCyberSecurityBreaches)

   .. rubric:: Format
      :name: format

   A dataframe containing 1151 observations of 9 variables:

   Name.of.Covered.Entity
      A ``character`` vector identifying the organization involved in
      the breach.

   State
      A ``factor`` giving the two-letter abbreviation of the US state or
      territory where the breach occurred. This has 52 levels for the 50
      states plus the District of Columbia (DC) and Puerto Rico (PR).

   Covered.Entity.Type
      A ``factor`` giving the organization type of the covered entity
      with levels "Business Associate", "Health Plan", "Healthcare
      Clearing House", and "Healthcare Provider"

   Individuals.Affected
      An ``integer`` giving the number of humans whose records were
      compromised in the breach. This is 500 or greater; U.S. law
      requires reports of breaches involving 500 or more records but not
      of breaches involving fewer.

   Breach.Submission.Date
      Date when the breach was reported.

   Type.of.Breach
      A ``factor`` giving one of 29 different combinations of 7
      different breach types, separated by ", ": "Hacking/IT Incident",
      "Improper Disposal", "Loss", "Other", "Theft", "Unauthorized
      Access/Disclosure", and "Unknown"

   Location.of.Breached.Information
      A ``factor`` giving one of 47 different combinations of 8
      different location categories: "Desktop Computer", "Electronic
      Medical Record", "Email", "Laptop", "Network Server", "Other",
      "Other Portable Electronic Device", "Paper/Films"

   Business.Associate.Present
      ``Logical`` = (``Covered.Entity.Type`` == "Business Associate")

   Web.Description
      A character vector giving a narrative description of the incident.

   .. rubric:: Details
      :name: details

   This contains the breach report data downloaded 2015-02-26 from the
   US Health and Human Services. This catalogs reports starting
   2009-10-21. Earlier downloads included a few breaches prior to 2009
   when the law was enacted (inconsistently reported), and a date for
   breach occurrence in addition to the date of the report.

   The following corrections were made to the file:

   -  UCLA Health System, breach date 11/4/2011, had cover entity added
      as "Healthcare Provider"

   -  Wyoming Department of Health, breach date 3/2/2010 had breach type
      changed to "Unauthorized Access / Disclosure"

   -  Computer Program and Systems, Inc. (CPSI), breach date 3/30/2010
      had breach type changed to "Unauthorized Access / Disclosure"

   -  Aetna, breach date 7/27/2010 had breach type changed to "Improper
      Disposal' (see explanation below), breach date 5/24/2010 name
      changed to City of Charlotte, NC (Health Plan) and state changed
      to NC

   -  Mercer, breach date 7/30/2010 state changed to MI

   -  Not applicable, breach date 11/2/2011 name changed to Northridge
      Hospital Medical Center and state changed to CA

   -  ``na``, breach date 4/4/2011 name changed to Brian J Daniels DDS,
      Paul R Daniels DDS, and state changed to AZ

   -  ``NA``, breach date 5/27/2011 name changed to and Spartanburg
      Regional Healthcare System state changed to SC

   -  ``NA``, breach date 7/4/2011 name changed to Yanz Dental
      Corporation and state changed to CA

   .. rubric:: Source
      :name: source

   `"Breaches Affecting 500 or More Individuals" downloaded from the
   Office for Civil Rights of the U.S. Department of Health and Human
   Services,
   2015-02-26 <https://ocrportal.hhs.gov/ocr/breach/breach_report.jsf>`__

   .. rubric:: See Also
      :name: see-also

   ``breaches`` for an earlier download of these data. The exact
   reporting requirements and even the number and definitions of
   variables included in the ``data.frame`` have changed.

   .. rubric:: Examples
      :name: examples

   ::

      ##
      ## 1.  mean(Individuals.Affected)
      ##
      mean(HHSCyberSecurityBreaches$Individuals.Affected)
      ##
      ## 2.  Basic Breach Types
      ##
      tb <- as.character(HHSCyberSecurityBreaches$Type.of.Breach)
      tb. <- strsplit(tb, ', ')
      table(unlist(tb.))
      # 8 levels, but two are the same apart from 
      # a trailing blank.  
      ##
      ## 3.  Location.of.Breached.Information 
      ##
      lb <- as.character(HHSCyberSecurityBreaches[[
                'Location.of.Breached.Information']])
      table(lb)
      lb. <- strsplit(lb, ', ')
      table(unlist(lb.))
      # 8 levels 
      table(sapply(lb., length))
      #   1    2    3    4    5    6    7    8 
      #1007  119   13    8    1    1    1    1 
      # all 8 levels together observed once 
      # There are 256 = 2^8 possible combinations 
      # of which 47 actually occur in these data.  
