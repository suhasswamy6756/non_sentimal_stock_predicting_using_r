# 📊 Non-Sentimental Stock Analysis in R

## 📝 Project Description
This project is my **first Machine Learning project** and also a **course project for R programming**. It performs **stock price analysis and forecasting** using **pure numerical data**, without considering sentiment analysis from news or social media. It utilizes **time series analysis and visualization techniques** to derive insights into stock price movements.

## 🚀 Features
- 📈 **Stock Data Fetching** – Retrieve historical stock price data  
- 🔍 **Data Preprocessing** – Handle missing values and format data  
- 📊 **Visualization** – Line and candlestick charts for trend analysis  
- 🔮 **Forecasting** – Time series forecasting using the **ARIMA model**  
- 📉 **Performance Evaluation** – Compare actual vs. predicted prices  

## 🛠️ Tech Stack
- **Programming Language**: R  
- **Libraries**:  
  - `quantmod` – Fetch stock data  
  - `ggplot2` – Data visualization  
  - `TTR` – Technical indicators  
  - `forecast` – ARIMA model for time series forecasting  

## 🎯 How to Use
### 1️⃣ Install Dependencies
Open R and install the required packages:
```r
install.packages(c("quantmod", "ggplot2", "TTR", "forecast"))
```

### 2️⃣ Run the Script
```r
source("stock_analysis.R")
```
### 3️⃣ Analyze the Results
- View stock trends through plotted candlestick charts
- Examine the forecasted price movements


📌 Future Improvements
✅ Implement LSTM neural networks for more advanced forecasting
✅ Add comparative analysis with multiple stock indices
✅ Integrate real-time stock price updates

## 📚 References  
- Data sourced from [Yahoo Finance](https://finance.yahoo.com/) using the `quantmod` package.
- Article [RPubs](https://www.rpubs.com/AurelliaChristie/time-series-and-stock-analysis)
- ARIMA model concepts referenced from the book *Forecasting: Principles and Practice* by Rob J. Hyndman and George Athanasopoulos.  
- R programming tutorials from [R-bloggers](https://www.r-bloggers.com/). 


🏆 Author
Suhas K S
📧 [suhasswamy6756@gmail.com]
🔗 [www.linkedin.com/in/suhas181]
