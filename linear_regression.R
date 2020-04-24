library(rstan)

pest_data <- readRDS('data/pest_data.RDS')

standata_simple <- list(
  N = nrow(pest_data), 
  complaints = pest_data$complaints,
  traps = pest_data$traps
)

model = stan_model("your_model.stan")

# Write a model in 'your_model.stan'. Use the Rstudio stan template in
#  File -> New File -> Stan File
#
# Write the likelihood corresponding to:
#  complaints ~ N(slope * traps + intercept, sigma)
#
# Make up a prior (if you want one)!
#
# Remember you'll need:
#  1. A data block for your input
#  2. A parameters block to define the things you want to estimate
#  3. A model block to define your likelihood and prior

sampling(model, data = standata_simple)
