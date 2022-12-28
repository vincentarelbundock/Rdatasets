.. container::

   ============ ===============
   gap-internal R Documentation
   ============ ===============

   .. rubric:: Internal functions for gap
      :name: internal-functions-for-gap

   .. rubric:: Description
      :name: description

   These are internal functions.

   a2g gives allele-to-genotype conversion.

   g2a returns two alleles according to a genotype identifier.

   g2a.c is the C version of g2c.

   gc.control is used by gc.em().

   gcode is as a2g.

   grec2g is undocumented.

   hap.control is used by hap.em().

   HapDesign and HapFreqSE both accept a ``haplo.em`` object to derieve
   a design/dosage matrix and standard error of haplotype frequency
   estimates. The former is appropriate for haplotype trend regression
   (HTR), e.g., within the generalized linear model (GLM) framework to
   be equivllant to a formal approach as implemented in the package
   haplo.stats and hap.score. However, they are expected to be
   compatible with objects from gc.em() ``gc.em`` and ``hap.em``. The
   two functions are included as courtesy of Prof Andrea Foulkes from
   the useR!2008 tutorial.

   hap.score.glm, hap.score.podds are used by hap.score().

   invlogit, inverse logit transformation.

   is.miss is undocumented.

   KCC calculates disease prevalences in cases and controls for a given
   genotype relative risk, allele frequency and prevalencen of the
   disease in the whole population. It is used by tscc and pbsize2.

   k obtains 1st and 2nd order culumants for correlation coefficient.

   m2plem is an experimental function for PLEM format.

   makeRLEplot for RLE plot.

   sun3d is for 3D Manhattan plot according to Sun, et al. (2018).

   micombine is used to combine imputation results.

   plem2m is also experimental for PLEM format.

   ReadGRM is a function to read GCTA grm.gz and grm.id file

   ReadGRMPLINK is a function to read PLINK PI_HAT as a genomic
   relationship matrix.

   ReadGRMPCA is a function to read .eigenval and .eigenvec files from
   gcta –pca.

   ReadGRMBin is a function to read GCTA grm.bin files, modified from
   GCTA documentation.

   revhap recovers the allele indices for a given haplotype ID in a
   multiallelic system.

   revhap.i is similar to revhap.

   solve.skol is a function used by tscc.

   toETDT a function used to experiment with ETDT.

   ungcode recovers alleles from genotype(s).

   VR is a utility function for calculating variance of a ratio.

   weighted.median is a function for obtaining weighted median with
   interpolation.

   WriteGRM is a utility function to write GCTA grm.gz and grm.id files.

   WriteGRMBin is a utility function to write GCTA grm.bin files.

   WriteGRMSAS is a utility function to write a GRM object to SAS PROCs
   MIXED/GLIMMIX ldata.

   x2 is a simple chi-squared test of two proportions.

   z is a normal z-test of two proportions used by tscc.

   .. rubric:: Usage
      :name: usage

   ::

      a2g(a1,a2)
      chr_pos_a1_a2(chr,pos,a1,a2,prefix="chr",seps=c(":","_","_"),uppercase=TRUE)
      g2a(g)
      g2a.c(g)
      inv_chr_pos_a1_a2(chr_pos_a1_a2,prefix="chr",seps=c(":","_","_"))
      KCC(model,GRR,p1,K)
      sun3d(xyz="INF1.merge.cis.vs.trans",
            cols=c("id","chr1","pos1","chr2","pos2","gene","target","log10p","x","y","col"),
            xy.scale=c(1.3e8,1.3e8),marker.size=4,log10p.max=400,
            prefix=c("Sentinel","CHR","POS","CHR","POS","Gene","Target","-log10(p)"),
            postfix="\u003c/br>",
            json.file="d3.json",pretty=TRUE)
      ReadGRM(prefix=51)
      ReadGRMBin(prefix, AllN=FALSE, size=4)
      ReadGRMPLINK(prefix, diag=1)
      ReadGRMPCA(prefix)
      revhap(loci,hapid)
      VR(v1,vv1,v2,vv2,c12)
      WriteGRM(prefix=51,id,N,GRM)
      WriteGRMBin(prefix, grm, N, id, size=4)
      WriteGRMSAS(grmlist, outfile="gwas")

   .. rubric:: Arguments
      :name: arguments

   +-----------+---------------------------------------------------------+
   | ``a1``    | Allele 1                                                |
   +-----------+---------------------------------------------------------+
   | ``a2``    | Allele 2                                                |
   +-----------+---------------------------------------------------------+
   | ``g``     | A genotype identifier                                   |
   +-----------+---------------------------------------------------------+
   | ``model`` | One of "multiplicative", "additive", "recessive",       |
   |           | "dominant", "overdominant"                              |
   +-----------+---------------------------------------------------------+
   | ``GRR``   | Genotype relative risk                                  |
   +-----------+---------------------------------------------------------+
   | ``p1``    | Frequency of the risk allele                            |
   +-----------+---------------------------------------------------------+
   | ``K``     | Prevalence of disease in the population                 |
   +-----------+---------------------------------------------------------+
   | ``loci``  | A vector of number of alleles at all loci               |
   +-----------+---------------------------------------------------------+
   | ``hapid`` | Haplotype identifier                                    |
   +-----------+---------------------------------------------------------+

   .. rubric:: Details
      :name: details

   These functions are not so frequently called by users
