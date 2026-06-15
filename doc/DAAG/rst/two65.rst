===== ===============
two65 R Documentation
===== ===============

Unpaired Heated Elastic Bands
-----------------------------

Description
~~~~~~~~~~~

Twenty-one elastic bands were divided into two groups.

One of the sets was placed in hot water (60-65 degrees C) for four
minutes, while the other was left at ambient temperature. After a wait
of about ten minutes, the amounts of stretch, under a 1.35 kg weight,
were recorded.

Usage
~~~~~

.. code:: R

   pair65

Format
~~~~~~

This list contains the following elements:

heated
   a numeric vector giving the stretch lengths for the heated bands

ambient
   a numeric vector giving the stretch lengths for the unheated bands

Source
~~~~~~

J.H. Maindonald

Examples
~~~~~~~~

.. code:: R

   twot.permutation(two65$ambient,two65$heated) # two sample permutation test
