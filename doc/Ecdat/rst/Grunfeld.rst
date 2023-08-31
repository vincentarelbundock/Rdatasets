.. container::

   ======== ===============
   Grunfeld R Documentation
   ======== ===============

   .. rubric:: Grunfeld Investment Data
      :name: Grunfeld

   .. rubric:: Description
      :name: description

   a panel of 20 annual observations from 1935 to 1954 on each of 10
   firms.

   *number of observations* : 200

   *observation* : production units

   *country* : United States

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Grunfeld)

   .. rubric:: Format
      :name: format

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

   .. rubric:: Details
      :name: details

   There are several versions of these data.

   ``GrunfeldGreene`` is "A data frame containing 20 annual observations
   on 3 variables for 5 firms." That dataset reportedly contains errors
   but is maintained in that way to avoid breaking the code of others
   who use it. That help file also provides a link to the corrected
   version.

   See also `for a version with only 5
   firms <https://pages.stern.nyu.edu/~wgreene/Text/tables/TableF13-1.txt>`__.

   .. rubric:: Source
      :name: source

   Moody's Industrial Manual, Survey of Current Business.

   .. rubric:: References
      :name: references

   Greene, W.H. (2003) *Econometric Analysis*, Prentice Hall, Table
   F13.1.

   Baltagi, Badi H. (2003) *Econometric analysis of panel data*, John
   Wiley and sons, https://www.wiley.com/legacy/wileychi/baltagi/.

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``, ``GrunfeldGreene``,

   ``Index.Time.Series``
