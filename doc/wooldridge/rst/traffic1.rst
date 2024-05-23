.. container::

   .. container::

      ======== ===============
      traffic1 R Documentation
      ======== ===============

      .. rubric:: traffic1
         :name: traffic1

      .. rubric:: Description
         :name: description

      Wooldridge Source: I collected these data from two sources, the
      1992 Statistical Abstract of the United States (Tables 1009, 1012)
      and A Digest of State Alcohol-Highway Safety Related Legislation,
      1985 and 1990, published by the U.S. National Highway Traffic
      Safety Administration. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('traffic1')

      .. rubric:: Format
         :name: format

      A data.frame with 51 observations on 13 variables:

      -  **state:**

      -  **admn90:** =1 if admin. revoc., '90

      -  **admn85:** =1 if admin. revoc., '85

      -  **open90:** =1 if open cont. law, '90

      -  **open85:** =1 if open cont. law, '85

      -  **dthrte90:** deaths per 100 mill. miles, '90

      -  **dthrte85:** deaths per 100 mill. miles, '85

      -  **speed90:** =1 if 65 mph, 1990

      -  **speed85:** =0 always

      -  **cdthrte:** dthrte90 - dthrte85

      -  **cadmn:** admn90 - admn85

      -  **copen:** open90 - open85

      -  **cspeed:** speed90 - speed85

      .. rubric:: Notes
         :name: notes

      In addition to adding recent years, this data set could really use
      state-level tax rates on alcohol. Other important law changes
      include defining driving under the influence as having a blood
      alcohol level of .08 or more, which many states have adopted since
      the 1980s. The trend really picked up in the 1990s and continued
      through the 2000s.

      Used in Text: pages 467-468, 688?

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(traffic1)
