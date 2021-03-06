% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hotfix.R
\name{hotfix}
\alias{hotfix}
\title{Hot-fix an existed function}
\usage{
hotfix(fun, from, to)
}
\arguments{
\item{fun}{original function to hot-fix}

\item{from}{character string to replace from}

\item{to}{character string to replace to}
}
\description{
Hot-fix an existed function
}
\examples{
  hello <- function() cat("Hello, world!\\n")
  hello <- hotfix(hello, "world", "magic")
  hello()  # output 'Hello, magic!'

}

