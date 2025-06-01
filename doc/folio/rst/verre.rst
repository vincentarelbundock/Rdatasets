.. container::

   .. container::

      ===== ===============
      verre R Documentation
      ===== ===============

      .. rubric:: French Medieval Glass Composition
         :name: french-medieval-glass-composition

      .. rubric:: Description
         :name: description

      Chemical analysis (electron probe X-ray micro analysis) of 398
      medieval glass vessels found in France.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         verre

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 398 observations and 17 variables:

      Site
         ``factor``: ``CNL`` (Cour Napoléon, Louvre), ``ORL`` (Orléans),
         ``POI`` (Poitiers), ``ANG`` (Angers), ``OMO`` (Omonville, Seine
         Maritime), ``ROU`` (Rouen), ``MEA`` (Meaux), ``CHL``
         (Châlons-sur-Marne), ``PAI`` (Pairu, Argonne, Ardennes),
         ``BER`` (Bercettes, Argonne, Ardennes), ``BIN`` (Binois,
         Argonne, Ardennes), ``CHE`` (Chevrie, Argonne, Ardennes),
         ``MIT`` (Mitte, Argonne, Ardennes), ``MET`` (Metz), ``CHM``
         (Chambaran).

      Sample
         ``character``: sample code.

      Type
         ``character``: typology.

      Age
         ``character``: century.

      Periode
         ``factor``: ``I`` (9th-12th century), ``II`` (13th-first half
         of the 15th century), ``III`` (end of the 15th to end of the
         16th century), ``IV`` (end of 16th to end of the 17th century).

      Tint
         ``factor``: ``⁠?⁠`` (unknown), ``B`` (blue), ``CL`` (colourless),
         ``CLg`` (colourless – greyish tint), ``PB`` (pale blue;
         ``PGE``: pale greenish), ``PGE-B`` (pale green-blue or
         blue-green), ``PGY-B`` (pale grey-blue), ``R`` (opaque red),
         ``W`` (opaque white), ``⁠*av⁠`` (added aventurine spots), ``⁠*bl⁠``
         (added thread blue or blue spots), ``⁠*r⁠`` (added thread opaque
         red or opaque red spots), ``⁠*w⁠`` (added thread opaque white).

      Na2O
         ``numeric``: Na2O content (percent).

      CaO
         ``numeric``: CaO content (percent).

      K2O
         ``numeric``: K2O content (percent).

      MgO
         ``numeric``: MgO content (percent).

      P2O5
         ``numeric``: P2O5 content (percent).

      SiO2
         ``numeric``: SiO2 content (percent).

      Al2O3
         ``numeric``: Al2O3 content (percent).

      FeO
         ``numeric``: FeO content (percent).

      MnO
         ``numeric``: MnO content (percent).

      Cl
         ``numeric``: Cl content (percent).

      Reference
         ``character``: site reference.

      .. rubric:: References
         :name: references

      Barrera J., Velde B. (1989). A study of french medieval glass
      composition. *Archéologie médiévale*, 19, 81-130.
      `doi:10.3406/arcme.1989.953 <https://doi.org/10.3406/arcme.1989.953>`__.

      .. rubric:: See Also
         :name: see-also

      Other chemical data: ``bronze``, ``kommos``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(
           x = verre$Na2O,
           y = verre$CaO / (verre$CaO + verre$K2O),
           type = "p",
           xlab = expression("Na"[2]*"O (%)"),
           ylab = expression("CaO"/"(CaO"+"K"[2]*"O)")
         )
