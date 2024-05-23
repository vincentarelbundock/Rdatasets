.. container::

   .. container::

      ============= ===============
      blood_storage R Documentation
      ============= ===============

      .. rubric:: Retrospective Cohort Study of the Effects of Blood
         Storage on Prostate Cancer
         :name: retrospective-cohort-study-of-the-effects-of-blood-storage-on-prostate-cancer

      .. rubric:: Description
         :name: description

      | This data set contains data on 316 men who had undergone radical
        prostatectomy and received transfusion during or within 30 days
        of the surgical procedure and had available prostate serum
        antigen (PSA) follow-up data. The main exposure of interest was
        RBC storage duration group. A number of demographic, baseline
        and prognostic factors were also collected. The outcome was time
        to biochemical (PSA) cancer recurrence. The dataset is cleaned
        and complete. There are no outliers or data problems (more
        details after variable information).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         blood_storage

      .. rubric:: Format
         :name: format

      A data frame with 316 observations and 20 variables

      ``RBC.Age.Group``
         NA, numeric, range: 1.00- 3

      ``Median.RBC.Age``
         NA, numeric, range:10.00- 25

      ``Age``
         NA, numeric, range:38.40- 79

      ``AA``
         NA, numeric, range: 0.00- 1

      ``FamHx``
         NA, numeric, range: 0.00- 1

      ``PVol``
         NA, numeric, range:19.40-274

      ``TVol``
         NA, numeric, range: 1.00- 3

      ``T.Stage``
         NA, numeric, range: 1.00- 2

      ``bGS``
         NA, numeric, range: 1.00- 3

      ``BN+``
         NA, numeric, range: 0.00- 1

      ``OrganConfined``
         NA, numeric, range: 0.00- 1

      ``PreopPSA``
         NA, numeric, range: 1.30- 40

      ``PreopTherapy``
         NA, numeric, range: 0.00- 1

      ``Units``
         NA, numeric, range: 1.00- 19

      ``sGS``
         NA, numeric, range: 1.00- 4

      ``AnyAdjTherapy``
         NA, numeric, range: 0.00- 1

      ``AdjRadTherapy``
         NA, numeric, range: 0.00- 1

      ``Recurrence``
         NA, numeric, range: 0.00- 1

      ``Censor``
         NA, numeric, range: 0.00- 1

      ``TimeToRecurrence``
         NA, numeric, range: 0.27-104

      .. rubric:: Details
         :name: details

      .. rubric:: Background
         :name: background

      | Prostate cancer is the most common malignant neoplasm in men,
        and radical prostatectomy is among the primary therapies for
        localized prostate cancer. The biochemical recurrence-free
        survival rate 5 years after prostatectomy ranges from 70% to
        90%. Improvements in the surgical technique have decreased the
        amount of intraoperative blood loss occurring during radical
        prostatectomy; however, substantial numbers of patients still
        require perioperative blood transfusions.
      | Blood transfusions are associated with adverse reactions,
        including postoperative infections and transfusion-related
        immune perturbations. Allogeneic leukocytes present in the
        transfused blood are thought to suppress host cellular immune
        responses. Furthermore, the immunodepressant effect is secondary
        to an imbalance of accumulated cytokines and proinflammatory
        mediators in the transfused blood against decreased production
        of lymphocyte stimulating cell-mediated cytokines, such as
        interleukin 2 and increased release of immunosuppressive
        prostaglandins in the patient undergoing transfusion.
      | In cancer patients, perioperative blood transfusion has long
        been suspected of reducing long-term survival, but available
        evidence is inconsistent. It is also unclear which components of
        transfused blood underlie the cancer-promoting effects reported
        by some studies. An important factor associated with the
        deleterious effects of blood transfusion is the storage age of
        the transfused blood units. It is suspected that cancer
        recurrence may be worsened after the transfusion of older blood.

      .. rubric:: Study Objective
         :name: study-objective

      | This study evaluated the association between red blood cells
        (RBC) storage duration and biochemical prostate cancer
        recurrence after radical prostatectomy. Specifically, tested was
        the hypothesis that perioperative transfusion of allogeneic RBCs
        stored for a prolonged period is associated with earlier
        biochemical recurrence of prostate cancer after prostatectomy.

      .. rubric:: Subjects and Variables
         :name: subjects-and-variables

      | Patients were assigned to 1 of 3 RBC age exposure groups on the
        basis of the terciles (ie, the 33rd and 66th percentiles) of the
        overall distribution of RBC storage duration if all their
        transfused units could be loosely characterized as of 'younger,'
        'middle,' or 'older' age. Although this approach resulted in the
        removal of certain patients with wide RBC age distributions, it
        has the advantage of defining an essentially random and clearly
        separable exposure.
      | Prostate-specific antigen (PSA) was used as a biochemical marker
        of prostate cancer recurrence after prostatectomy. A PSA value
        of at least 0.4 ng/mL (to convert to microg/L, multiply by 1.0)
        followed by another increase was considered biochemical cancer
        recurrence.
      | The initial population consisted of 865 men who had undergone
        radical prostatectomy and received transfusion during or within
        30 days of the surgical procedure at Cleveland Clinic and had
        available PSA follow-up data. Of these patients, 110 were
        excluded from the analysis because they received a combination
        of allogeneic and autologous blood products. Of the remaining
        755 patients, 405 (54%) received solely allogeneic and 350
        patients (46%) received solely autologous RBC units. Of the 405
        patients who received allogeneic RBC transfusion, 89 were
        excluded because their transfused RBC age distribution included
        more than one of the terciles. Thus, this dataset consists of
        the 316 patients who received solely allogeneic blood products
        and could be classified into an RBC age exposure group.

      .. rubric:: Source
         :name: source

      Cata et al. 'Blood Storage Duration and Biochemical Recurrence of
      Cancer after Radical Prostatectomy'. Mayo Clin Proc 2011; 86(2):
      120-127.
