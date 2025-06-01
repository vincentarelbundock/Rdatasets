.. container::

   .. container::

      ========== ===============
      DartPoints R Documentation
      ========== ===============

      .. rubric:: Five dart point types from Fort Hood, Texas, U.S.A.
         :name: five-dart-point-types-from-fort-hood-texas-u.s.a.

      .. rubric:: Description
         :name: description

      Metric and categorical measurements on 91 Archaic dart points
      recovered during surface surveys at Fort Hood, Texas representing
      five types.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(DartPoints)

      .. rubric:: Format
         :name: format

      A data frame with 91 observations on the following 17 variables.

      ``Name``
         Dart point type: ``Darl``, ``Ensor``, ``Pedernales``,
         ``Travis``, ``Wells``

      ``Catalog``
         Fort Hood catalog number

      ``TARL``
         Texas Archeological Research Laboratory site number

      ``Quad``
         Fort Hood Quad

      ``Length``
         Maximum Length (mm)

      ``Width``
         Maximum Width (mm)

      ``Thickness``
         Maxmimum Thickness (mm)

      ``B.Width``
         Basal width (mm)

      ``J.Width``
         Juncture width (mm)

      ``H.Length``
         Haft element length (mm)

      ``Weight``
         Weight (gm)

      ``Blade.Sh``
         Blade shape: ``E - Excurvate``, ``I - Incurvate``,
         ``R - Recurvate``, ``S - Straight``

      ``Base.Sh``
         Base shape: ``E - Excurvate``, ``I - Incurvate``,
         ``R - Recurvate``, ``S - Straight``

      ``Should.Sh``
         Shoulder shape: ``E - Excurvate``, ``I - Incurvate``,
         ``S - Straight``, ``X - None``

      ``Should.Or``
         Shoulder orientation: ``B - Barbed``, ``H - Horizontal``,
         ``T - Tapered``, ``X - None``

      ``Haft.Sh``
         Shape lateral haft element ``A - Angular``, ``E - Excurvate``,
         ``I - Incurvate``, ``R - Recurvate``, ``S - Straight``

      ``Haft.Or``
         Orientation lateral haft element: ``C - Concave``,
         ``E - Expanding``, ``P - Parallel``, ``T - Contracting``,
         ``V - Convex``

      .. rubric:: Details
         :name: details

      Measurements on five types of dart points from Fort Hood in
      central Texas (Darl, Ensor, Pedernales, Travis, and Wells). The
      points were recovered during 10 different pedestrian survey
      projects during the 1980's and were classified and measured by H.
      Blaine Ensor using the system created by Futato (1983) as
      described in Carlson, S., et al 1987, pp 51-70 and Appendices 4
      and 7.

      .. rubric:: Source
         :name: source

      Fort Hood Projectile Points. Electronic database compiling the
      results of multiple surface surveys at Fort Hood in the possession
      of David L. Carlson, Department of Anthropology, Texas A&M
      University, College Station, TX. The artifacts are curated at Fort
      Hood, TX by the Cultural Resources Branch of the Directorate of
      Public Works.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 52-60, 99-103, 106-107,
      109-115, 148-157, 182-185, 198-211.

      Carlson, S. B., H. B. Ensor, D. L. Carlson, E. A. Miller, and D E.
      Young. 1987. Archaeological Survey at Fort Hood, Texas Fiscal Year
      1984. *United States Army Fort Hood. Archaeological Resource
      Management Series, Research Report Number 14*.

      Futato, E. M. 1983. Projectile Point Morphology: Steps Toward a
      Formal Account. in Proceedings of the Thirty-fourth Southeastern
      Archaeological Conference, Lafayette, Louisiana, October 27-19,
      1977. *Southeastern Archaeological Conference. Bulletin* 21:
      38–81.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(DartPoints)
         boxplot(Length~Name, DartPoints)
         plot(Width~Length, DartPoints, pch=as.numeric(Name), main="FOrt Hood Dart Points")
         legend("topleft", levels(DartPoints$Name), pch=1:5)
