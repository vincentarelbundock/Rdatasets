.. container::

   .. container::

      ======== ===============
      suicides R Documentation
      ======== ===============

      .. rubric:: Crowd Baiting Behaviour and Suicides
         :name: crowd-baiting-behaviour-and-suicides

      .. rubric:: Description
         :name: description

      Data from a study carried out to investigate the causes of jeering
      or baiting behaviour by a crowd when a person is threatening to
      commit suicide by jumping from a high building.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("suicides")

      .. rubric:: Format
         :name: format

      A two-way classification, see ``table``.

      .. rubric:: Source
         :name: source

      L. Mann (1981), The baiting crowd in episodes of threatened
      suicide. *Journal of Personality and Social Psychology*, **41**,
      703–709.

      .. rubric:: Examples
         :name: examples

      .. code:: R

           data("suicides", package = "HSAUR")
           mosaicplot(suicides)
