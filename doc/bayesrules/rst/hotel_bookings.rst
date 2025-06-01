.. container::

   .. container::

      ============== ===============
      hotel_bookings R Documentation
      ============== ===============

      .. rubric:: Hotel Bookings Data
         :name: hotel-bookings-data

      .. rubric:: Description
         :name: description

      A random subset of the data on hotel bookings originally collected
      by Antonio, Almeida and Nunes (2019) and distributed through the R
      for Data Science TidyTuesday project.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         hotel_bookings

      .. rubric:: Format
         :name: format

      A data frame with 1000 hotel bookings and 32 variables on each
      booking.

      hotel
         "Resort Hotel" or "City Hotel"

      is_canceled
         whether the booking was cancelled

      lead_time
         number of days between booking and arrival

      arrival_date_year
         year of scheduled arrival

      arrival_date_month
         month of scheduled arrival

      arrival_date_week_number
         week of scheduled arrival

      arrival_date_day_of_month
         day of month of scheduled arrival

      stays_in_weekend_nights
         number of reserved weekend nights

      stays_in_week_nights
         number of reserved week nights

      adults
         number of adults in booking

      children
         number of children

      babies
         number of babies

      meal
         whether the booking includes breakfast (BB = bed & breakfast),
         breakfast and dinner (HB = half board), or breakfast, lunch,
         and dinner (FB = full board)

      country
         guest's country of origin

      market_segment
         market segment designation (eg: TA = travel agent, TO = tour
         operator)

      distribution_channel
         booking distribution channel (eg: TA = travel agent, TO = tour
         operator)

      is_repeated_guest
         whether or not booking was made by a repeated guest

      previous_cancellations
         guest's number of previous booking cancellations

      previous_bookings_not_canceled
         guest's number of previous bookings that weren't cancelled

      reserved_room_type
         code for type of room reserved by guest

      assigned_room_type
         code for type of room assigned by hotel

      booking_changes
         number of changes made to the booking

      deposit_type
         No Deposit, Non Refund, Refundable

      agent
         booking travel agency

      company
         booking company

      days_in_waiting_list
         number of days the guest waited for booking confirmation

      customer_type
         Contract, Group, Transient, Transient-party (a transient
         booking tied to another transient booking)

      average_daily_rate
         average hotel cost per day

      required_car_parking_spaces
         number of parking spaces the guest needed

      total_of_special_requests
         number of guest special requests

      reservation_status
         Canceled, Check-Out, No-Show

      reservation_status_date
         when the guest cancelled or checked out

      .. rubric:: Source
         :name: source

      Nuno Antonio, Ana de Almeida, and Luis Nunes (2019). "Hotel
      booking demand datasets." Data in Brief (22): 41-49.
      https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-11/hotels.csv/.
