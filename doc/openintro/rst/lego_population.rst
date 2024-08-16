.. container::

   .. container::

      =============== ===============
      lego_population R Documentation
      =============== ===============

      .. rubric:: Population of Lego Sets for Sale between Jan. 1, 2018
         and Sept. 11, 2020.
         :name: population-of-lego-sets-for-sale-between-jan.-1-2018-and-sept.-11-2020.

      .. rubric:: Description
         :name: description

      Data about Lego Sets for sale. Based on JSDSE article by Anna
      Peterson and Laura Ziegler Data from their article was scrapped
      from multiple sources including brickset.com

      .. rubric:: Usage
         :name: usage

      .. code:: R

         lego_population

      .. rubric:: Format
         :name: format

      A data frame with 1304 rows and 14 variables.

      item_number
         Set Item number

      set_name
         Name of the set.

      theme
         Set theme: Duplo, City or Friends.

      pieces
         Number of pieces in the set.

      price
         Recommended retail price from LEGO.

      amazon_price
         Price of the set at Amazon.

      year
         Year that it was produced.

      ages
         LEGO's recommended ages of children for the set

      pages
         Pages in the instruction booklet.

      minifigures
         Number of LEGO people in the data, if unknown "NA" was
         recorded.

      packaging
         Type of packaging: bag, box, etc.

      weight
         Weight of the set of LEGOS in pounds and kilograms.

      unique_pieces
         Number of pieces classified as unique in the instruction
         manual.

      size
         Size of the lego pieces: Large if safe for small children and
         Small for older children.

      .. rubric:: Source
         :name: source

      Peterson, A. D., & Ziegler, L. (2021). Building a multiple linear
      regression model with LEGO brick data. Journal of Statistics and
      Data Science Education, 29(3),1-7.
      `doi:10.1080/26939169.2021.1946450 <https://doi.org/10.1080/26939169.2021.1946450>`__

      `BrickInstructions.com. (n.d.). Retrieved February 2, 2021
      from <https://lego.brickinstructions.com/>`__

      `Brickset. (n.d.). BRICKSET: Your LEGO® set guide. Retrieved
      February 2, 2021 from <https://brickset.com>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)

         lego_population |>
           filter(theme == "Friends" | theme == "City") |>
           ggplot(aes(x = pieces, y = amazon_price)) +
           geom_point(alpha = 0.3) +
           labs(
             x = "Pieces in the Set",
             y = "Amazon Price",
             title = "Amazon Price vs Number of Pieces in Lego Sets",
             subtitle = "Friends and City Themes"
           )
