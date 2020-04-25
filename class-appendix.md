#### Mixture models:
* "Finite Mixtures", Stan Manual, [link](https://mc-stan.org/docs/2_23/stan-users-guide/mixture-modeling-chapter.html)
* "Identifying Bayesian Mixture Models", Michael Betancourt, [link](https://mc-stan.org/users/documentation/case-studies/identifying_mixture_models.html)

#### Multivariate normal distributions:
* "Multivariate priors for hierarchical regressions", Stan Manual, [link](https://mc-stan.org/docs/2_23/stan-users-guide/multivariate-hierarchical-priors-section.html)
* "Gaussian processes", Stan manual, [link](https://mc-stan.org/docs/2_23/stan-users-guide/gaussian-processes-chapter.html)

#### Comparison of sampling algorithms:
* Figure 7 in "The No-U-Turn Sampler: Adaptively Setting Path Lengths in Hamiltonian Monte Carlo", Matt Hoffman, [link](http://jmlr.org/papers/volume15/hoffman14a/hoffman14a.pdf)
* Table 2 in "Faster estimation of Bayesian models in ecology using Hamiltonian Monte Carlo", Cole C. Monnahan et al., [link](https://besjournals.onlinelibrary.wiley.com/doi/epdf/10.1111/2041-210X.12681)
* Gibbs vs. Stan for IRT modeling, "Fitting Bayesian item response models in Stata
and Stan", [link](http://www.stat.columbia.edu/~gelman/research/published/stan_v_stata_IRT.pdf)

#### Probabilistic meaning of Stan syntax:
* What does `y ~ normal(mu, sigma);` mean?, "Sampling Statements", Stan Manual, [link](https://mc-stan.org/docs/2_23/reference-manual/sampling-statements-section.html)
* How do constraints work `real<lower = 0.0> sigma;`?, "Constraint Transforms", Stan Manual, [link](https://mc-stan.org/docs/2_23/reference-manual/variable-transforms-chapter.html)

#### MRP:
* "MRP in RStanarm", Lauren Kennedy, [link](https://github.com/lauken13/rstanarm/blob/master/vignettes/mrp.Rmd)

#### Convergence Diagnostics, Rhat and Effective Sample Size (ESS):
* These largely replace traceplots and autocorrelation plots)
* "New R-hat and ESS", Aki Vehtari, [link](https://discourse.mc-stan.org/t/new-r-hat-and-ess/8165)
* "Rank-normalization, folding, and localization: An improved Rˆ for assessing convergence of MCMC", Aki Vehtari et al., [link](https://arxiv.org/abs/1903.08008)
* "Rank-normalization, folding, and localization: An improved Rˆ for assessing convergence of MCMC (online appendix)", Aki Vehtari et al., [link](https://avehtari.github.io/rhat_ess/rhat_ess.html)

#### Hamiltonian Monte Carlo:
* "MCMC using Hamiltonian dynamics", Radford Neal, [link](https://arxiv.org/abs/1206.1901)
* "A Conceptual Introduction to Hamiltonian Monte Carlo", Michael Betancourt, [link](https://arxiv.org/abs/1701.02434)
* "Faster estimation of Bayesian models in ecology using Hamiltonian Monte Carlo", Cole C. Monnahan et al., [link](https://besjournals.onlinelibrary.wiley.com/doi/epdf/10.1111/2041-210X.12681)
* Monte Carlo algorithm animations, Chi Feng, [link](https://chi-feng.github.io/mcmc-demo/app.html)

#### Reparameterizations:
* "Diagnosing Biased Inference with Divergences", Michael Betancourt, [link](https://mc-stan.org/users/documentation/case-studies/divergences_and_bias.html)
* "QR Reparameterization", Stan Manual, [link](https://mc-stan.org/docs/2_23/stan-users-guide/QR-reparameterization-section.html)
* "Fitting The Cauchy Distribution", Michael Betancourt, [link](https://betanalpha.github.io/assets/case_studies/fitting_the_cauchy.html)
* "Reparameterization", Stan Manual, [link](https://mc-stan.org/docs/2_23/stan-users-guide/reparameterization-section.html)
* "Hamiltonian Monte Carlo for Hierarchical Models", Michael Betancourt et al., [link](https://arxiv.org/abs/1312.0906)

#### Books
* "Bayesian Data Analysis 3rd", Andrew Gelman et al., [book](http://www.stat.columbia.edu/~gelman/book/BDA3.pdf), [webpage](http://www.stat.columbia.edu/~gelman/book/)
* "Statistical Rethinking", Richard McElreath, [webpage](https://xcelab.net/rm/statistical-rethinking/) [youtube](https://www.youtube.com/watch?v=4WVelCswXo4&list=PLDcUM9US4XdNM4Edgs7weiyIguLSToZRI)

#### Bayesian Workflow
* "Visualization in Bayesian workflow", Jonah Gabry et al., [paper](https://arxiv.org/abs/1709.01449) [code](https://github.com/jgabry/bayes-vis-paper)
* "The prior can generally only be understood in the context of the likelihood", Andrew Gelman et al., [link](https://arxiv.org/abs/1708.07487)

#### SEM Modeling in Stan
* "Adapting Structural Equation Modeling Fit indices into Bayesian SEM, Psychological Methods", Mauricio Garnier-Villarreal et al., [discourse](https://discourse.mc-stan.org/t/new-paper-adapting-structural-equation-modeling-fit-indices-into-bayesian-sem-psychological-methods/10262) [paper](https://www.ncbi.nlm.nih.gov/pubmed/31180693)

#### BRMS Example

#### Spatial modeling
* "Bayesian hierarchical spatial models: Implementing the Besag York Mollié model in stan", Mitzi Morris et al., [link](https://www.sciencedirect.com/science/article/pii/S1877584518301175)
* Multiple Output Gaussian Processes, Rob Trangucci, [link](https://github.com/rtrangucci/multi_output_gps)

Correlated slopes and intercepts
