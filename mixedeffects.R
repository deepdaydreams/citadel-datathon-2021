library(lme4)
library(lmerTest)
data = read.csv("mixeddata.csv")
data



m<-lmer('airbnb_ct ~ latitude + median_income + median_rent + metro_nashville + mean_income + metro_austin + (1+median_rent|zipcode)', data=data)
print(summary(m))
