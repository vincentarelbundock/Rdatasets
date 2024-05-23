.. container::

   .. container::

      ============== ===============
      leaf_id_flavia R Documentation
      ============== ===============

      .. rubric:: Leaf identification data (Flavia)
         :name: leaf-identification-data-flavia

      .. rubric:: Description
         :name: description

      Image analysis of leaves to predict species.

      .. rubric:: Details
         :name: details

      From the original manuscript: "The Flavia dataset contains 1907
      leaf images. There are 32 different species and each has 50-77
      images. Scanners and digital cameras are used to acquire the leaf
      images on a plain background. The isolated leaf images contain
      blades only, without a petiole. These leaf images are collected
      from the most common plants in Yangtze, Delta, China. Those leaves
      were sampled on the campus of the Nanjing University and the Sun
      Yat-Sen arboretum, Nanking, China."

      The reference below has details information on the features used
      for prediction.

      Columns:

      -  ``species``: factor (32 levels)

      -  ``apex``: factor (9 levels)

      -  ``base``: factor (6 levels)

      -  ``shape``: factor (5 levels)

      -  ``denate_edge``: factor (levels: 'no' and 'yes')

      -  ``lobed_edge``: factor (levels: 'no' and 'yes')

      -  ``smooth_edge``: factor (levels: 'no' and 'yes')

      -  ``toothed_edge``: factor (levels: 'no' and 'yes')

      -  ``undulate_edge``: factor (levels: 'no' and 'yes')

      -  ``outlying_polar``: numeric

      -  ``skewed_polar``: numeric

      -  ``clumpy_polar``: numeric

      -  ``sparse_polar``: numeric

      -  ``striated_polar``: numeric

      -  ``convex_polar``: numeric

      -  ``skinny_polar``: numeric

      -  ``stringy_polar``: numeric

      -  ``monotonic_polar``: numeric

      -  ``outlying_contour``: numeric

      -  ``skewed_contour``: numeric

      -  ``clumpy_contour``: numeric

      -  ``sparse_contour``: numeric

      -  ``striated_contour``: numeric

      -  ``convex_contour``: numeric

      -  ``skinny_contour``: numeric

      -  ``stringy_contour``: numeric

      -  ``monotonic_contour``: numeric

      -  ``num_max_ponits``: numeric

      -  ``num_min_points``: numeric

      -  ``diameter``: numeric

      -  ``area``: numeric

      -  ``perimeter``: numeric

      -  ``physiological_length``: numeric

      -  ``physiological_width``: numeric

      -  ``aspect_ratio``: numeric

      -  ``rectangularity``: numeric

      -  ``circularity``: numeric

      -  ``compactness``: numeric

      -  ``narrow_factor``: numeric

      -  ``perimeter_ratio_diameter``: numeric

      -  ``perimeter_ratio_length``: numeric

      -  ``perimeter_ratio_lw``: numeric

      -  ``num_convex_points``: numeric

      -  ``perimeter_convexity``: numeric

      -  ``area_convexity``: numeric

      -  ``area_ratio_convexity``: numeric

      -  ``equivalent_diameter``: numeric

      -  ``eccentriciry``: numeric

      -  ``contrast``: numeric

      -  ``correlation_texture``: numeric

      -  ``inverse_difference_moments``: numeric

      -  ``entropy``: numeric

      -  ``mean_red_val``: numeric

      -  ``mean_green_val``: numeric

      -  ``mean_blue_val``: numeric

      -  ``std_red_val``: numeric

      -  ``std_green_val``: numeric

      -  ``std_blue_val``: numeric

      -  ``correlation``: numeric

      .. rubric:: Value
         :name: value

      ================== ============
      ``leaf_id_flavia`` a data frame
      ================== ============

      .. rubric:: Source
         :name: source

      Lakshika, Jayani PG, and Thiyanga S. Talagala. "Computer-aided
      interpretable features for leaf image classification." *arXiv
      preprint* arXiv:2106.08077 (2021).

      https://github.com/SMART-Research/leaffeatures_paper

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(leaf_id_flavia)
         str(leaf_id_flavia)
