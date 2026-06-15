============= ===============
piracy_tbl_df R Documentation
============= ===============

Piracy and PIPA/SOPA
--------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'piracy_tbl_df' to avoid confusion
with other packages in the R ecosystem. This naming convention helps
distinguish this dataset as part of the 'usdatasets' package and
identifies it as a tibble. The original content of the dataset has not
been modified.

Usage
~~~~~

.. code:: R

   data(piracy_tbl_df)

Format
~~~~~~

A tibble with 534 observations and 8 variables:

name
   Character string indicating the name of the politician.

party
   Factor with 3 levels representing the politician's party affiliation.

state
   Factor with 50 levels indicating the U.S. state the politician
   represents.

money_pro
   Numeric representing the amount of pro-piracy funding received.

money_con
   Numeric representing the amount of anti-piracy funding received.

years
   Integer indicating the number of years in office.

stance
   Factor with 5 levels indicating the politician's stance on piracy.

chamber
   Factor with 2 levels indicating the chamber of the U.S. Congress
   (House or Senate).

Source
~~~~~~

Data on political stances and funding related to piracy.
