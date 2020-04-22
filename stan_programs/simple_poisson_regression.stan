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
  vector<lower=0>[N] traps;  // vector implies stored as real (double)
  
  /*
  vector[2] v[30]; // array of 30 vectors, each of size 2. v[j] is a 2-vector
  matrix[2,2] m[100]; // array of 100 matrices, each 2x2. m[j] is a 2x2 matrix
  */
}
parameters {
  real alpha; 
  real beta;
  // vector[2] alpha_beta; 
}
model {
  // poisson_log(x) is more efficient and stable alternative to poisson(exp(x))
  complaints ~ poisson_log(alpha + beta * traps); 
  // for (n in 1:N) complaints[n] ~ poisson_log(alpha + beta * traps[n]); 
  
  // weakly informative priors:
  // we expect negative slope on traps and a positive intercept,
  // but we will allow ourselves to be wrong
  alpha ~ normal(log(7), 1);  // in R: dnorm(alpha, mean = log(7), sd = 1, log=TRUE)
  beta ~ normal(-0.25, 0.5);
} 
generated quantities {
  int y_rep[N]; 
  for (n in 1:N) {
    y_rep[n] = poisson_log_safe_rng(alpha + beta * traps[n]);
  }
}
