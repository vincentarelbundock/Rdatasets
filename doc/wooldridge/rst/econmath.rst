======== ===============
econmath R Documentation
======== ===============

econmath
--------

Description
~~~~~~~~~~~

Wooldridge Source: Compiled by Professor Charles Ballard, Michigan State
University Department of Economics. Professor Ballard kindly provided
the data. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('econmath')

Format
~~~~~~

A data.frame with 856 observations on 17 variables:

- **age:** age in years

- **work:** hours worked per week

- **study:** hours studying per week

- **econhs:** =1 if economics in high school

- **colgpa:** college GPA, beginning semester

- **hsgpa:** high school GPA

- **acteng:** ACT English score

- **actmth:** ACT math score

- **act:** ACT composite

- **mathscr:** math quiz score, 0-10

- **male:** =1 if male

- **calculus:** =1 if taken calculus course

- **attexc:** =1 if past attndce 'excellent'

- **attgood:** =1 if past attndce 'good'

- **fathcoll:** =1 if father has BA

- **mothcoll:** =1 if mother has BA

- **score:** course score, in percent

Used in Text
~~~~~~~~~~~~

167, 185

Source
~~~~~~

http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

Examples
~~~~~~~~

.. code:: R

    str(econmath)
