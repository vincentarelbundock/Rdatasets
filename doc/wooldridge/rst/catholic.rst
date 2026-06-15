======== ===============
catholic R Documentation
======== ===============

catholic
--------

Description
~~~~~~~~~~~

Wooldridge Source: Altonji, J.G., T.E. Elder, and C.R. Taber (2005), “An
Evaluation of Instrumental Variable Strategies for Estimating the
Effects of Catholic Schooling,” Journal of Human Resources 40, 791-821.
Professor Elder kindly provided a subset of the data, with some
variables stripped away for confidentiality reasons. Data loads lazily.

Usage
~~~~~

.. code:: R

   data('catholic')

Format
~~~~~~

A data.frame with 7430 observations on 13 variables:

- **id:** person identifier

- **read12:** reading standardized score

- **math12:** mathematics standardized score

- **female:** =1 if female

- **asian:** =1 if Asian

- **hispan:** =1 if Hispanic

- **black:** =1 if black

- **motheduc:** mother's years of education

- **fatheduc:** father's years of education

- **lfaminc:** log of family income

- **hsgrad:** =1 if graduated from high school by 1994

- **cathhs:** =1 if attended Catholic HS

- **parcath:** =1 if a parent reports being Catholic

Used in Text
~~~~~~~~~~~~

pages 267, 551

Source
~~~~~~

http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

Examples
~~~~~~~~

.. code:: R

    str(catholic)
