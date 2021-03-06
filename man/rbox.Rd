\name{rbox}
\alias{rbox}
\title{
Construct the Relation-Box
}
\description{
Function to construct the Relation-Box of a multiple network
}
\usage{
rbox(w, transp = FALSE, smpl = FALSE, k = 3, tlbs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{w}{
   an array with three dimensions of stacked matrices of generating relations.
}
  \item{transp}{
   (logical) whether or not the transpose of each matrix in \eqn{w} should be included.
}
  \item{smpl}{
   (logical) whether to simplify or not the strings of relations
}
  \item{k}{
   length of the Relation-Box in \eqn{z}
}
  \item{tlbs}{
   (optional) a vector with the labels for the transpose relations.
}
}
\details{
If \code{transp = TRUE} the labels of the transpose are toggle case of the labels of the original matrices, and in such case it is adviced to simplify the strings of relations. In order to prevent a transposed structure for a certain array of \code{w}, use \code{NA} in the vector the transpose labels \code{tlbs} corresponding to the respective matrix.
}
\value{
An object of the `\code{Rel.Box}' class.
%%  If it is a LIST, use
  \item{W}{the structure of the Relation-Box}
  \item{lbs}{the labels in the relational system}
  \item{Note}{(optional) Notes indicating the particularities in the input}
  \item{Orels}{the original labels of the relations}
  \item{Srels}{(optional) the simplified labels of the relations}
  \item{Trels}{(optional) the labels of the transposed relations}
  \item{k}{the maximal length of the word}
  \item{z}{the length of the Relation-Box in the \eqn{z} dimension}
%% ...
}
\references{
Winship, C. and M.J. Mandel `Roles and positions: A critique and extension of the blockmodelling approach,' \emph{Sociological Methodology}, 314-344. 1983.
}
\author{
Antonio Rivero Ostoic
}
\note{
Values of \code{k} until 9 is supported. With many types of relations, and when the order of the multiple network is high, turning \code{k} to more than three may take a long time of computation.
}
%\Warning{}

\seealso{
 \code{\link{cph}}, \code{\link{semigroup}}, \code{\link{hierar}}
}
\examples{
## Create the data: 2 binary relations among 3 elements
arr <- round( replace( array(runif(18), c(3,3,2)), array(runif(18),
       c(3,3,2))>.5, 1 ) )

## The relation box
rbox(arr, k=1)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ algebra }
%\keyword{ math }
\keyword{ array }
