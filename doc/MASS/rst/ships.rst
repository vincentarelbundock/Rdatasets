.. container::

   ===== ===============
   ships R Documentation
   ===== ===============

   .. rubric:: Ships Damage Data
      :name: ships-damage-data

   .. rubric:: Description
      :name: description

   Data frame giving the number of damage incidents and aggregate months
   of service by ship type, year of construction, and period of
   operation.

   .. rubric:: Usage
      :name: usage

   ::

      ships

   .. rubric:: Format
      :name: format

   ``type``
      type: ``"A"`` to ``"E"``.

   ``year``
      year of construction: 1960–64, 65–69, 70–74, 75–79 (coded as
      ``"60"``, ``"65"``, ``"70"``, ``"75"``).

   ``period``
      period of operation : 1960–74, 75–79.

   ``service``
      aggregate months of service.

   ``incidents``
      number of damage incidents.

   .. rubric:: Source
      :name: source

   P. McCullagh and J. A. Nelder, (1983), *Generalized Linear Models.*
   Chapman & Hall, section 6.3.2, page 137
