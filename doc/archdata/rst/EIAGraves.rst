.. container::

   .. container::

      ========= ===============
      EIAGraves R Documentation
      ========= ===============

      .. rubric:: Early Iron Age Graves - Tell el-Far'ah, Palestine
         :name: early-iron-age-graves---tell-el-farah-palestine

      .. rubric:: Description
         :name: description

      Counts of 52 different ceramic types in 6 large tombs and 10
      broadly contemporaneous groups of tombs.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("EIAGraves")

      .. rubric:: Format
         :name: format

      A data frame with 52 rows (ceramic types) found in 16 units (a
      grave or a group of graves).

      ``Type``
         Ceramic type number

      ``G100``
         19 broadly contemporaneous graves and tombs

      ``G200B``
         30 broadly contemporaneous graves and tombs

      ``G200C``
         28 broadly contemporaneous graves and tombs

      ``G201``
         An indidivual tomb

      ``G229``
         An indidivual tomb

      ``G500N``
         19 broadly contemporaneous graves and tombs

      ``G532``
         An indidivual tomb

      ``G542``
         An indidivual tomb

      ``G552``
         An indidivual tomb

      ``G562``
         An indidivual tomb

      ``G600``
         52 broadly contemporaneous graves and tombs

      ``G800``
         39 broadly contemporaneous graves and tombs

      ``G900B``
         41 broadly contemporaneous graves and tombs

      ``G900L``
         3 broadly contemporaneous graves and tombs

      ``G900S``
         5 broadly contemporaneous graves and tombs

      ``G900U``
         7 broadly contemporaneous graves and tombs

      .. rubric:: Details
         :name: details

      The data on counts of 52 different ceramic types in 6 large tombs
      and 10 broadly contemporaneous groups of tombs come from Tell
      el-Far'ah (South), Palestine. They were originally published in
      McClellan (1979). The data were scanned from Table 2.5 in Baxter
      (2003, p. 25-6). The 52 rows correspond to different pottery types
      found in association with the burials.

      .. rubric:: Source
         :name: source

      Baxter, M. J. 2003. *Statistics in Archaeology*. Arnold, London.

      McClellan, T. L. 1979. Chronology of the 'Philistine' Burials at
      Tell el-Farah (South). *Journal of Field Archaeology* 6: 57-73.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(EIAGraves)
         # How many ceramics of each type?
         # Exclude the first column which is the ceramic type number
         rowSums(EIAGraves[, -1])
         # How many tomb groups contain each type?
         rowSums(EIAGraves[, -1]>0)
         # How many ceramics in each tomb group?
         colSums(EIAGraves[, -1])
         # How many types are found in each tomb group?
         colSums(EIAGraves[, -1]>0)
