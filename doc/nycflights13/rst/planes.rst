.. container::

   .. container::

      ====== ===============
      planes R Documentation
      ====== ===============

      .. rubric:: Plane metadata.
         :name: plane-metadata.

      .. rubric:: Description
         :name: description

      Plane metadata for all plane tailnumbers found in the FAA aircraft
      registry. American Airways (AA) and Envoy Air (MQ) report fleet
      numbers rather than tail numbers so can't be matched.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         planes

      .. rubric:: Format
         :name: format

      A data frame with columns:

      tailnum
         Tail number.

      year
         Year manufactured.

      type
         Type of plane.

      manufacturer, model
         Manufacturer and model.

      engines, seats
         Number of engines and seats.

      speed
         Average cruising speed in mph.

      engine
         Type of engine.

      .. rubric:: Source
         :name: source

      FAA Aircraft registry,
      https://www.faa.gov/licenses_certificates/aircraft_certification/aircraft_registry/releasable_aircraft_download/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         planes

         if (require("dplyr")) {

         # Flights that don't have plane metadata
         flights %>% anti_join(planes, "tailnum")

         }
