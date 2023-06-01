.. container::

   ============== ===============
   Manitoba.lakes R Documentation
   ============== ===============

   .. rubric:: The Nine Largest Lakes in Manitoba
      :name: Manitoba.lakes

   .. rubric:: Description
      :name: description

   The ``Manitoba.lakes`` data frame has 9 rows and 2 columns. The areas
   and elevations of the nine largest lakes in Manitoba, Canada. The
   geography of Manitoba (a relatively flat province) can be divided
   crudely into three main areas: a very flat prairie in the south which
   is at a relatively high elevation, a middle region consisting of
   mainly of forest and Precambrian rock, and a northern region which
   drains more rapidly into Hudson Bay. All water in Manitoba, which
   does not evaporate, eventually drains into Hudson Bay.

   .. rubric:: Usage
      :name: usage

   ::

      Manitoba.lakes

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   elevation
      a numeric vector consisting of the elevations of the lakes (in
      meters)

   area
      a numeric vector consisting of the areas of the lakes (in square
      kilometers)

   .. rubric:: Source
      :name: source

   The CANSIM data base at Statistics Canada.

   .. rubric:: Examples
      :name: examples

   ::

      plot(Manitoba.lakes)
      plot(Manitoba.lakes[-1,])
