% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wait.R
\name{wait_until}
\alias{wait_until}
\title{Wait until a condition is met}
\usage{
wait_until(
  expr,
  envir = parent.frame(),
  timeout = Inf,
  interval = 0.1,
  later_run_now = TRUE
)
}
\arguments{
\item{expr}{an expression to check, supports quasiquotation.}

\item{envir}{the environment in which the expression is to be evaluated.}

\item{timeout}{raise an error if this amount of time in second has passed.}

\item{interval}{delay between retries.}

\item{later_run_now}{execute \code{later::run_now()} periodically \code{later} is loaded?}
}
\description{
Block the current runtime until the expression returns \code{TRUE}.
}
\examples{

s <- Sys.time()
system.time(wait_until(Sys.time() - s > 1))

z <- 0
later::later(function() z <<- 1, 1)
wait_until(z == 1)
z == 1

}
