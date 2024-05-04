.. container::

   .. container::

      ======= ===============
      discrim R Documentation
      ======= ===============

      .. rubric:: discrim
         :name: discrim

      .. rubric:: Description
         :name: description

      Wooldridge Source: K. Graddy (1997), “Do Fast-Food Chains Price
      Discriminate on the Race and Income Characteristics of an Area?”
      Journal of Business and Economic Statistics 15, 391-401. Professor
      Graddy kindly provided the data set. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('discrim')

      .. rubric:: Format
         :name: format

      A data.frame with 410 observations on 37 variables:

      -  **psoda:** price of medium soda, 1st wave

      -  **pfries:** price of small fries, 1st wave

      -  **pentree:** price entree (burger or chicken), 1st wave

      -  **wagest:** starting wage, 1st wave

      -  **nmgrs:** number of managers, 1st wave

      -  **nregs:** number of registers, 1st wave

      -  **hrsopen:** hours open, 1st wave

      -  **emp:** number of employees, 1st wave

      -  **psoda2:** price of medium soday, 2nd wave

      -  **pfries2:** price of small fries, 2nd wave

      -  **pentree2:** price entree, 2nd wave

      -  **wagest2:** starting wage, 2nd wave

      -  **nmgrs2:** number of managers, 2nd wave

      -  **nregs2:** number of registers, 2nd wave

      -  **hrsopen2:** hours open, 2nd wave

      -  **emp2:** number of employees, 2nd wave

      -  **compown:** =1 if company owned

      -  **chain:** BK = 1, KFC = 2, Roy Rogers = 3, Wendy's = 4

      -  **density:** population density, town

      -  **crmrte:** crime rate, town

      -  **state:** NJ = 1, PA = 2

      -  **prpblck:** proportion black, zipcode

      -  **prppov:** proportion in poverty, zipcode

      -  **prpncar:** proportion no car, zipcode

      -  **hseval:** median housing value, zipcode

      -  **nstores:** number of stores, zipcode

      -  **income:** median family income, zipcode

      -  **county:** county label

      -  **lpsoda:** log(psoda)

      -  **lpfries:** log(pfries)

      -  **lhseval:** log(hseval)

      -  **lincome:** log(income)

      -  **ldensity:** log(density)

      -  **NJ:** =1 for New Jersey

      -  **BK:** =1 if Burger King

      -  **KFC:** =1 if Kentucky Fried Chicken

      -  **RR:** =1 if Roy Rogers

      .. rubric:: Notes
         :name: notes

      If you want to assign a common final project, this would be a good
      data set. There are many possible dependent variables, namely,
      prices of various fast-food items. The key variable is the
      fraction of the population that is black, along with controls for
      poverty, income, housing values, and so on. These data were also
      used in a famous study by David Card and Alan Krueger on
      estimation of minimum wage effects on employment. See the book by
      Card and Krueger, Myth and Measurement, 1997, Princeton University
      Press, for a detailed analysis.

      Used in Text: pages 112, 166, 699-700

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(discrim)
