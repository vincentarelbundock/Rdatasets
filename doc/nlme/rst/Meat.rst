.. container::

   .. container::

      ==== ===============
      Meat R Documentation
      ==== ===============

      .. rubric:: Tenderness of meat
         :name: tenderness-of-meat

      .. rubric:: Description
         :name: description

      The ``Meat`` data frame has 30 rows and 4 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Storage
         an ordered factor specifying the storage treatment - 1 (0
         days), 2 (1 day), 3 (2 days), 4 (4 days), 5 (9 days), and 6 (18
         days)

      score
         a numeric vector giving the tenderness score of beef roast.

      Block
         an ordered factor identifying the muscle from which the roast
         was extracted with levels ``II`` < ``V`` < ``I`` < ``III`` <
         ``IV``

      Pair
         an ordered factor giving the unique identifier for each pair of
         beef roasts with levels ``II-1`` < ... < ``IV-1``

      .. rubric:: Details
         :name: details

      Cochran and Cox (section 11.51, 1957) describe data from an
      experiment conducted at Iowa State College (Paul, 1943) to compare
      the effects of length of cold storage on the tenderness of beef
      roasts. Six storage periods ranging from 0 to 18 days were used.
      Thirty roasts were scored by four judges on a scale from 0 to 10,
      with the score increasing with tenderness. The response was the
      sum of all four scores. Left and right roasts from the same animal
      were grouped into pairs, which were further grouped into five
      blocks, according to the muscle from which they were extracted.
      Different storage periods were applied to each roast within a pair
      according to a balanced incomplete block design.

      .. rubric:: Source
         :name: source

      Cochran, W. G. and Cox, G. M. (1957), *Experimental Designs*,
      Wiley, New York.
