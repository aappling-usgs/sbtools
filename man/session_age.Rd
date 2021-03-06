% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/session_age.R
\name{session_age}
\alias{session_age}
\title{a convienence function for getting the age of a session.}
\usage{
session_age(session = current_session())
}
\arguments{
\item{session}{Session object from \code{\link{authenticate_sb}}. Defaults to anonymous or 
last authenticated session}

\item{sb_id}{An \code{\link{sbitem}} object or a character ScienceBase ID corresponding to the item}

\item{...}{Additional parameters are passed on to \code{\link[httr]{GET}}, \code{\link[httr]{POST}},
\code{\link[httr]{HEAD}}, \code{\link[httr]{PUT}}, or \code{\link[httr]{DELETE}}}
}
\value{
difftime object
}
\description{
See pkg.env$session_birthdate for time when session was created.
See pkg.env$session_expires for session age when session goes stale
}
\examples{
\dontrun{
authenticate_sb('bbadger@usgs.gov')
sbtools::session_age()
}
}
\keyword{internal}

