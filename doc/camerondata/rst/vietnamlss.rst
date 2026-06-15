========== ===============
vietnamlss R Documentation
========== ===============

Household medical expenditure
-----------------------------

Description
~~~~~~~~~~~

Data from the World Bank's 1997 Vietnam Living Standards Survey 1997-98
at the household level. Cameron and Trivedi (2005)

Usage
~~~~~

.. code:: R

   vietnamlss

Format
~~~~~~

A data frame with 5999 observations and 9 variables:

sex
   gender of household head, 1 = male; 2 = female

age
   age of household head

educyr98
   schooling year of household head

farm
   type of household, = 1 if farm

urban98
   = 1 if urban area, = 0 if rural area

hhsize
   household size

lhhexp1
   household total expenditure, ln

lhhex12m
   household medical expenditure, ln

lnrlfood
   household food expenditure, ln

Section in Text
~~~~~~~~~~~~~~~

4.6.4 Quantile Regression Example, pp. 88-90

Source
~~~~~~

http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

References
~~~~~~~~~~

Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods and
Applications," Cambridge University Press, New York.

World Bank Living Standards Survey 1997-1998 Vietnam.
https://microdata.worldbank.org/index.php/catalog/2694

Examples
~~~~~~~~

.. code:: R

   summary(vietnamlss)
