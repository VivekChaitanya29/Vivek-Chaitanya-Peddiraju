#Market Basketing Analysis

library(arules)
library(arulesViz)
library(datasets)

# Load data Groceries
data(Groceries)
Groceries
str(Groceries)
head(Groceries)
inspect(Groceries[1:5]) #view
LIST(Groceries[4:7])  # Another View

#Lets Apply Apriori Algorithm  
#supp is the fraction that tells in 10000 bills atleast 0.005*10000 a particular item has been purchased

frequentItems <- eclat(Groceries, parameter = list(supp = 0.005, minlen = 1, maxlen = 5))

frequentItems
inspect(frequentItems[1:25])
inspect(sort(frequentItems, by="count", decreasing=TRUE)[1:15])

list(inspect(frequentItems[1:5]))

itemFrequencyPlot(Groceries, topN = 15, type = "absolute")  # topN gives the top data values 
