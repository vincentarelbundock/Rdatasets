=== ===============
cpr R Documentation
=== ===============

CPR data set
------------

Description
~~~~~~~~~~~

These patients were randomly divided into a treatment group where they
received a blood thinner or the control group where they did not receive
a blood thinner. The outcome variable of interest was whether the
patients survived for at least 24 hours.

Usage
~~~~~

::

   cpr

Format
~~~~~~

A data frame with 90 observations on the following 2 variables.

group
   a factor with levels ``control`` and ``treatment``

outcome
   a factor with levels ``died`` and ``survived``

Source
~~~~~~

Efficacy and safety of thrombolytic therapy after initially unsuccessful
cardiopulmonary resuscitation: a prospective clinical trial, by Bottiger
et al., The Lancet, 2001.

Examples
~~~~~~~~

::


   table(cpr)

