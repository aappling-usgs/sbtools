% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/item_file_download.R
\name{item_file_download}
\alias{item_file_download}
\title{Download files attached to item}
\usage{
item_file_download(sb_id, ..., names, destinations, dest_dir,
  session = current_session(), overwrite_file = FALSE)
}
\arguments{
\item{sb_id}{An \code{\link{sbitem}} object or a character ScienceBase ID corresponding to the item}

\item{...}{Additional parameters are passed on to \code{\link[httr]{GET}}, \code{\link[httr]{POST}},
\code{\link[httr]{HEAD}}, \code{\link[httr]{PUT}}, or \code{\link[httr]{DELETE}}}

\item{names}{String vector list of file names attached to item that you wish
to download.}

\item{destinations}{String vector list of destinations for requested files.
Must be same length as \code{names}}

\item{dest_dir}{A directory path for saving files when \code{names} parameter
is omitted}

\item{session}{Session object from \code{\link{authenticate_sb}}. Defaults to anonymous or 
last authenticated session}

\item{overwrite_file}{Boolean indicating if file should be overwritten if it
already exists locally}
}
\value{
Character vector of full paths to local files
}
\description{
Function to downlod files attached to an item on SB. Either files can be
specified directly using the \code{names} and \code{destinations} parameters,
or a \code{dest_dir} can be supplied where all attached files will be written
with the names as stored on SB.
}
\examples{
\dontrun{

#downloads two files attached to this item
item_file_download('548b2b31e4b03f64633662a4', dest_dir=tempdir())

#downloads a specific file attached to this item
item_file_download('548b2b31e4b03f64633662a4', names='gdp.txt',
		destinations=file.path(tempdir(), 'fname.txt'))
}
}
\author{
Luke Winslow
}

