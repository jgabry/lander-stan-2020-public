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
  vector<lower=0,upper=1>[N] live_in_super;
  vector[N] log_sq_foot;
}
parameters {
  real alpha;
  real beta;
  real beta_super;
}
transformed parameters {
  // create variable eta for the linear predictor
  vector[N] eta = alpha + beta * traps + beta_super * live_in_super + log_sq_foot;
}
model {
  complaints ~ poisson_log(eta);
  
  // priors
  alpha ~ normal(log(7), 1);
  beta ~ normal(-0.25, 0.5);
  beta_super ~ normal(-0.5, 1);
}
generated quantities {
  int y_rep[N];
  for (n in 1:N) {
    y_rep[n] = poisson_log_safe_rng(eta[n]);
  }
}
