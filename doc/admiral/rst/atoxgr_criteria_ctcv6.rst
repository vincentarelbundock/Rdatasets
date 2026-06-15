===================== ===============
atoxgr_criteria_ctcv6 R Documentation
===================== ===============

Metadata Holding Grading Criteria for NCI-CTCAEv6 using SI unit where applicable
--------------------------------------------------------------------------------

Description
~~~~~~~~~~~

Metadata Holding Grading Criteria for NCI-CTCAEv6 using SI unit where
applicable

Usage
~~~~~

.. code:: R

   atoxgr_criteria_ctcv6

Format
~~~~~~

An object of class ``data.frame`` with 43 rows and 13 columns.

Details
~~~~~~~

This metadata has its origin in the ADLB Grading Spec json file
``data-raw/adlb_grading/ncictcaev6.json``. The variables
``GRADE_NA_CODE``, ``GRADE_4_CODE``, ``GRADE_3_CODE``, ``GRADE_2_CODE``
and ``GRADE_1_CODE`` in the json file are combined to create
``GRADE_CRITERIA_CODE``, and then dropped from metadata. The dataset
contains the following columns:

- ``SOC``: variable to hold the SOC of the lab test criteria.

- ``TERM``: variable to hold the term describing the criteria applied to
  a particular lab test, eg. 'Anemia' or 'INR Increased'. Note: the
  variable is case insensitive.

- ``⁠Grade 1⁠``: Criteria defining lab value as Grade 1.

- ``⁠Grade 2⁠``: Criteria defining lab value as Grade 2.

- ``⁠Grade 3⁠``: Criteria defining lab value as Grade 3.

- ``⁠Grade 4⁠``: Criteria defining lab value as Grade 4.

- ``⁠Grade 5⁠``: Criteria defining lab value as Grade 5.

- ``Definition``: Holds the definition of the lab test abnormality.

- ``GRADE_CRITERIA_CODE``: variable to hold code that creates grade
  based on defined criteria.

- ``UNIT_CHECK``: variable to hold SI unit of particular lab test. Used
  to check against input data if criteria is based on absolute values.

- ``VAR_CHECK``: List of variables required to implement lab grade
  criteria. Use to check against input data.

- ``DIRECTION``: variable to hold the direction of the abnormality of a
  particular lab test value. 'L' is for LOW values, 'H' is for HIGH
  values. Note: the variable is case insensitive.

- ``COMMENT``: Holds any information regarding rationale behind
  implementation of grading criteria.

Note: Variables ``SOC``, ``TERM``, ``⁠Grade 1⁠``,
``⁠Grade 2⁠``,\ ``⁠Grade 3⁠``,\ ``⁠Grade 4⁠``,\ ``⁠Grade 5⁠``, ``Definition``
are from the source document on NCI-CTC website defining the grading
criteria. `Common Terminology Criteria for Adverse Events
(CTCAE)v6.0 <https://dctd.cancer.gov/research/ctep-trials/for-sites/adverse-events#ctep-ctcae>`__
From these variables only 'TERM' is used in the ``{admiral}`` code, the
rest are for information and traceability only.

See Also
~~~~~~~~

Other metadata: ``atoxgr_criteria_ctcv4``,
``atoxgr_criteria_ctcv4_uscv``, ``atoxgr_criteria_ctcv5``,
``atoxgr_criteria_ctcv5_uscv``, ``atoxgr_criteria_ctcv6_uscv``,
``atoxgr_criteria_daids``, ``atoxgr_criteria_daids_uscv``,
``country_code_lookup``, ``dose_freq_lookup``
