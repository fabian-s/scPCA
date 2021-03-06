% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coerceMatrix.R
\name{coerceMatrix}
\alias{coerceMatrix}
\title{Coerce Matrix Objects to Base Matrix Objects}
\usage{
coerceMatrix(data)
}
\arguments{
\item{data}{The data, usually expected to be a \code{data.frame} or
\code{matrix}, to be coerced to a \code{matrix} object if formatted as
\code{dgCMatrix} or \code{dgeMatrix}.}
}
\value{
A coerced matrix object.
}
\description{
Coerces an object from classes in the \code{Matrix} package to
 the base \code{matrix} class.
}
\keyword{internal}
