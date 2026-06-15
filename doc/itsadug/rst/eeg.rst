=== ===============
eeg R Documentation
=== ===============

Raw EEG data, single trial, 50Hz.
---------------------------------

Description
~~~~~~~~~~~

A dataset containing a single EEG trial.

Usage
~~~~~

.. code:: R

   eeg

Format
~~~~~~

A data frame with 1504 rows and 5 variables:

``Electrode``
   Electrode that recorded the EEG.

``Time``
   Time, time measure from onset of the stimulus.

``Ampl``
   EEG amplitude, recorded by 32 electrodes.

``X``
   Approximation of electrode position, relative to Cz. Left is
   negative.

``Y``
   Approximation of electrode position, relative to Cz. Back is
   negative.

Author(s)
~~~~~~~~~

Jacolien van Rij
