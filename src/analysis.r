##### Load libraries



library(tidyverse)
library(ggplot2)
library(grid)
library(gtable)
library(gridExtra)




##### Import data



##### CHOOSE FILE "dataSheet.csv" FOR ACCURATE DATA
dataReddit <- read.table(file.choose(), header = TRUE, sep = ",")




##### Plots



##### Hate speech % per month by year with election years and midterms marked
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")


##### Hate speech for each month per year

##### Filter data by year
dataReddit2005 <- filter(dataReddit, year == "2005-01")
dataReddit2006 <- filter(dataReddit, year == "2006-01" | year == "2006-02" | year == "2006-03" | year == "2006-04" | year == "2006-05" | year == "2006-06" | year == "2006-07" | year == "2006-08" | year == "2006-09" | year == "2006-10" | year == "2006-11" | year == "2006-12")
dataReddit2007 <- filter(dataReddit, year == "2007-01" | year == "2007-02" | year == "2007-03" | year == "2007-04" | year == "2007-05" | year == "2007-06" | year == "2007-07" | year == "2007-08" | year == "2007-09" | year == "2007-10" | year == "2007-11" | year == "2007-12")
dataReddit2008 <- filter(dataReddit, year == "2008-01" | year == "2008-02" | year == "2008-03" | year == "2008-04" | year == "2008-05" | year == "2008-06" | year == "2008-07" | year == "2008-08" | year == "2008-09" | year == "2008-10" | year == "2008-11" | year == "2008-12")
dataReddit2009 <- filter(dataReddit, year == "2009-01" | year == "2009-02" | year == "2009-03" | year == "2009-04" | year == "2009-05" | year == "2009-06" | year == "2009-07" | year == "2009-08" | year == "2009-09" | year == "2009-10" | year == "2009-11" | year == "2009-12")
dataReddit2010 <- filter(dataReddit, year == "2010-01" | year == "2010-02" | year == "2010-03" | year == "2010-04" | year == "2010-05" | year == "2010-06" | year == "2010-07" | year == "2010-08" | year == "2010-09" | year == "2010-10" | year == "2010-11" | year == "2010-12")
dataReddit2011 <- filter(dataReddit, year == "2011-01" | year == "2011-02" | year == "2011-03" | year == "2011-04" | year == "2011-05" | year == "2011-06" | year == "2011-07" | year == "2011-08" | year == "2011-09" | year == "2011-10" | year == "2011-11" | year == "2011-12")
dataReddit2012 <- filter(dataReddit, year == "2012-01" | year == "2012-02" | year == "2012-03" | year == "2012-04" | year == "2012-05" | year == "2012-06" | year == "2012-07" | year == "2012-08" | year == "2012-09" | year == "2012-10" | year == "2012-11" | year == "2012-12")
dataReddit2013 <- filter(dataReddit, year == "2013-01" | year == "2013-02" | year == "2013-03" | year == "2013-04" | year == "2013-05" | year == "2013-06" | year == "2013-07" | year == "2013-08" | year == "2013-09" | year == "2013-10" | year == "2013-11" | year == "2013-12")
dataReddit2014 <- filter(dataReddit, year == "2014-01" | year == "2014-02" | year == "2014-03" | year == "2014-04" | year == "2014-05" | year == "2014-06" | year == "2014-07" | year == "2014-08" | year == "2014-09" | year == "2014-10" | year == "2014-11" | year == "2014-12")
dataReddit2015 <- filter(dataReddit, year == "2015-01" | year == "2015-02" | year == "2015-03" | year == "2015-04" | year == "2015-05" | year == "2015-06" | year == "2015-07" | year == "2015-08" | year == "2015-09" | year == "2015-10" | year == "2015-11" | year == "2015-12")
dataReddit2016 <- filter(dataReddit, year == "2016-01" | year == "2016-02" | year == "2016-03" | year == "2016-04" | year == "2016-05" | year == "2016-06" | year == "2016-07" | year == "2016-08" | year == "2016-09" | year == "2016-10" | year == "2016-11" | year == "2016-12")
dataReddit2017 <- filter(dataReddit, year == "2017-01" | year == "2017-02" | year == "2017-03")

##### Create plots for each year by month
p2006 <- dataReddit2006 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2007 <- dataReddit2007 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2008 <- dataReddit2008 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2009 <- dataReddit2009 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2010 <- dataReddit2010 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2011 <- dataReddit2011 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2012 <- dataReddit2012 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2013 <- dataReddit2013 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2014 <- dataReddit2014 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2015 <- dataReddit2015 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2016 <- dataReddit2016 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))
p2017 <- dataReddit2017 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))

##### Plot each year by month on one page
grid.arrange(p2006, p2007, p2008, p2009, p2010, p2011, p2012, p2013, p2014, p2015, p2016, p2017, nrow = 2)
