.. container::

   .. container::

      ================== ===============
      FBICriminal_tbl_df R Documentation
      ================== ===============

      .. rubric:: FBI Criminal Background Check System
         :name: fbi-criminal-background-check-system

      .. rubric:: Description
         :name: description

      This dataset contains detailed data from the FBI's National
      Instant Criminal Background Check System (NICS) on firearm
      background checks across U.S. states. It includes monthly data on
      gun sales, population statistics, and various firearm-related
      activities from multiple categories.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(FBICriminal_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 11,648 observations and 35 variables:

      state
         State where the data was recorded (character).

      year
         Year of the observation (integer).

      month
         Month of the observation (character).

      month.num
         Numeric representation of the month (integer).

      population
         Population of the state (integer).

      guns_per_thousand
         Number of guns per 1,000 people (numeric).

      guns_sold
         Total guns sold (integer).

      multiplier
         Adjustments for sales data (numeric).

      instore_purchases
         Number of in-store purchases (integer).

      permit
         Number of gun permits issued (integer).

      permit_recheck
         Flag for permit recheck status (character).

      handgun
         Number of handguns sold (integer).

      longgun
         Number of long guns sold (integer).

      other
         Number of other types of firearms sold (integer).

      multiple
         Number of multiple gun purchases (integer).

      multiple_corrected
         Corrected count of multiple purchases (integer).

      admin
         Administrative checks conducted (integer).

      prepawn_handgun
         Number of prepawned handguns (integer).

      prepawn_longgun
         Number of prepawned long guns (integer).

      prepawn_other
         Number of prepawned other firearms (integer).

      redemption_handgun
         Number of redeemed handguns (integer).

      redemption_longgun
         Number of redeemed long guns (integer).

      redemption_other
         Number of redeemed other firearms (integer).

      returned_handgun
         Number of returned handguns (integer).

      returned_longgun
         Number of returned long guns (integer).

      returned_other
         Number of returned other firearms (integer).

      rental_handgun
         Number of handguns rented (integer).

      rental_longgun
         Number of long guns rented (integer).

      private_handgun
         Number of privately sold handguns (integer).

      private_longgun
         Number of privately sold long guns (integer).

      private_other
         Number of privately sold other firearms (integer).

      privatereturn_handgun
         Number of privately returned handguns (integer).

      privatereturn_longgun
         Number of privately returned long guns (integer).

      privatereturn_other
         Number of privately returned other firearms (integer).

      totals
         Total checks conducted (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'FBICriminal_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is stored as a tibble, which is a modern form of a data
      frame in R. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      FBI's National Instant Criminal Background Check System (NICS).
