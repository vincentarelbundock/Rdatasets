.. container::

   ============= ===============
   fakeHappiness R Documentation
   ============= ===============

   .. rubric:: Fake Data on Happiness
      :name: fake-data-on-happiness

   .. rubric:: Description
      :name: description

   This is a toy ("fake") data set I might use to illustrate the
   so-called curvilinear effect of age on happiness.

   .. rubric:: Usage
      :name: usage

   ::

      fakeHappiness

   .. rubric:: Format
      :name: format

   A data frame with 1000 observations on the following 8 variables.

   ``age``
      a numeric vector for age.

   ``female``
      a numeric that equals 1 if the respondent is a woman

   ``collegeed``
      a numeric vector that equals 1 if the respondent says s/he has a
      college degree

   ``famincr``
      a numeric vector for the respondent's household income. Ranges
      from 1 to 12.

   ``bornagain``
      a numeric vector for whether the respondent self-identifies as a
      born-again Christian.

   ``e``
      random noise, generated from a normal distribution with a mean of
      0 and a standard deviation of 3

   ``happy``
      an arbitrary happiness variable. See details for its construction

   ``z_happy``
      the same arbitrary happiness variable, scaled to have a mean of 0
      and a standard deviation of 1. This makes it seem more "latent".

   .. rubric:: Details
      :name: details

   Data are randomly sampled from the ``TV16`` data set in the same
   package for the age, female, college education, family income, and
   born-again variables. Thereafter, I created an arbitrary "happiness"
   variable that is equal to
   ``100 -  .95*age + .01*(age^2) + .25*female + .05*famincr + .1*bornagain + e``.
   The data are not supposed to be realistic, per se. They're supposed
   to be functional for this purpose.
