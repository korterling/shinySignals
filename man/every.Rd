% Generated by roxygen2 (4.0.2): do not edit by hand
\name{every}
\alias{every}
\title{The current time.}
\usage{
every(seconds)
}
\arguments{
\item{seconds}{Number of seconds to wait between signals.}
}
\value{
A reactive \code{\link{POSIXct}}.
}
\description{
The current time.
}
\examples{
\donttest{
shinyApp(
  ui = fluidPage(textOutput("tick")),
  server = function(input, output) {
    tick <- every(1)
    output$tick <- renderText(as.character(tick()))
  }
)
}
}

