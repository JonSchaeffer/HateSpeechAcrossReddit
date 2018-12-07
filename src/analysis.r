##### Load libraries



library(tidyverse)
library(ggplot2)
library(grid)
library(gtable)
library(gridExtra)




##### Import data



##### CHOOSE FILE "dataSheet.csv" FOR ACCURATE DATA
dataReddit <- read.table(file.choose(), header = TRUE, sep = ",")




##### Filter data



##### Filter data by year
dataReddit2005 <- filter(dataReddit, year == "2005-12")
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




##### Plots



##### Hate speech % per month by year with election years and midterms marked
##### 11-06 Mid, 11-08 Pres, 11-10 Mid, 11-12 Pres, 11-14 Mid, 11-16 Pres
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")



##### Hate speech % with iPhone introduction marked
##### 06-07
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 6, color = "green")



##### Hate speech % with stock market crash marked
##### 09-08
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 34, color = "green")



##### Hate speech % with Deepwater Hozizon oil spill marked
##### 04-10
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 54, color = "green")



##### Hate speech % with Iraq troop withdraw start and end marked
##### 12-07 start, 12-11 end
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 25, color = "green") + geom_vline(xintercept = 73, color = "green")



##### Hate speech % with Boston Marathon bombing marked
##### 04-13
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Hate speech % with ISIS offensive start marked
##### 04-14
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Hate speech % with Charleston chruch shooting marked
##### 06-15
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Hate speech % with Paris terrorist attacks marked
##### 11-15
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Hate speech % with Brexit marked
##### 06-16
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language for each month per year

##### Create plots for each year by month
p2006H <- dataReddit2006 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2007H <- dataReddit2007 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2008H <- dataReddit2008 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2009H <- dataReddit2009 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2010H <- dataReddit2010 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2011H <- dataReddit2011 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2012H <- dataReddit2012 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2013H <- dataReddit2013 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2014H <- dataReddit2014 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2015H <- dataReddit2015 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2016H <- dataReddit2016 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2017H <- dataReddit2017 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))

##### Plot each year by month on one page
grid.arrange(p2006H, p2007H, p2008H, p2009H, p2010H, p2011H, p2012H, p2013H, p2014H, p2015H, p2016H, p2017H, nrow = 2)



##### Offensive language % per month by year with election years and midterms marked
##### 11-06 Mid, 11-08 Pres, 11-10 Mid, 11-12 Pres, 11-14 Mid, 11-16 Pres
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")



##### Offensive language % with iPhone introduction marked
##### 06-07
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 6, color = "green")



##### Offensive language % with stock market crash marked
##### 09-08
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 34, color = "green")



##### Offensive language % with Deepwater Hozizon oil spill marked
##### 04-10
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 54, color = "green")



##### Offensive language % with Iraq troop withdraw start and end marked
##### 12-07 start, 12-11 end
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = 25, color = "green") + geom_vline(xintercept = 73, color = "green")



##### Offensive language % with Boston Marathon bombing marked
##### 04-13
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language % with ISIS offensive start marked
##### 04-14
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language % with Charleston chruch shooting marked
##### 06-15
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language % with Paris terrorist attacks marked
##### 11-15
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language % with Brexit marked
##### 06-16
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270)) + geom_vline(xintercept = , color = "green")



##### Offensive language for each month per year

##### Create plots for each year by month
p2006O <- dataReddit2006 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2007O <- dataReddit2007 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2008O <- dataReddit2008 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2009O <- dataReddit2009 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2010O <- dataReddit2010 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2011O <- dataReddit2011 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2012O <- dataReddit2012 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2013O <- dataReddit2013 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2014O <- dataReddit2014 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2015O <- dataReddit2015 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2016O <- dataReddit2016 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))
p2017O <- dataReddit2017 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 270))

##### Plot each year by month on one page
grid.arrange(p2006O, p2007O, p2008O, p2009O, p2010O, p2011O, p2012O, p2013O, p2014O, p2015O, p2016O, p2017O, nrow = 2)

