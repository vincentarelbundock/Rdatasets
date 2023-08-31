.. container::

   =============== ===============
   ischemic_stroke R Documentation
   =============== ===============

   .. rubric:: Clinical data used to predict ischemic stroke
      :name: ischemic_stroke

   .. rubric:: Description
      :name: description

   A data set to predict a binary outcome using imaging and patient
   data.

   .. rubric:: Details
      :name: details

   These data were gathered to predict patient risk for ischemic stroke.
   A historical set of patients with a range of carotid artery blockages
   were selected. The data consisted of 126 patients, 44 of which had
   blockages greater than 70%. All patients had undergone Computed
   Tomography Angiography (CTA) to generate a detailed three-dimensional
   visualization and characterization of the blockage. These images were
   then analyzed in order to compute several features related to the
   disease, including: percent stenosis, arterial wall thickness, and
   tissue characteristics such as lipid-rich necrotic core and
   calcification.

   The group of patients in this study also had follow-up information on
   whether or not a stroke occurred at a subsequent point in time. The
   data for each patient also included commonly collected clinical
   characteristics for risk of stroke such as whether or not the patient
   had atrial fibrillation, coronary artery disease, and a history of
   smoking. Demographics of gender and age were included as well. These
   readily available risk factors can be thought of as another
   potentially useful predictor set that can be evaluated. In fact, this
   set of predictors should be evaluated first to assess their ability
   to predict stroke since these predictors are easy to collect, are
   acquired at patient presentation, and do not require an expensive
   imaging technique.

   Columns:

   -  ``stroke``: factor (levels: 'yes' and 'no')

   -  ``nascet_scale``: numeric

   -  ``calc_vol``: numeric

   -  ``calc_vol_prop``: numeric

   -  ``matx_vol``: numeric

   -  ``matx_vol_prop``: numeric

   -  ``lrnc_vol``: numeric

   -  ``lrnc_vol_prop``: numeric

   -  ``max_calc_area``: numeric

   -  ``max_calc_area_prop``: numeric

   -  ``max_dilation_by_area``: numeric

   -  ``max_matx_area``: numeric

   -  ``max_matx_area_prop``: numeric

   -  ``max_lrnc_area``: numeric

   -  ``max_lrnc_area_prop``: numeric

   -  ``max_max_wall_thickness``: numeric

   -  ``max_remodeling_ratio``: numeric

   -  ``max_stenosis_by_area``: numeric

   -  ``max_wall_area``: numeric

   -  ``wall_vol``: numeric

   -  ``max_stenosis_by_diameter``: numeric

   -  ``age``: integer

   -  ``male``: integer

   -  ``smoking_history``: integer

   -  ``atrial_fibrillation``: integer

   -  ``coronary_artery_disease``: integer

   -  ``diabetes_history``: integer

   -  ``hypercholesterolemia_history``: integer

   -  ``hypertension_history``: integer

   .. rubric:: Value
      :name: value

   =================== ========
   ``ischemic_stroke`` a tibble
   =================== ========

   .. rubric:: Source
      :name: source

   Kuhn, Max, and Kjell Johnson. *Feature Engineering and Selection: A
   Practical Approach for Predictive Models*. Chapman and Hall/CRC,
   2019.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(ischemic_stroke)
      str(ischemic_stroke)
