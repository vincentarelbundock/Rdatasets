.. container::

   .. container::

      ======== ===============
      Highway1 R Documentation
      ======== ===============

      .. rubric:: Highway Accidents
         :name: highway-accidents

      .. rubric:: Description
         :name: description

      The data comes from a unpublished master's paper by Carl
      Hoffstedt. They relate the automobile accident rate, in accidents
      per million vehicle miles to several potential terms. The data
      include 39 sections of large highways in the state of Minnesota in
      1973. The goal of this analysis was to understand the impact of
      design variables, ``Acpts``, ``Slim``, ``Sig``, and ``Shld`` that
      are under the control of the highway department, on accidents.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Highway1

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      rate
         1973 accident rate per million vehicle miles

      len
         length of the ``Highway1`` segment in miles

      adt
         average daily traffic count in thousands

      trks
         truck volume as a percent of the total volume

      sigs1
         (number of signalized interchanges per mile times len + 1)/len,
         the number of signals per mile of roadway, adjusted to have no
         zero values.

      slim
         speed limit in 1973

      shld
         width in feet of outer shoulder on the roadway

      lane
         total number of lanes of traffic

      acpt
         number of access points per mile

      itg
         number of freeway-type interchanges per mile

      lwid
         lane width, in feet

      htype
         An indicator of the type of roadway or the source of funding
         for the road, either MC, FAI, PA, or MA

      .. rubric:: Source
         :name: source

      Carl Hoffstedt. This differs from the dataset ``Highway`` in the
      ``alr4`` package only by addition of transformation of some of the
      columns.

      .. rubric:: References
         :name: references

      Fox, J. and Weisberg, S. (2019) *An R Companion to Applied
      Regression*, Third Edition, Sage.

      Weisberg, S. (2014) *Applied Linear Regression*, Fourth Edition,
      Wiley, Section 7.2.
