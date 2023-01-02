data {
  int<lower=0> N;  // number of observations
  real y[N];   // vector of continuous observations
}
parameters {
  real mu; // mean parameter
  real<lower=0> sigma; // sd parameter
}
model {
  mu ~ normal(5, 1);  // prior for mu
  sigma ~ cauchy(0, 1); // prior for sigma
  for (i in 1:N) {
      y[i] ~ normal(mu, sigma); // observation model 
  }
}
