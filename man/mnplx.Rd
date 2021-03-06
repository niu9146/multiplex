\name{mnplx}
\alias{mnplx}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Make a multiple network as monoplex structure
}
\description{
A function to transform multiple networks into a monoplex structure
}
\usage{
mnplx(net, directed = TRUE, dichot = TRUE, diag.incl = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{net}{
   a three-dimensional array to be transformed into a matrix
}
  \item{directed}{
   (optional) whether to make the matrix symmetric or not
}
  \item{dichot}{
   (optional) should the output be dichotomized?
}
  \item{diag.incl}{
   (optional) should the diagonals be included?
}
}
\details{
With this function it is possible to collapse multiple types of tie into a matrix representation with monoplex relations.
}
\value{
A matrix of monoplex relations
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Antonio Rivero Ostoic
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{zbind}}, \code{\link{dichot}}, \code{\link{reduc}}
}
\examples{
## Create the data: 2 binary relations among 3 elements
arr <- round( replace( array(runif(18), c(3,3,2)), array(runif(18),
       c(3,3,2))>.5, 1 ) )

## Make it monoplex
mnplx(arr)

}
\keyword{ manip }
\keyword{ array }
