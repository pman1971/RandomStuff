# Posterior predictive check for a regression model uses simulated data under the fitted 
# model to check for any discrepancies from observed data.
# 
# The {pp_check} function from {performance} Package carries out and visualizes this 
# check Left-pointing magnifying glass

browseURL('https://twitter.com/rfunctionaday/status/1428191429512376325')
browseURL('https://easystats.github.io/performance/reference/pp_check.html')

library(performance)
library(lme4)

# define a model
model= lmer(Reaction ~ Days + (Days | Subject), sleepstudy)

# run a posterior predictive check
pp_check(model, iterations= 100, check_range= TRUE)
