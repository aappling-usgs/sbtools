% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/item_append_files.R
\name{item_append_files}
\alias{item_append_files}
\title{Upload File to Item}
\usage{
item_append_files(sb_id, files, ..., session = current_session())
}
\arguments{
\item{sb_id}{An \code{\link{sbitem}} object or a character ScienceBase ID corresponding to the item}

\item{files}{A file path to upload.}

\item{...}{Additional parameters are passed on to \code{\link[httr]{GET}}, \code{\link[httr]{POST}},
\code{\link[httr]{HEAD}}, \code{\link[httr]{PUT}}, or \code{\link[httr]{DELETE}}}

\item{session}{Session object from \code{\link{authenticate_sb}}. Defaults to anonymous or 
last authenticated session}
}
\value{
An object of class \code{sbitem}
}
\description{
Adds a file to an item
}
\examples{
\dontrun{
res <- item_create(user_id(), "testing 123")
cat("foo bar", file = "foobar.txt")
item_append_files(res$id, "foobar.txt")
}
}

