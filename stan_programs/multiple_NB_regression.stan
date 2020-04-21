functions {  
  /*
  * Alternative to neg_binomial_2_log_rng() that 
  * avoids potential numerical problems during warmup
  */
  int neg_binomial_2_log_safe_rng(real eta, real phi) {
    real gamma_rate = gamma_rng(phi, phi / exp(eta));
    if (gamma_rate >= exp(20.79))
      return -9;
    return poisson_rng(gamma_rate);
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
  real<lower=0> inv_phi;
}
transformed parameters {
  real phi = 1 / inv_phi;
}
model {
  vector[N] eta =
    alpha +
    beta * traps +
    beta_super * live_in_super +
    log_sq_foot;

  complaints ~ neg_binomial_2_log(eta, phi);

  alpha ~ normal(log(7), 1);
  beta ~ normal(-0.25, 0.5);
  beta_super ~ normal(-0.5, 1);
  inv_phi ~ normal(0, 1);
}
generated quantities {
  int y_rep[N];
  for (n in 1:N) {
    real eta_n = alpha + beta * traps[n] + beta_super * live_in_super[n] + log_sq_foot[n];
    y_rep[n] = neg_binomial_2_log_safe_rng(eta_n, phi);
  }
}
