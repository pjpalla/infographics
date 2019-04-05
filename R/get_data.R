movimenti = read.csv("data/arrivi_presenze.csv")
head(movementi)
arrivi = movimenti[, c(1,2,4,6)]


yi = arrivi[1, 2:ncol(arrivi) ] 
ys = arrivi[2, 2:ncol(arrivi) ]
arrivi = cbind(yi, ys)

anno = rep(c(2016, 2017, 2018), 2)
provenienza = c(rep("italiani", 3), rep("stranieri", 3))

dataset = data.frame(provenienza, anno,arrivi) 
names(dataset) = c()
