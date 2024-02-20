library(quantmod)
#install.packages("highcahrter",repos="https://cran.r-project.org")
#install.packages(highcharter)#getsymbols is from quantmod which gets data from yahoofinaance
price_bbri <- getSymbols("TATASTEEL.NS", auto.assign=FALSE, from="2021-07-01", to="2023-07-18")
#prints some top data from top
head(price_bbri)
#plots graph (line) from quantmod package
chartSeries(price_bbri,name="Reliance from 2021 to 2023")
#closing price of the every day
closing_pr <- Cl(to.monthly(price_bbri))
#decompose it in to seasonal,observed,trend,random
dc <- decompose(as.ts(closing_pr,start=c(2014,1)))
#plot visualization  pritd  by belove line
plot(dc)

library(highcharter)
highchart(type="stock") %>% 
  #This will create a basic line chart with the given data series
  hc_add_series(price_bbri) %>% 
  hc_add_series(SMA(na.omit(Cl(price_bbri)),n=50),name="SMA(50)") %>% 
  hc_add_series(SMA(na.omit(Cl(price_bbri)),n=200),name="SMA(200)") %>% 
  hc_title(text="<b>Relinace Price Candle Stick Chart 2021-2023</b>")
#pipe operator(%>%) It takes the output from one function and passes it as the first argument to the next function

n <- 150
library(forecast)
# Splitting the data
train <- head(Cl(price_bbri), length(Cl(price_bbri))-n)
test <- tail(Cl(price_bbri), n)
# Forecast the data
model_non <- auto.arima(train, seasonal=FALSE)

# Forecast n periods of the data
fc_non <- forecast(model_non, h=n)

# Plot the result
dates_for_x_axis <- seq(from = as.Date("2021-01-01"), length.out = length(fc_non), by = "1 day")
autoplot(fc_non, xlab = "Time Periods", ylab = "Forecast Values",x = dates_for_x_axis)+ 
  autolayer(ts(test, start=length(train)), series = "Test Data")
#checkresiduals(fc_non)
checkresiduals(fc_na)
