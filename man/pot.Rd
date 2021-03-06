% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pot.R
\name{pot}
\alias{pot}
\title{Piece of Text (formated text)}
\usage{
pot(value = "", format = textProperties(), hyperlink, footnote)
}
\arguments{
\item{value}{text value or a value that has a \code{format} method returning character value.}

\item{format}{formatting properties (an object of class \code{textProperties}).}

\item{hyperlink}{a valid url to use as hyperlink when clicking on \code{value}.}

\item{footnote}{a \code{\link{Footnote}} object.}
}
\description{
Create an object with a text to display and its formatting properties.
}
\details{
a pot (piece of text) is a convenient way to define a paragraph
of text where some text are not all formated the same.

A pot can be associated with an hyperlink.

A pot can be associated with a Footnote. Note that footnotes can not be inserted in
a \code{pptx} object.
}
\examples{
#

# "My tailor is rich" with formatting on some words
pot1 = pot("My tailor", textProperties(color = "red" ) 
  ) + " is " + pot("rich", textProperties(shading.color = "red", 
  font.weight = "bold" ) )

# "Cats and dogs" with formatting on some words
pot2 = pot("Cats", textProperties(color = "red" ) ) + 
  " and " + 
  pot("dogs", textProperties( color = "blue" ), 
    hyperlink = "http://www.wikipedia.org/" )
}
\seealso{
\code{\link{addParagraph}}, \code{\link{Footnote}}
, \code{\link{+.pot}}
}

