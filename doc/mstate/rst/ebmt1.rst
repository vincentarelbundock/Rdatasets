.. container::

   ========================= ===============
   EBMT year of relapse data R Documentation
   ========================= ===============

   .. rubric:: Data from the European Society for Blood and Marrow
      Transplantation (EBMT)
      :name: data-from-the-european-society-for-blood-and-marrow-transplantation-ebmt

   .. rubric:: Description
      :name: description

   A data frame of 1977 patients transplanted for CML. The included
   variables are

   patid
      Patient identification number

   srv
      Time in days from transplantation to death or last follow-up

   srvstat
      Survival status; 1 = death; 0 = censored

   rel
      Time in days from transplantation to relapse or last follow-up

   relstat
      Relapse status; 1 = relapsed; 0 = censored

   yrel
      Calendar year of relapse; factor with levels "1993-1996","
      1997-1999", "2000-"

   age
      Patient age at transplant (years)

   score
      Gratwohl score; factor with levels "Low risk", "Medium risk",
      "High risk"

   .. rubric:: Format
      :name: format

   A data frame, see ``data.frame``.

   .. rubric:: Source
      :name: source

   We acknowledge the European Society for Blood and Marrow
   Transplantation (EBMT) for making available these data. Disclaimer:
   these data were simplified for the purpose of illustration of the
   analysis of competing risks and multi-state models and do not reflect
   any real life situation. No clinical conclusions should be drawn from
   these data.
