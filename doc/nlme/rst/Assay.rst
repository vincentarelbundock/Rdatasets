.. container::

   ===== ===============
   Assay R Documentation
   ===== ===============

   .. rubric:: Bioassay on Cell Culture Plate
      :name: Assay

   .. rubric:: Description
      :name: description

   The ``Assay`` data frame has 60 rows and 4 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Block
      an ordered factor with levels ``2`` < ``1`` identifying the block
      where the wells are measured.

   sample
      a factor with levels ``a`` to ``f`` identifying the sample
      corresponding to the well.

   dilut
      a factor with levels ``1`` to ``5`` indicating the dilution
      applied to the well

   logDens
      a numeric vector of the log-optical density

   .. rubric:: Details
      :name: details

   These data, courtesy of Rich Wolfe and David Lansky from Searle,
   Inc., come from a bioassay run on a 96-well cell culture plate. The
   assay is performed using a split-block design. The 8 rows on the
   plate are labeled A–H from top to bottom and the 12 columns on the
   plate are labeled 1–12 from left to right. Only the central 60 wells
   of the plate are used for the bioassay (the intersection of rows B–G
   and columns 2–11). There are two blocks in the design: Block 1
   contains columns 2–6 and Block 2 contains columns 7–11. Within each
   block, six samples are assigned randomly to rows and five (serial)
   dilutions are assigned randomly to columns. The response variable is
   the logarithm of the optical density. The cells are treated with a
   compound that they metabolize to produce the stain. Only live cells
   can make the stain, so the optical density is a measure of the number
   of cells that are alive and healthy.

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.2)
