========== ===============
arnold1949 R Documentation
========== ===============

Arnold and Libby's Curve of Knowns
----------------------------------

Description
~~~~~~~~~~~

"The agreement between prediction and observation is seen to be
satisfactory."

Usage
~~~~~

.. code:: R

   arnold1949

Format
~~~~~~

A ``data.frame`` with 6 observations and 8 variables:

sample
   ``character``: sample name.

age_expected
   ``integer``: Expected age (year BP).

age_expected_error
   ``integer``: Error on ``age_expected`` (year BP).

age_found
   ``integer``: Measured age (year BP).

age_found_error
   ``integer``: Error on ``age_found`` (year BP).

activity_expected
   ``numeric``: Expected specific activity (cpm/g of carbon).

activity_found
   ``numeric``: Measured specific activity (cpm/g of carbon).

activity_found_error
   ``numeric``: Error on ``activity_found`` (cpm/g of carbon).

Source
~~~~~~

Arnold, J. R. and Libby, W. F. (1949). Age Determinations by Radiocarbon
Content: Checks with Samples of Known Age. *Science*, 110(2869), 678-80.
`doi:10.1126/science.110.2869.678 <https://doi.org/10.1126/science.110.2869.678>`__

See Also
~~~~~~~~

Other radiocarbon dating: ``intcal09``, ``intcal13``, ``intcal20``
