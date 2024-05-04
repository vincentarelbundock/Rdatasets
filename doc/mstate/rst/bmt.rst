.. container::

   .. container::

      === ===============
      bmt R Documentation
      === ===============

      .. rubric:: BMT data from Klein and Moeschberger
         :name: bmt-data-from-klein-and-moeschberger

      .. rubric:: Description
         :name: description

      A data frame of 137 rows (patients) and 22 columns. The included
      variables are

      group
         Disease group; 1 = ALL, 2 = AML Low Risk, 3 = AML High Risk

      t1
         Time in days to death or last follow-up

      t2
         Disease-free survival time in days (time to relapse, death or
         last follow-up)

      d1
         Death indicator; 1 = dead, 0 = alive

      d2
         Relapse indicator; 1 = relapsed, 0 = disease-free

      d3
         Disease-free survival indicator; 1 = dead or relapsed, 0 =
         alive and disease-free)

      ta
         Time in days to Acute Graft-versus-Host Disease (AGVHD)

      da
         Acute GVHD indicator; 1 = Acute GVHD, 0 = No Acute GVHD

      tc
         Time (days) to Chronic Graft-vrsus-Host Disease (CGVHD)

      dc
         Chronic GVHD indicator; 1 = Chronic GVHD, 0 = No Chronic GVHD

      tp
         Time (days) to platelet recovery

      dp
         Platelet recovery indicator; 1 = platelets returned to normal,
         0 = platelets never returned to normal

      z1
         Patient age in years

      z2
         Donor age in years

      z3
         Patient sex; 1 = male, 0 = female

      z4
         Donor sex; 1 = male, 0 = female

      z5
         Patient CMV status; 1 = CMV positive, 0 = CMV negative

      z6
         Donor CMV status; 1 = CMV positive, 0 = CMV negative

      z7
         Waiting time to transplant in days

      z8
         FAB; 1 = FAB grade 4 or 5 and AML, 0 = Otherwise

      z9
         Hospital; 1 = The Ohio State University, 2 = Alferd , 3 = St.
         Vincent, 4 = Hahnemann

      z10
         MTX used as a Graft-versus-Host prophylactic; 1 = yes, 0 = no

      .. rubric:: Format
         :name: format

      A data frame, see ``data.frame``.

      .. rubric:: References
         :name: references

      Klein and Moeschberger (1997). *Survival Analysis Techniques for
      Censored and Truncated Data*, Springer, New York.
