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
# Pretend complaints is normally distributed and write a likelihood for it
# assuming a mean of intercept + slope * traps 
# and an SD of sigma.
#
# Make up priors (if you want one)!
#
# Remember you'll need:
#  1. A data block for your input
#  2. A parameters block to define the things you want to estimate
#  3. A model block to define your likelihood and prior
#

# The sampling statement will run the fit and print a summary.
#
# We will give you the output we got from a model with no prior afterwards
#  to check yourself
sampling(model, data = standata_simple)
