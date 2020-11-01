data {
  int<lower=0> N;  // number of observations
  real y[N];   // vector of continuous observations
}
parameters {
  real mu; // mean parameter
}
model {
  mu ~ normal(5, 1);  // prior 
  for (i in 1:N) {
      y[i] ~ normal(mu, sqrt(1 / 1.25)); // observation model 
  }
}
