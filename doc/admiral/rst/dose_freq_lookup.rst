================ ===============
dose_freq_lookup R Documentation
================ ===============

Pre-Defined Dose Frequencies
----------------------------

Description
~~~~~~~~~~~

These pre-defined dose frequencies are sourced from
`CDISC <https://evs.nci.nih.gov/ftp1/CDISC/SDTM/SDTM%20Terminology.pdf>`__.
The number of rows to generate using ``create_single_dose_dataset()``
arguments ``start_date`` and ``end_date`` is derived from
``DOSE_COUNT``, ``DOSE_WINDOW``, and ``CONVERSION_FACTOR`` with
appropriate functions from ``lubridate``.

Usage
~~~~~

.. code:: R

   dose_freq_lookup

Format
~~~~~~

An object of class ``tbl_df`` (inherits from ``tbl``, ``data.frame``)
with 86 rows and 5 columns.

Details
~~~~~~~

``NCI_CODE`` and ``CDISC_VALUE`` are included from the CDISC source for
traceability.

``DOSE_COUNT`` represents the number of doses received in one single
unit of ``DOSE_WINDOW``. For example, for
``CDISC_VALUE=="10 DAYS PER MONTH"``, ``DOSE_WINDOW=="MONTH"`` and
``DOSE_COUNT==10``. Similarly, for ``CDISC_VALUE=="EVERY 2 WEEKS"``,
``DOSE_WINDOW=="WEEK"`` and ``DOSE_COUNT==0.5`` (to yield one dose every
two weeks).

``CONVERSION_FACTOR`` is used to convert ``DOSE_WINDOW`` units
``"WEEK"``, ``"MONTH"``, and ``"YEAR"`` to the unit ``"DAY"``.

For example, for ``CDISC_VALUE=="10 DAYS PER MONTH"``,
``CONVERSION_FACTOR`` is ``0.0329``. One day of a month is assumed to be
``1 / 30.4375`` of a month (one day is assumed to be ``1/365.25`` of a
year). Given only ``start_date`` and ``end_date`` in the aggregate
dataset, ``CONVERSION_FACTOR`` is used to calculate specific dates
for\ ``start_date`` and ``end_date`` in the resulting single dose
dataset for the doses that occur. In such cases, doses are assumed to
occur at evenly spaced increments over the interval.

To see the entire table in the console, run ``print(dose_freq_lookup)``.

See Also
~~~~~~~~

``create_single_dose_dataset()``

Other metadata: ``atoxgr_criteria_ctcv4``,
``atoxgr_criteria_ctcv4_uscv``, ``atoxgr_criteria_ctcv5``,
``atoxgr_criteria_ctcv5_uscv``, ``atoxgr_criteria_ctcv6``,
``atoxgr_criteria_ctcv6_uscv``, ``atoxgr_criteria_daids``,
``atoxgr_criteria_daids_uscv``, ``country_code_lookup``
