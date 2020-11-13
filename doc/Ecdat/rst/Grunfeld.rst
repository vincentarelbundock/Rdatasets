======== ===============
Grunfeld R Documentation
======== ===============

Grunfeld Investment Data
------------------------

Description
~~~~~~~~~~~

a panel of 20 annual observations from 1935 to 1954 on each of 10 firms.

*number of observations* : 200

*observation* : production units

*country* : United States

Usage
~~~~~

::

   data(Grunfeld)

Format
~~~~~~

A dataframe containing :

firm
   observation

year
   date

inv
   gross Investment

value
   value of the firm

capital
   stock of plant and equipment

Details
~~~~~~~

There are several versions of these data.

``GrunfeldGreene`` is "A data frame containing 20 annual observations on
3 variables for 5 firms." That dataset reportedly contains errors but is
maintained in that way to avoid breaking the code of others who use it.
That help file also provides a link to the corrected version.

See also `for a version with only 5
firms <http://people.stern.nyu.edu/wgreene/Text/tables/TableF13-1.txt>`__.

Source
~~~~~~

Moody's Industrial Manual, Survey of Current Business.

References
~~~~~~~~~~

Greene, W.H. (2003) *Econometric Analysis*, Prentice Hall, Table F13.1.

Baltagi, Badi H. (2003) *Econometric analysis of panel data*, John Wiley
and sons, https://www.wiley.com/legacy/wileychi/baltagi/.

See Also
~~~~~~~~

``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
``Index.Observations``, ``GrunfeldGreene``,

``Index.Time.Series``
