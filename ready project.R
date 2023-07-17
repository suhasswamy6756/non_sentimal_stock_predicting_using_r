library(quantmod)
install.packages(highcharter)
price_bbri <- getSymbols("RELIANCE.NS", auto.assign=FALSE, from="2021-01-01", to="2023-07-09")
head(price_bbri)
chartSeries(price_bbri,name="Reliance from 2021 to 2023")
closing_pr <- Cl(to.monthly(price_bbri))
dc <- decompose(as.ts(closing_pr,start=c(2014,1)))
plot(dc)
dc$seasonal
library(highcharter)
highchart(type="stock") %>% 
  hc_add_series(price_bbri) %>% 
  hc_add_series(SMA(na.omit(Cl(price_bbri)),n=50),name="SMA(50)") %>% 
  hc_add_series(SMA(na.omit(Cl(price_bbri)),n=200),name="SMA(200)") %>% 
  hc_title(text="<b>BBRI Price Candle Stick Chart 2014-2019</b>")
# Fetch BBNI, BMRI, and IHSG stock prices

# Calculate the stocks return


# Combine the returns as one data frame


# Plot the returns

n <- 150
library(forecast)
# Splitting the data
train <- head(Cl(price_bbri), length(Cl(price_bbri))-n)
test <- tail(Cl(price_bbri), n)
# Forecast the data
fc_na <- naive(train, h=n)

# Plot the result
autoplot(fc_na) +
  autolayer(ts(test, start=length(train)), series = "Test Data")