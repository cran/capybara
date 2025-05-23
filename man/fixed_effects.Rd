% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fixed_effects.R
\name{fixed_effects}
\alias{fixed_effects}
\title{Recover the estimates of the fixed effects after fitting (G)LMs}
\usage{
fixed_effects(object = NULL, control = NULL)
}
\arguments{
\item{object}{an object of class \code{"feglm"}.}

\item{control}{a list of control parameters. If \code{NULL}, the default
control parameters are used.}
}
\value{
A named list containing named vectors of estimated fixed effects.
}
\description{
The system might not have a unique solution since we do not take
collinearity into account. If the solution is not unique, an estimable
function has to be applied to our solution to get meaningful estimates of
the fixed effects.
}
\examples{
# check the feglm examples for the details about clustered standard errors
mod <- fepoisson(mpg ~ wt | cyl, mtcars)
fixed_effects(mod)

}
\references{
Stammann, A. (2018). "Fast and Feasible Estimation of Generalized
Linear Models with High-Dimensional k-way Fixed Effects". ArXiv e-prints.

Gaure, S. (n. d.). "Multicollinearity, identification, and
estimable functions". Unpublished.
}
\seealso{
\code{\link{felm}}, \code{\link{feglm}}
}
