library(openxlsx)

housing <- read.xlsx('/Users/mario/Desktop/HW/GRAD/241/rev_ds.xlsx')

par(mfrow = c(3, 2))  # grid of plots
names(housing) <- gsub("\\.", "_", names(housing))

hist(housing$X1_transaction_date, main = "Transaction Date", xlab = "Year")
hist(housing$X2_house_age, main = "House Age", xlab = "Years")
hist(housing$X3_distance_to_the_nearest_MRT_station, main = "Distance to MRT", xlab = "Meters")

barplot(
  table(housing$X4_number_of_convenience_stores),
  main = "Number of Convenience Stores",
  xlab = "Stores",
  ylab = "Frequency"
)

hist(housing$X5_latitude, main = "Latitude", xlab = "Degrees")
hist(housing$X6_longitude, main = "Longitude", xlab = "Degrees")

# hist for y
hist(housing$Y_house_price_of_unit_area, main = "House Price per Unit Area",
     xlab = "10,000 New Taiwan Dollar / Ping")

# pairs plot
pairs(
  housing[, c(
    "Y_house_price_of_unit_area",
    "X1_transaction_date",
    "X2_house_age",
    "X3_distance_to_the_nearest_MRT_station",
    "X4_number_of_convenience_stores",
    "X5_latitude",
    "X6_longitude"
  )],
  main = "Pair Plot of Housing Variables"
)
