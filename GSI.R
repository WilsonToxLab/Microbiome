setwd("~/Desktop/fishgutdata/")
path ="~/Desktop/fishgutdata/"
getwd()
read.csv("LSI_GSI.csv")
LSI_GSI <- read.csv("LSI_GSI.csv")

#GSI STATS
anova_GSI <- aov(GSI~Treatment, dat=LSI_GSI)
summary(anova_GSI)
tukey_GSI <- TukeyHSD(anova_GSI, ordered=FALSE, conf.level=0.95)
tukey_GSI


tukey_GSI$Treatment[,"p adj"] #this will get you those really small p values

#GSI PLOT
LSI_GSI$Treatment <- factor(LSI_GSI$Treatment, 
                               levels=c("Field", "Acclimation", "control", "10%", "20%", "40%", "TCS"), 
                               labels=c("Field", "Acclimation", "CTRL", "10%", "20%", "40%", "TCS"))
GSI_box<-boxplot(GSI ~ Treatment, data=LSI_GSI, las=2)
GSI_box


ggplot(data=LSI_GSI, aes(x=Treatment, y=GSI)) + 
  geom_boxplot(stat="boxplot") + 
  theme(strip.text = element_text(size = 18, color="black")) + 
  theme(axis.text.x=element_text(angle=45, hjust=1, size=18, color="black"), 
        axis.text=element_text(size=18, color="black"), axis.title=element_text(size=18)) + ylim(c(0,15))

#Plot body weight vs gonad weight
colnames(LSI_GSI)
names(LSI_GSI)[names(LSI_GSI) == "Total.Weight..g."] <- "Total_Weight"
names(LSI_GSI)[names(LSI_GSI) == "Gonad.Weight..g."] <- "Gonad_Weight"
colnames(LSI_GSI)


lm <- lm(data=LSI_GSI, Gonad_Weight~Total_Weight)

plot(LSI_GSI$Total_Weight, LSI_GSI$Gonad_Weight, 
     "p", xlab="Body Weight (g)", ylab=("Gonad Weight (g)"))
abline(lm)

library(ggplot2)

LSI_GSI
ggplot(data=LSI_GSI, aes(x=Total_Weight, y=Gonad_Weight)) + 
  geom_point(aes(color=Treatment)) + 
  geom_smooth(method="lm", se=FALSE) 


ggplot(subset(LSI_GSI, Location %in% c("Exposure")), aes(x=Total_Weight, y=Gonad_Weight, color=Treatment)) + 
  geom_point(aes(shape=Treatment, color=Treatment)) + 
  geom_smooth(method="lm", se=FALSE) 
  
  
ggplot(subset(LSI_GSI, Location %in% c("Exposure")), aes(x=Total_Weight, y=Gonad_Weight)) + 
    geom_point(aes(shape=Treatment, color=Treatment)) + 
    scale_y_continuous(trans='log10') +
    geom_smooth(method="lm", se=FALSE) 
  

