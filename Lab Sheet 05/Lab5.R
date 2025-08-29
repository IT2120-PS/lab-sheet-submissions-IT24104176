# Set working directory
setwd("C:\\Users\\it24104176\\Desktop\\IT24104176")
getwd()
# Import dataset
delivery_data <- read.table("Lab 05.txt", header = TRUE)


breaks <- seq(20, 70, length.out = 10)  # 9 intervals = 10 break points
hist(delivery_data$Delivery_Time,
     breaks = breaks,
     right = FALSE,
     col = "lightblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

#The histogram shows a moderately
#right-skewed distribution. Most delivery times fall between 30 and 50 minutes,
#with fewer instances above 60 minutes. This suggests that while most deliveries
#are timely.


freq_table <- hist(delivery_data$Delivery_Time,
                   breaks = breaks,
                   right = FALSE,
                   plot = FALSE)

# Cumulative frequency
cum_freq <- cumsum(freq_table$counts)

# Midpoints for plotting
midpoints <- freq_table$breaks[-1]

# Plot ogive
plot(midpoints, cum_freq,
     type = "o",
     col = "red",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")

