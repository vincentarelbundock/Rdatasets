========= ===============
mlc_churn R Documentation
========= ===============

Customer churn data
-------------------

Description
~~~~~~~~~~~

A data set from the MLC++ machine learning software for modeling
customer churn. There are 19 predictors, mostly numeric: ``state``
(categorical), ``account_length`` ``area_code`` ``international_plan``
(yes/no), ``voice_mail_plan`` (yes/no), ``number_vmail_messages``
``total_day_minutes`` ``total_day_calls`` ``total_day_charge``
``total_eve_minutes`` ``total_eve_calls`` ``total_eve_charge``
``total_night_minutes`` ``total_night_calls`` ``total_night_charge``
``total_intl_minutes`` ``total_intl_calls`` ``total_intl_charge``, and
``number_customer_service_calls``.

Details
~~~~~~~

The outcome is contained in a column called ``churn`` (also yes/no). A
note in one of the source files states that the data are "artificial
based on claims similar to real world".

Value
~~~~~

============= ========
``mlc_churn`` a tibble
============= ========

Source
~~~~~~

Originally at ``⁠http://www.sgi.com/tech/mlc/⁠``

Examples
~~~~~~~~

.. code:: R

   data(mlc_churn)
   str(mlc_churn)
