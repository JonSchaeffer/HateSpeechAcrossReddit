##### Load libraries



library(tidyverse)
library(ggplot2)
library(grid)
library(gtable)
library(gridExtra)




##### Import data



##### CHOOSE FILE "dataSheet.csv" FOR ACCURATE DATA
dataReddit <- read.table(file.choose(), header = TRUE, sep = ",")

##### CHOOSE FILE "yearData.csv" FOR ACCURATE DATA
dataRedditYear <- read.table(file.choose(), header = TRUE, sep = ",")




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



##### Total hate speech % per year
dataRedditYear %>% ggplot(aes(x = year, y = HateSpeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90))



##### Hate speech % per month by year with election years and midterms marked
##### 2006-11 Mid, 2008-11 Pres, 2010-11 Mid, 2012-11 Pres, 2014-11 Mid, 2016-11 Pres
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")



##### Hate speech % with iPhone introduction marked
##### 2007-06
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 19, color = "green")



##### Hate speech % with Al Gore wins Nobel Peace Prize for climate change work marked
##### 2007-10
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 23, color = "green")



##### Hate speech % with Iraq troop withdraw start and end marked
##### 2007-12 start, 2011-12 end
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 25, color = "green") + geom_vline(xintercept = 73, color = "green")



##### Hate speech % with stock market crash marked
##### 2008-09
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 34, color = "green")



##### Offensive language % with US unemployment at 10% marked
##### 2009-10
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 47, color = "green")



##### Hate speech % with Deepwater Hozizon oil spill marked
##### 2010-04
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 53, color = "green")



##### Hate speech % with Gasland anti-fracking documentary release marked
##### 2010-09
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 58, color = "green")



##### Hate speech % with start of Syrian civil war marked
##### 2011-03
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 64, color = "green")



##### Hate speech % with Osama bin Laden killing marked
##### 2011-05
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 66, color = "green")



##### Hate speech % with US weed legislation and legalization marked
##### 2012-11 legislation, 2014-01 legalization
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 84, color = "green") + geom_vline(xintercept = 98, color = "green")



##### Hate speech % with Sandy Hook shooting marked
##### 2012-12
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 85, color = "green")



##### Hate speech % with Boston Marathon bombing marked
##### 2013-04
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 89, color = "green")



##### Hate speech % with ISIS offensive start marked
##### 2014-04
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 101, color = "green")



##### Hate speech % with Charleston chruch shooting marked
##### 2015-06
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 115, color = "green")



##### Hate speech % with US same sex marriage ruling marked
##### 2015-06
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 115, color = "green")



##### Hate speech % with Paris terrorist attacks marked
##### 2015-11
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 120, color = "green")



##### Hate speech % with Brexit marked
##### 2016-06
# dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 127, color = "green")



##### Hate speech for each month per year

##### Create plots for each year by month
p2006H <- dataReddit2006 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2007H <- dataReddit2007 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2008H <- dataReddit2008 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2009H <- dataReddit2009 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2010H <- dataReddit2010 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2011H <- dataReddit2011 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2012H <- dataReddit2012 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2013H <- dataReddit2013 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2014H <- dataReddit2014 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2015H <- dataReddit2015 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2016H <- dataReddit2016 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)
p2017H <- dataReddit2017 %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 0.4)

##### Plot each year by month on one page
grid.arrange(p2006H, p2007H, p2008H, p2009H, p2010H, p2011H, p2012H, p2013H, p2014H, p2015H, p2016H, p2017H, nrow = 2)



##### Offensive language % per month by year with election years and midterms marked
##### 2006-11 Mid, 2008-11 Pres, 2010-11 Mid, 2012-11 Pres, 2014-11 Mid, 2016-11 Pres
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")



##### Offensive language % with iPhone introduction marked
##### 2007-06
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 19, color = "green")



##### Offensive language % with Al Gore wins Nobel Peace Prize for climate change work marked
##### 2007-10
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 23, color = "green")



##### Offensive language % with Iraq troop withdraw start and end marked
##### 2007-12 start, 2011-12 end
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 25, color = "green") + geom_vline(xintercept = 73, color = "green")



##### Offensive language % with stock market crash marked
##### 2008-09
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 34, color = "green")



##### Offensive language % with US unemployment at 10% marked
##### 2009-10
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 47, color = "green")



##### Offensive language % with Deepwater Hozizon oil spill marked
##### 2010-04
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 53, color = "green")



##### Offensive language % with Gasland anti-fracking documentary release marked
##### 2010-09
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 58, color = "green")



##### Offensive language % with start of Syrian civil war marked
##### 2011-03
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 64, color = "green")



##### Offensive language % with Osama bin Laden killing marked
##### 2011-05
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 66, color = "green")



##### Offensize language % with US weed legislation and legalization marked
##### 2012-11 legislation, 2014-01 legalization
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 84, color = "green") + geom_vline(xintercept = 98, color = "green")



##### Offensive language % with Sandy Hook shooting marked
##### 2012-12
dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 85, color = "green")



##### Offensive language % with Boston Marathon bombing marked
##### 2013-04
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 89, color = "green")



##### Offensive language % with ISIS offensive start marked
##### 2014-04
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 101, color = "green")



##### Offensive language % with Charleston chruch shooting marked
##### 2015-06
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 115, color = "green")



##### Offensive language % with US same sex marriage ruling marked
##### 2015-06
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 115, color = "green")



##### Offensive language % with Paris terrorist attacks marked
##### 2015-11
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 120, color = "green")



##### Offensive language % with Brexit marked
##### 2016-06
# dataReddit %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 127, color = "green")



##### Offensive language for each month per year

##### Create plots for each year by month
p2006O <- dataReddit2006 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2007O <- dataReddit2007 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2008O <- dataReddit2008 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2009O <- dataReddit2009 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2010O <- dataReddit2010 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2011O <- dataReddit2011 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2012O <- dataReddit2012 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2013O <- dataReddit2013 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2014O <- dataReddit2014 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2015O <- dataReddit2015 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2016O <- dataReddit2016 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)
p2017O <- dataReddit2017 %>% ggplot(aes(x = year, y = offensiveLanguage.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + ylim(0.0, 15.0)

##### Plot each year by month on one page
grid.arrange(p2006O, p2007O, p2008O, p2009O, p2010O, p2011O, p2012O, p2013O, p2014O, p2015O, p2016O, p2017O, nrow = 2)


