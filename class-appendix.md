### Missing data
 * Relationship to MRP (TODO: Jonah delete if you don't have material to put here, Rob didn't know what to put here) 
 * [Relationship to causal inference](https://mc-stan.org/users/documentation/case-studies/model-based_causal_inference_for_RCT.html)
 * [Missing data that you just integrate out](https://mc-stan.org/docs/2_23/stan-users-guide/missing-data-and-partially-known-parameters.html)
 * [More examples of integrating out parameters](https://jrnold.github.io/bugs-examples-in-stan/multivarmissing.html)
 * Some reference on imputation? Imputation is kindof a hack as I understand it though (TODO: Jonah delete if you can't find anything, Rob didn't have a link)
 
### Other Stan tutorials
* Good first case study: [Hierarchical partial pooling for repeated binary trials](https://mc-stan.org/users/documentation/case-studies/pool-binary-trials.html)
* [Past Stancon tutorials](https://github.com/stan-dev/stancon_talks)
* The [golf example](https://mc-stan.org/users/documentation/case-studies/golf.html) Andrew presented

### Multiarmed bandits in Stan
* Case study: [A Bayesian Approach to Sequential A/B Testing: Multi-Armed Contextual Bandits in Stan" by Bob Carpenter](https://htmlpreview.github.io/?https://github.com/stan-dev/example-models/blob/master/knitr/bandits/stan-bandits.html) (code)[https://github.com/stan-dev/example-models/tree/master/knitr/bandits)

### Folk theorem
* Andrew's blog post: [The folk theorem of statistical computing](https://statmodeling.stat.columbia.edu/2008/05/13/the_folk_theore/)
* Folk theorem - something people know is true but can’t explain it

### Details on vectors, matrices and arrays in Stan
* [manual chapter](https://mc-stan.org/docs/2_22/stan-users-guide/matrices-vectors-and-arrays.html)

### Zero-inflated Poisson models in Stan
* [manual chapter](https://mc-stan.org/docs/2_23/stan-users-guide/zero-inflated-section.html)

### PCA in Stan
* [Paper](https://arxiv.org/abs/1710.09443)
* [code](https://github.com/pourzanj/TfRotationPca/tree/master/Stan)

### Truncated distributions in Stan
* Explicit support for univariate truncated distributions, [manual chapter](https://mc-stan.org/docs/2_23/stan-users-guide/truncated-data-section.html)
* Truncated multivariate normal, [Stan forum post, link to paper+code](https://discourse.mc-stan.org/t/how-to-truncate-a-multivariate-normal-distribution-sidebar-how-to-access-old-stan-mailing-lists-posts/9280/2)

### Multilevel regression and poststratification (MRP) in Stan
* [Lauren Kennedy's case study](https://github.com/lauken13/rstanarm/blob/master/vignettes/mrp.Rmd)
* Deep interactions in MRP [Ghitza, Gelman paper](http://www.stat.columbia.edu/~gelman/research/published/misterp.pdf)
* Structured priors for MRP: [Gao, Kennedy, Simpson, Gelman paper](https://arxiv.org/pdf/1908.06716.pdf)

### Single-machine parallel computation in Stan
* [Ben Bales case study](https://mc-stan.org/users/documentation/case-studies/reduce_sum_tutorial.html)

### Minimal inferfaces to Stan
* [cmdstanr](https://mc-stan.org/cmdstanr/)
* [cmdstanpy](https://github.com/stan-dev/cmdstanpy)

### Conditions for reproducibility in Stan (seeds and whatnot)
* [manual chapter](https://mc-stan.org/docs/2_23/reference-manual/reproducibility-chapter.html)

### Automated model comparison/model checking:
* Approximate leave-one-out cross validation in Stan: [loo package vignette](https://mc-stan.org/loo/articles/loo2-example.html)
* Aki’s model selection webpage: [https://avehtari.github.io/modelselection/](https://avehtari.github.io/modelselection/)
* Aki’s Cross Validation FAQ [https://avehtari.github.io/modelselection/CV-FAQ.html](https://avehtari.github.io/modelselection/CV-FAQ.html)

### Causal inference in Stan: 
* [Lee, Feller, Rabe-Hesketh case study](https://mc-stan.org/users/documentation/case-studies/model-based_causal_inference_for_RCT.html)

### Model averaging with Stan
* Stacking is the new model averaging: 
  * [paper](https://projecteuclid.org/euclid.ba/1516093227)
  * [loo package vignette](https://cran.r-project.org/web/packages/loo/vignettes/loo2-weights.html)
  
### Outlier detection and modeling

### Difference between non-random group effects that share the same prior and random intercept model 
* A little more detail on how mu’s are related (they’re now positively correlated in the prior, as are now data from the same group)

### Metropolis algorithm: 
* page 279 of [BDA3](https://statisticalsupportandresearch.files.wordpress.com/2017/11/bayesian_data_analysis.pdf)

### Why data subsampling won't work with HMC
* [Betancourt paper](https://arxiv.org/pdf/1502.01510.pdf)

### Variational Inference
* The variational inference algorithm in Stan is still in development. There are various papers and commentaries on it
  *Yes But Did It Work? Evaluating Variational Inference: https://arxiv.org/pdf/1802.02538.pdf
  * Jonathan Huggins’s work on Variational Bayes:
    * [Gelman Blog entry](https://statmodeling.stat.columbia.edu/2019/10/11/dans-paper-corner-yes-it-does-work/)
    * [AISTATS paper](https://arxiv.org/abs/1910.04102)
  * Recent discussion: [forum post]( https://discourse.mc-stan.org/t/what-are-the-differences-between-nuts-and-advi/14499)
  
### Multiplication/addition in Stan for different types
* [matrix/vector multiplication vs. elementwise multiplication]( https://mc-stan.org/docs/2_23/reference-manual/arithmetic-expressions-section.html)

#### Regression Interfaces for Stan 
* Rstanarm: [webpage](https://mc-stan.org/rstanarm/), [vignettes](https://mc-stan.org/rstanarm/articles/) 
* brms: [webpage](https://paul-buerkner.github.io/brms/), [vignettes](https://paul-buerkner.github.io/brms/articles/index.html)

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
