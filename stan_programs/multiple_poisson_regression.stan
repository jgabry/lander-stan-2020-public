functions {  
  // Alternative to poisson_log_rng() that avoids potential numerical problems during warmup
  int poisson_log_safe_rng(real eta) {
    real eta2 = (eta < 20.79) ? eta : 20.79;
    return poisson_log_rng(eta2);
  }
}
data {
  int<lower=1> N;
  int<lower=0> complaints[N];
  vector<lower=0>[N] traps;
  
  // add two new vectors (live_in_super and log_sq_foot)
}
parameters {
  real alpha;
  real beta;
  
  // declare coefficient on live_in_super (beta_super)
}
transformed parameters {
  // create variable eta for the linear predictor

}
model {
  complaints ~ poisson_log(eta);
  
  // priors
  alpha ~ normal(log(7), 1);
  beta ~ normal(-0.25, 0.5);
  // give beta_super a normal distribution with mean=-0.5 and sd=1 
}
generated quantities {
  int y_rep[N];
  for (n in 1:N) {
    y_rep[n] = poisson_log_safe_rng(eta[n]);
  }
}
