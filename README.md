# simpson_rule
Investigating Simpson's rule to computationally approximate definite integrals. 

I created a function that solved a basic definite integral; this is seen in MySimpson.m. Then, I wanted to proceed with some testing. 
 
The first test was to approximate the integral 4/(1+x^2) between the bounds of 0 and 1; this integral converges to pi. I wanted to find how many interations it would take to get the error under 10^(-6). This investigation is included in the file: error_bounds.mlx. 

The second test was to approximate a more complex integral. I have included a screenshot of this integral to this repository as integral.png. I created another function that approximated the aforementioned definite integral to a precision of 10^(-5) with N=6 iterations; this function is included in the file: SolveInt.m. Thereafter, I created a summary table of results as the value of x and a changed; this is included in the file: SolveInt_summary.mlx.
