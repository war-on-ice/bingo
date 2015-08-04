## team server
## acthomas, 8-21-14

library(shiny)
#load("season1314.RData")

source("global.R")
#sess <- sessionInfo()
#writeLines(paste(sess), con="sessioninfo.txt")

termvector <- c(
  "Charles\nBarkley",
  "Hot Hand",
  "Momentum",
  "Lamppost",
  "Next\nFrontier",
  
  "Big Data",
  "#underpants",
  "Communication",
  "Excel",
  "Spreadsheet",
  
  "Narrative",
  "Dataviz",
  "Nate Silver\nSaid",
  "Van Gundy",
  "Leverage",
  
  "Arbitrage",
  "PDO",
  "Injury\nPrevention",
  "Dynamic",
  "At The End\nOf The Day",
  
  "Revenue\nEnhancement",
  "30,000\nFeet",
  "Face Time",
  "Monetary",
  "Through The\nClutter",
  
  "Streamlined",
  "Value-Added",
  "Paradigm\nShift",
  "Dork Elvis",
  "Push The\nEnvelope",
  
  "The Stat Drug",
  "Wearables",
  "Green Pants",
  "On The\nSame Page",
  "Bill James Said",
  
  "Human Element",
  "<namedropping>",
  "Nate Silver\nF-Bomb"
  )
    

  
  ##rep ("Bingo", 50)

shinyServer(function(input, output, session) {
  
  output$bingocard = renderPlot ({
    card <- sample (termvector, 24)
    
    coordinates <- expand.grid(x=1:5, y=1:5)
  
    plot (c(0.5, 5.5), c(0.5, 6.5), ty="n", xlab="", ylab="", axes=FALSE)
    abline(h=seq(0.5, 5.5), lwd=3)
    abline(v=seq(0.5, 5.5), lwd=3)
    text (1:5, rep(6,5), c("B","I","N","G","O"), cex=10)
    text (coordinates, c(card[1:12], "No Free\nLunch", card[13:24]), cex=c(rep(1.5,12), 2.5, rep(1.5,12)))
    
  
  })
    
  
})
