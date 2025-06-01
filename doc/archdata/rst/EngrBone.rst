.. container::

   .. container::

      ======== ===============
      EngrBone R Documentation
      ======== ===============

      .. rubric:: Upper Paleolithic Engraved Bone Design Elements -
         Spain
         :name: upper-paleolithic-engraved-bone-design-elements---spain

      .. rubric:: Description
         :name: description

      Counts of 44 engraved bone design elements at five Upper
      Paleolithic hunter-gatherer sites in Cantabrian, Spain.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("EngrBone")

      .. rubric:: Format
         :name: format

      A data frame with 44 types of engraved bone found at 5 sites.

      ``A``
         Altamira

      ``CM``
         Cueto de la Mina

      ``EJ``
         El Juyo

      ``EC``
         El Cierro

      ``LP``
         La Paloma

      .. rubric:: Details
         :name: details

      Counts of 44 engraved bone design elements at five prehistoric
      hunter-gatherer sites in Cantabrian, Spain. The data were
      originally analyzed by Conkey (1980) and appear in this format in
      Kaufman (1998). Kintigh (1984) used these data to illustrate a
      method for comparing the diversity between samples. The data were
      scanned from Table 2.4 in Baxter (2003, p. 24).

      .. rubric:: Source
         :name: source

      Baxter, M. J. 2003. *Statistics in Archaeology*. Arnold, London.

      .. rubric:: References
         :name: references

      Conkey, M. W. 1980. The Identification of Prehistoric
      Hunter-Gatherer Aggregation Sites: The Case of Altamira. *Current
      Anthropology* 21: 609-30.

      Kaufman, D. 1998. Measuring Archaeological Diversity: An
      Application of the Jackknife Technique. *American Antiquity* 63:
      73-85.

      Kintigh, K. 1984. Measuring Archaeological Diversity by Comparison
      with Simulated Assemblages. *American Antiquity* 49: 44-54.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(EngrBone)
         # Number of engraved bone specimens at each site
         NS <- colSums(EngrBone)
         # Number of kinds of engraved bone at each site
         NT <- colSums(EngrBone>0)
         plot(NS, NT, xlab="Number of Specimens", ylab="Number of Types", main="Engraved Bone", las=1)
         text(NS, NT, names(EngrBone), pos=c(1, 3, 3, 3, 3))
         Key <- apply(attr(EngrBone, "Variables"), 1, paste, collapse=" - ")
         legend("topleft", legend=Key)
