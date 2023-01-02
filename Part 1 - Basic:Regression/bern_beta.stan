data {
  int<lower=0> N;              // number of observations
  int<lower=0,upper=1> y[N];   // vector of binary observations
}
parameters {
  real<lower=0,upper=1> theta; // probability of success
}
model {
  theta ~ beta(1, 1);          // prior 
  for (i in 1:N) {
      y[i] ~ bernoulli(theta); // observation model 
  }
}
