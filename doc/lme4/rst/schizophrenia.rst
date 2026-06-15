============= ===============
schizophrenia R Documentation
============= ===============

National Institute of Mental Health Schizophrenia Collaborative Study
---------------------------------------------------------------------

Description
~~~~~~~~~~~

In the NIMH Schizophrenia Collaborative Study, patients were randomized
to receive one of four medications, either placebo or one of three
different anti-psychotic drugs. The protocol indicated subjects were to
then be evaluated at weeks 0, 1, 3, 6 to assess severity of illness;
additionally some measurements were made at weeks 2, 4, and 5.

Usage
~~~~~

.. code:: R

   data(schizophrenia)

Format
~~~~~~

A data frame with 1603 observations on the following 9 variables.

``id``
   a numeric vector indicating the unique patient identifier.

``imps79``
   a numeric vector from item 79 on the Inpatient Multidimensional
   Psychiatric Scale indicating severity of illness. The scores were
   applied to be interpreted as follows:

   - ``1`` = normal, not ill at all,

   - ``2`` = borderline mentally ill,

   - ``3`` = mildly ill,

   - ``4`` = moderately ill,

   - ``5`` = markedly ill,

   - ``6`` = severely ill,

   - ``7`` = among the most extremely ill.

``imps79b``
   a binary version of imps79.

``imps79o``
   an ordinally scaled version of imps79.

``int``
   a numeric vector of ones; used in stand-alone package to indicate
   intercept.

``TxDrug``
   a numeric vector indicating treatment with drug ``1`` or placebo
   ``0``.

``Week``
   a numeric vector indicating time, in weeks.

``SqrtWeek``
   the square root of the Week variable.

``TxSWeek``
   a variable representing the ``TxDrug * Week`` interaction.

Source
~~~~~~

This data and most of this documentation was taken from the
`mixor <https://CRAN.R-project.org/package=mixor>`__ package, which is
no longer from CRAN. The references below mostly reference the
deprecated `mixor <https://CRAN.R-project.org/package=mixor>`__ program.

References
~~~~~~~~~~

- Hedeker D, Gibbons RD (1996). “MIXOR: a computer program for
  mixed-effects ordinal regression analysis.” *Computer methods and
  programs in biomedicine*, **49**\ (2), 157–176.

- Hedeker D, Gibbons RD (2006). *Longitudinal data analysis*. John Wiley
  & Sons.

Examples
~~~~~~~~

.. code:: R

   schmod <- glmer(imps79 ~ TxDrug * Week + (1 | id),
                   data = schizophrenia, family = Gamma(link = "log"))
