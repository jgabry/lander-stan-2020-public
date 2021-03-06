// Negative binomial regression with varying intercepts and varying slopes
// Non-centered parameterization (NCP)

functions {
  /*
  * Alternative to neg_binomial_2_log_rng() that 
  * avoids potential numerical problems during warmup
  */
  int neg_binomial_2_log_safe_rng(real eta, real phi) {
    real gamma_rate = gamma_rng(phi, phi / exp(eta));
    if (gamma_rate >= exp(20.79)) gamma_rate = exp(20.7);
    return poisson_rng(gamma_rate);
  }
}
data {
  int<lower=1> N;                     
  int<lower=0> complaints[N];              
  vector<lower=0>[N] traps;          
  
  // 'exposure'
  vector[N] log_sq_foot;  
  
  // building-level data
  int<lower=1> J; // Number of buildings
  int<lower=1> K; // Number of building-level predictor variables
  int<lower=1, upper=J> building_idx[N];
  matrix[J,K] building_data;
}
parameters {
  real<lower=0> inv_phi;     // 1/phi (easier to think about prior for 1/phi instead of phi)
  
  // for varying intercepts
  vector[J] mu_raw;        // N(0,1) params for non-centered param of building-specific intercepts
  real<lower=0> sigma_mu;  // sd of buildings-specific intercepts
  real alpha;              // 'global' intercept
  vector[K] zeta;          // coefficients on building-level predictors in model for mu
  
  // for varying slopes
  vector[J] kappa_raw;       // N(0,1) params for non-centered param of building-specific slopes
  real<lower=0> sigma_kappa; // sd of buildings-specific slopes
  real beta;                 // 'global' slope on traps variable
  vector[K] gamma;           // coefficients on building-level predictors in model for kappa
}
transformed parameters {
  real phi = inv(inv_phi);
  
  // non-centered parameterization of building-specific intercepts and slopes
  vector[J] mu = (alpha + building_data * zeta) + sigma_mu * mu_raw;
  vector[J] kappa = (beta + building_data * gamma) + sigma_kappa * kappa_raw;
  vector[N] eta = mu[building_idx] + kappa[building_idx] .* traps  + log_sq_foot;
}
model {
  complaints ~ neg_binomial_2_log(eta, phi);
  
  /* it doesn't matter if the likelihood appears before or after the priors
     because under the hood it's just adding to the total log probability (target), 
     which can be done in any order (addition is commutative) */

  inv_phi ~ normal(0, 1);
  
  kappa_raw ~ normal(0,1);
  sigma_kappa ~ normal(0, 1);
  beta ~ normal(-0.25, 0.5);
  gamma ~ normal(0, 1);
  
  mu_raw ~ normal(0,1) ;
  sigma_mu ~ normal(0, 1);
  alpha ~ normal(log(7), 1);
  zeta ~ normal(0, 1);
} 
generated quantities {
  int y_rep[N];
  for (n in 1:N) {
    y_rep[n] = neg_binomial_2_log_safe_rng(eta[n], phi);
  }
}
