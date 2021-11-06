.. container::

   ========== ===============
   pizzaplace R Documentation
   ========== ===============

   .. rubric:: A year of pizza sales from a pizza place
      :name: a-year-of-pizza-sales-from-a-pizza-place

   .. rubric:: Description
      :name: description

   A synthetic dataset that describes pizza sales for a pizza place
   somewhere in the US. While the contents are artificial, the
   ingredients used to make the pizzas are far from it. There are 32
   different pizzas that fall into 4 different categories: ``classic``
   (classic pizzas: 'You probably had one like it before, but never like
   this!'), ``chicken`` (pizzas with chicken as a major ingredient: 'Try
   the Southwest Chicken Pizza! You'll love it!'), ``supreme`` (pizzas
   that try a little harder: 'My Soppressata pizza uses only the finest
   salami from my personal salumist!'), and, ``veggie`` (pizzas without
   any meats whatsoever: 'My Five Cheese pizza has so many cheeses, I
   can only offer it in Large Size!').

   .. rubric:: Usage
      :name: usage

   ::

      pizzaplace

   .. rubric:: Format
      :name: format

   A tibble with 49574 rows and 7 variables:

   id
      The ID for the order, which consists of one or more pizzas at a
      give ``date`` and ``time``

   date
      A character representation of the ``order`` date, expressed in the
      ISO 8601 date format (YYYY-MM-DD)

   time
      A character representation of the ``order`` time, expressed as a
      24-hour time the ISO 8601 extended time format (hh:mm:ss)

   name
      The short name for the pizza

   size
      The size of the pizza, which can either be ``S``, ``M``, ``L``,
      ``XL`` (rare!), or ``XXL`` (even rarer!); most pizzas are
      available in the ``S``, ``M``, and ``L`` sizes but exceptions
      apply

   type
      The category or type of pizza, which can either be ``classic``,
      ``chicken``, ``supreme``, or ``veggie``

   price
      The price of the pizza and the amount that it sold for (in USD)

   .. rubric:: Details
      :name: details

   Each pizza in the dataset is identified by a short ``name``. The
   following listings provide the full names of each pizza and their
   main ingredients.

   Classic Pizzas:

   -  ``classic_dlx``: The Classic Deluxe Pizza (Pepperoni, Mushrooms,
      Red Onions, Red Peppers, Bacon)

   -  ``big_meat``: The Big Meat Pizza (Bacon, Pepperoni, Italian
      Sausage, Chorizo Sausage)

   -  ``pepperoni``: The Pepperoni Pizza (Mozzarella Cheese, Pepperoni)

   -  ``hawaiian``: The Hawaiian Pizza (Sliced Ham, Pineapple,
      Mozzarella Cheese)

   -  ``pep_msh_pep``: The Pepperoni, Mushroom, and Peppers Pizza
      (Pepperoni, Mushrooms, and Green Peppers)

   -  ``ital_cpcllo``: The Italian Capocollo Pizza (Capocollo, Red
      Peppers, Tomatoes, Goat Cheese, Garlic, Oregano)

   -  ``napolitana``: The Napolitana Pizza (Tomatoes, Anchovies, Green
      Olives, Red Onions, Garlic)

   -  ``the_greek``: The Greek Pizza (Kalamata Olives, Feta Cheese,
      Tomatoes, Garlic, Beef Chuck Roast, Red Onions)

   Chicken Pizzas:

   -  ``thai_ckn``: The Thai Chicken Pizza (Chicken, Pineapple,
      Tomatoes, Red Peppers, Thai Sweet Chilli Sauce)

   -  ``bbq_ckn``: The Barbecue Chicken Pizza (Barbecued Chicken, Red
      Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce)

   -  ``southw_ckn``: The Southwest Chicken Pizza (Chicken, Tomatoes,
      Red Peppers, Red Onions, Jalapeno Peppers, Corn, Cilantro,
      Chipotle Sauce)

   -  ``cali_ckn``: The California Chicken Pizza (Chicken, Artichoke,
      Spinach, Garlic, Jalapeno Peppers, Fontina Cheese, Gouda Cheese)

   -  ``ckn_pesto``: The Chicken Pesto Pizza (Chicken, Tomatoes, Red
      Peppers, Spinach, Garlic, Pesto Sauce)

   -  ``ckn_alfredo``: The Chicken Alfredo Pizza (Chicken, Red Onions,
      Red Peppers, Mushrooms, Asiago Cheese, Alfredo Sauce)

   Supreme Pizzas:

   -  ``brie_carre``: The Brie Carre Pizza (Brie Carre Cheese,
      Prosciutto, Caramelized Onions, Pears, Thyme, Garlic)

   -  ``calabrese``: The Calabrese Pizza (‘Nduja Salami, Pancetta,
      Tomatoes, Red Onions, Friggitello Peppers, Garlic)

   -  ``soppressata``: The Soppressata Pizza (Soppressata Salami,
      Fontina Cheese, Mozzarella Cheese, Mushrooms, Garlic)

   -  ``sicilian``: The Sicilian Pizza (Coarse Sicilian Salami,
      Tomatoes, Green Olives, Luganega Sausage, Onions, Garlic)

   -  ``ital_supr``: The Italian Supreme Pizza (Calabrese Salami,
      Capocollo, Tomatoes, Red Onions, Green Olives, Garlic)

   -  ``peppr_salami``: The Pepper Salami Pizza (Genoa Salami,
      Capocollo, Pepperoni, Tomatoes, Asiago Cheese, Garlic)

   -  ``prsc_argla``: The Prosciutto and Arugula Pizza (Prosciutto di
      San Daniele, Arugula, Mozzarella Cheese)

   -  ``spinach_supr``: The Spinach Supreme Pizza (Spinach, Red Onions,
      Pepperoni, Tomatoes, Artichokes, Kalamata Olives, Garlic, Asiago
      Cheese)

   -  ``spicy_ital``: The Spicy Italian Pizza (Capocollo, Tomatoes, Goat
      Cheese, Artichokes, Peperoncini verdi, Garlic)

   Vegetable Pizzas

   -  ``mexicana``: The Mexicana Pizza (Tomatoes, Red Peppers, Jalapeno
      Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic)

   -  ``four_cheese``: The Four Cheese Pizza (Ricotta Cheese, Gorgonzola
      Piccante Cheese, Mozzarella Cheese, Parmigiano Reggiano Cheese,
      Garlic)

   -  ``five_cheese``: The Five Cheese Pizza (Mozzarella Cheese,
      Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese,
      Garlic)

   -  ``spin_pesto``: The Spinach Pesto Pizza (Spinach, Artichokes,
      Tomatoes, Sun-dried Tomatoes, Garlic, Pesto Sauce)

   -  ``veggie_veg``: The Vegetables + Vegetables Pizza (Mushrooms,
      Tomatoes, Red Peppers, Green Peppers, Red Onions, Zucchini,
      Spinach, Garlic)

   -  ``green_garden``: The Green Garden Pizza (Spinach, Mushrooms,
      Tomatoes, Green Olives, Feta Cheese)

   -  ``mediterraneo``: The Mediterranean Pizza (Spinach, Artichokes,
      Kalamata Olives, Sun-dried Tomatoes, Feta Cheese, Plum Tomatoes,
      Red Onions)

   -  ``spinach_fet``: The Spinach and Feta Pizza (Spinach, Mushrooms,
      Red Onions, Feta Cheese, Garlic)

   -  ``ital_veggie``: The Italian Vegetables Pizza (Eggplant,
      Artichokes, Tomatoes, Zucchini, Red Peppers, Garlic, Pesto Sauce)

   .. rubric:: Function ID
      :name: function-id

   11-5

   .. rubric:: See Also
      :name: see-also

   Other Datasets: ``countrypops``, ``exibble``, ``gtcars``, ``sp500``,
   ``sza``

   .. rubric:: Examples
      :name: examples

   ::

      # Here is a glimpse at the data
      # available in `pizzaplace`
      dplyr::glimpse(pizzaplace)

