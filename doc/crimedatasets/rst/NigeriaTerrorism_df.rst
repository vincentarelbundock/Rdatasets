=================== ===============
NigeriaTerrorism_df R Documentation
=================== ===============

Nigeria Terrorism Data
----------------------

Description
~~~~~~~~~~~

This dataset contains information on terrorist attacks by Fulani
Extremists and Boko Haram in Nigeria, starting from the year 2014. The
attack data is sourced from the Global Terrorism Database, while other
variables are derived from the UCDP PRIO-Grid data. The dataset includes
geographic coordinates, population data, and information about
mountainous areas relevant to the attacks.

Usage
~~~~~

.. code:: R

   data(NigeriaTerrorism_df)

Format
~~~~~~

A data frame with 312 observations and 6 variables:

att.ful
   Number of attacks by Fulani Extremists (numeric).

att.bok
   Number of attacks by Boko Haram (numeric).

xcoord
   X-coordinate of the attack location (numeric).

ycoord
   Y-coordinate of the attack location (numeric).

pop
   Population of the area (numeric).

mtns
   Indicator of whether the location is mountainous (numeric).

Details
~~~~~~~

The dataset name has been changed to 'NigeriaTerrorism_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a traditional data frame in R. The
original content has not been modified in any way.

Source
~~~~~~

Global Terrorism Database and UCDP PRIO-Grid data.
