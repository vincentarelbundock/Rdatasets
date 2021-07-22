============ ===============
gap-internal R Documentation
============ ===============

Internal functions for gap
--------------------------

Description
~~~~~~~~~~~

These are internal functions.

a2g gives allele-to-genotype conversion.

chr_pos_a1_a2 produces SNPID format.

circos.cnvplot produces circos plot of CNVs

circos.cis.vs.trans.plot gives circos plot of cis/trans classification

circos.mhtplot generates circos Manhattan plot with gene annotation

cis.vs.trans.classification classifies hits, usually SNPs with associate
id and (b)ase-(p)air position, to be cis or trans according to a panel
which contains id, chr, start, end, gene variables.

cnvplot is a cutomised function to plot CNVs genomewide

cs is for calculation of credible set.

g2a returns two alleles according to a genotype identifier.

g2a.c is the C version of g2c.

gc.control is used by gc.em().

gc.lambda estimates the genomic control inflation statistic (lambda)

gcode is as a2g.

grec2g is undocumented.

gsmr is a function for Mendelian randomization analysis.

h2G is a utility function for heritability

h2GE is a utility function for heritability involving gene-environment
interaction

h2l is a utility function for converting observed heritability to its
counterpart under liability threshold model

hap.control is used by hap.em().

HapDesign and HapFreqSE both accept a ``haplo.em`` object to derieve a
design/dosage matrix and standard error of haplotype frequency
estimates. The former is appropriate for haplotype trend regression
(HTR), e.g., within the generalized linear model (GLM) framework to be
equivllant to a formal approach as implemented in the package
haplo.stats and hap.score. However, they are expected to be compatible
with objects from gc.em() ``gc.em`` and ``hap.em``. The two functions
are included as courtesy of Prof Andrea Foulkes from the useR!2008
tutorial.

hap.score.glm, hap.score.podds are used by hap.score().

invlogit, inverse logit transformation.

inv_chr_pos_a1_a2 is the inverse function of chr_pos_a1_a2.

invnormal, inverse normal transformation.

is.miss is undocumented.

KCC calculates disease prevalences in cases and controls for a given
genotype relative risk, allele frequency and prevalencen of the disease
in the whole population. It is used by tscc and pbsize2.

k obtains 1st and 2nd order culumants for correlation coefficient.

log10p is log10(p) for a normal deviate.

log10pvalue gives log10(p) for any p, e.g., "1.234e-1000".

logp is log(p) for a normal deviate.

m2plem is an experimental function for PLEM format.

makeRLEplot for RLE plot.

mhtplot2d is for 2D Manhattan plot.

mhtplot3d is for 3D Manhattan plot.

miamiplot is for Miami plot.

micombine is used to combine imputation results.

PARn calculates population attributable risk (PAR) for a list of
frequencies and relative risks (RRs).

plem2m is also experimental for PLEM format.

pvalue takes a z-statistic for a p value with scientific representation.

ReadGRM is a function to read GCTA grm.gz and grm.id file

ReadGRMPLINK is a function to read PLINK PI_HAT as a genomic
relationship matrix.

ReadGRMPCA is a function to read .eigenval and .eigenvec files from gcta
–pca.

ReadGRMBin is a function to read GCTA grm.bin files, modified from GCTA
documentation.

revhap recovers the allele indices for a given haplotype ID in a
multiallelic system.

revhap.i is similar to revhap.

snptest_sample generates a sample file for SNPTEST.

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

Usage
~~~~~

::

   a2g(a1,a2)
   chr_pos_a1_a2(chr,pos,a1,a2,prefix="chr",seps=c(":","_","_"),uppercase=TRUE)
   cis.vs.trans.classification(hits,panel,id,radius=1e6)
   g2a(g)
   g2a.c(g)
   h2G(V,VCOV,verbose=TRUE)
   h2GE(V,VCOV,verbose=TRUE)
   h2l(K=0.05,P=0.5,h2,se,verbose=TRUE)
   inv_chr_pos_a1_a2(chr_pos_a1_a2,prefix="chr",seps=c(":","_","_"))
   KCC(model,GRR,p1,K)
   mhtplot3d(xyz="INF1.merge.cis.vs.trans",
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
   snptest_sample(data,sample_file="snptest.sample",ID_1="ID_1",ID_2="ID_2",
                  missing="missing",C=NULL,D=NULL,P=NULL)
   VR(v1,vv1,v2,vv2,c12)
   WriteGRM(prefix=51,id,N,GRM)
   WriteGRMBin(prefix, grm, N, id, size=4)
   WriteGRMSAS(grmlist, outfile="gwas")

Arguments
~~~~~~~~~

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

Details
~~~~~~~

These functions are not so frequently called by users

Examples
~~~~~~~~

::

   ## Not run: 
   #
   cnvplot(cnv)
   circos.cnvplot(cnv)
   #
   cvt <- cis.vs.trans.classification(hits=jma.cojo, panel=inf1, id="uniprot")
   cvt
   #
   circos.cis.vs.trans.plot(hits="INF1.clumped", panel=inf1, id="uniprot")
   #
   require(gap.datasets)
   g <- c("IRS1","SPRY2","FTO","GRIK3","SNED1","HTR1A","MARCH3","WISP3",
          "PPP1R3B","RP1L1","FDFT1","SLC39A14","GFRA1","MC4R")
   circos.mhtplot(mhtdata,g)
   #
   # zcat METAL/4E.BP1-1.tbl.gz | \
   # awk 'NR==1 || ($1==4 && $2 >= 187158034 - 1e6 && $2 < 187158034 + 1e6)' >  4E.BP1.z
   tbl <- within(read.delim("4E.BP1.z"),{logp <- logp(Effect/StdErr)})
   z <- cs(tbl)
   l <- cs(tbl,log_p="logp")
   #
   d <- read.table("INF1.merge.cis.vs.trans",as.is=TRUE,header=TRUE)
   mhtplot2d(d)
   #
   d <- data.frame(ID_1=1,ID_2=1,missing=0,PC1=1,PC2=2,D1=1,P1=10)
   snptest_sample(d,C=paste0("PC",1:2),D=paste0("D",1:1),P=paste0("P",1:1))
   #
   s <- chr_pos_a1_a2(1,c(123,321),letters[1:2],letters[2:1])
   inv_chr_pos_a1_a2(s)
   inv_chr_pos_a1_a2("chr1:123-A_B",seps=c(":","-","_"))
   #
   p <- mhtplot3d(pretty=FALSE)
   #
   pvalue(-1.96)

   ## End(Not run)
