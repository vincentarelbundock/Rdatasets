=================== ===============
country_code_lookup R Documentation
=================== ===============

Country Code Lookup
-------------------

Description
~~~~~~~~~~~

These pre-defined country codes are sourced from `ISO 3166
Standards <https://www.iso.org/iso-3166-country-codes.html>`__. See also
`Wikipedia <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3>`__.

Usage
~~~~~

.. code:: R

   country_code_lookup

Format
~~~~~~

An object of class ``tbl_df`` (inherits from ``tbl``, ``data.frame``)
with 249 rows and 3 columns.

Details
~~~~~~~

``country_code`` is the 3-letter ISO 3166-1 county code commonly found
in the ADSL ``COUNTRY`` variable. ``country_name`` is the country long
name corresponding to to the 3-letter code. ``country_number`` is the
numeric code corresponding to an alphabetic sorting of the 3-letter
codes.

To see the entire table in the console, run
``print(country_code_lookup)``.

See Also
~~~~~~~~

dose_freq_lookup

Other metadata: ``atoxgr_criteria_ctcv4``,
``atoxgr_criteria_ctcv4_uscv``, ``atoxgr_criteria_ctcv5``,
``atoxgr_criteria_ctcv5_uscv``, ``atoxgr_criteria_ctcv6``,
``atoxgr_criteria_ctcv6_uscv``, ``atoxgr_criteria_daids``,
``atoxgr_criteria_daids_uscv``, ``dose_freq_lookup``

Examples
~~~~~~~~

.. code:: R

   library(tibble)
   library(dplyr, warn.conflicts = FALSE)

   # Create reference dataset for periods
   adsl <- tribble(
     ~USUBJID, ~SEX, ~COUNTRY,
     "ST01-01", "F", "AUT",
     "ST01-02", "M", "MWI",
     "ST01-03", "F", "GBR",
     "ST01-04", "M", "CHE",
     "ST01-05", "M", "NOR",
     "ST01-06", "F", "JPN",
     "ST01-07", "F", "USA"
   )

   adsl %>%
     derive_vars_merged(
       dataset_add = country_code_lookup,
       new_vars = exprs(COUNTRYN = country_number, COUNTRYL = country_name),
       by_vars = exprs(COUNTRY = country_code)
     )
