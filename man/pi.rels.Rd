\name{pi.rels}
\alias{pi.rels}
\title{
\eqn{\pi}-Relations
}
\description{
A function to establish the \eqn{\pi}-relations of a partially ordered structure comming from a 'Pacnet' class
}
\usage{
pi.rels(x, po, po.incl = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{  an object of a `\code{Pacnet}' class
}
  \item{po}{  a partial order structure
}
  \item{po.incl}{  (logical) should the partial order be included in the outcome?
}
}
\details{
This function process the outcome of the Pacnet report by adding induced inclusions to partial order, the minimal element of the lattice of congruence relations. Such type of structure serves for the decomposition of a partially ordered semigroup structure.
}
\value{
An object of the `\code{Pi.rels}' class

  \item{pi }{the \eqn{\pi}-relations}
  \item{mc }{the meet-complements}
  \item{po }{the partial order}
}
\references{
Pattison, Philippa E. \emph{Algebraic Models for Social Networks}. Cambridge University Press. 1993.
}
\author{
Antonio Rivero Ostoic
}
%\note{
%No hay notas
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{pacnet}}, \code{\link{decomp}}
}
%\examples{
%
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ algebra }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
