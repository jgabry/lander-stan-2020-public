functions {  
  // Alternative to poisson_log_rng() that avoids potential numerical problems during warmup
  int poisson_log_safe_rng(real eta) {
    real eta2 = (eta < 20.79) ? eta : 20.79;
    return poisson_log_rng(eta2);
  }
}

data {

}
parameters {

}
model {
  // poisson_log(x) is more efficient and stable alternative to poisson(exp(x))
  
  // weakly informative priors:
  // we expect negative slope on traps and a positive intercept,
  // but we will allow ourselves to be wrong
} 
generated quantities {

}
