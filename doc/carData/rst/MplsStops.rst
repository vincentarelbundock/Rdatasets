========= ===============
MplsStops R Documentation
========= ===============

Minneapolis Police Department 2017 Stop Data
--------------------------------------------

Description
~~~~~~~~~~~

Results of nearly all stops made by the Minneapolis Police Department
for the year 2017.

Format
~~~~~~

A data frame with 51857 observations on the following 14 variables.

``idNum``
   character vector of incident identifiers

``date``
   a POSIXlt date variable giving the date and time of the stop

``problem``
   a factor with levels ``suspicious`` for suspicious vehicle or person
   stops and ``traffic`` for traffic stops

``citationIssued``
   a factor with levels ``no`` ``yes`` indicating if a citation was
   issued

``personSearch``
   a factor with levels ``no`` ``yes`` indicating if the stopped person
   was searched

``vehicleSearch``
   a factor with levels ``no`` or ``yes`` indicating if a vehicle was
   searched

``preRace``
   a factor with levels ``white``, ``black``, ``east african``,
   ``latino``, ``native american``, ``asian``, ``other``, ``unknown``
   for the officer's assessment of race of the person stopped before
   speaking with the person stopped

``race``
   a factor with levels ``white``, ``black``, ``east african``,
   ``latino``, ``native american``, ``asian``, ``other``, ``unknown``,
   officer's determination of race after the incident

``gender``
   a factor with levels ``female``, ``male``, ``unknown``, gender of
   person stopped

``lat``
   latitude of the location of the incident, somewhat rounded

``long``
   latitude of the location of the incident, somewhat rounded

``policePrecinct``
   Minneapolis Police Precinct number

``neighborhood``
   a factor with 84 levels giving the name of the Minneapolis
   neighborhood of the incident

``MDC``
   a factor with levels ``mdc`` for data collected via in-vehicle
   computer, and ``other`` for data submitted by officers not in a
   vehicle, either on foot, bicycle or horseback. Several of the
   variables above were recorded only in-vehicle

Details
~~~~~~~

A few stops have been deleted, either because thesu location data was
missing, or a few very rare categories were also removed. The data frame
``MplsDemo`` contains 2015 demongraphic data on Minneapolis
neighborhoods, using the same neighborhood names as this data file.
Demographics are available for 84 of Minneaolis' 87 neighborhoods. The
remaining 3 presumably have no housing.

Source
~~~~~~

These are public data obtained from
<http://opendata.minneapolismn.gov/datasets/police-stop-data>. A few
more fields, and more data, are available at the original source

Examples
~~~~~~~~

::

   summary(MplsStops)
