======================= ===============
ColorectalMiRNAs_tbl_df R Documentation
======================= ===============

PubMed Data of miRNAs in Colorectal Cancer
------------------------------------------

Description
~~~~~~~~~~~

This dataset, ColorectalMiRNAs_tbl_df, is a tibble containing
information from PubMed abstracts related to microRNAs (miRNAs) in
colorectal cancer. The data provides key details such as publication
metadata, article abstracts, and associated miRNAs. The dataset consists
of 508 observations with 8 variables.

Usage
~~~~~

.. code:: R

   data(ColorectalMiRNAs_tbl_df)

Format
~~~~~~

A tibble with 508 observations and 8 variables:

PMID
   PubMed Identifier (numeric).

Year
   Publication year of the article (numeric).

Title
   Title of the PubMed article (character).

Abstract
   Abstract of the article (character).

Language
   Language of the article (character).

Type
   Type of publication, e.g., review, study (character).

Topic
   Research topic related to colorectal cancer and miRNAs (character).

miRNA
   Specific microRNAs mentioned in the publication (character).

Details
~~~~~~~

The dataset name has been kept as 'ColorectalMiRNAs_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_tbl_df' indicates that the dataset is a tibble, which is an enhanced
version of a data frame in R. The original content has not been modified
in any way.

Source
~~~~~~

Data taken from the miRetrieve package. More information is available
at: https://pubmed.ncbi.nlm.nih.gov/
