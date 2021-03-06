% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gf_function_helpers.R, R/gf_functions.R
\name{gf_point}
\alias{gf_abline}
\alias{gf_bar}
\alias{gf_boxplot}
\alias{gf_counts}
\alias{gf_density}
\alias{gf_density_2d}
\alias{gf_frame}
\alias{gf_freqpoly}
\alias{gf_hex}
\alias{gf_histogram}
\alias{gf_hline}
\alias{gf_jitter}
\alias{gf_line}
\alias{gf_path}
\alias{gf_point}
\alias{gf_text}
\title{gf_ plotting functions}
\usage{
gf_point(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_jitter(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_line(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_path(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_density(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_density_2d(placeholder = NULL, formula = NULL, data = NULL,
  geom = type, verbose = FALSE, add = FALSE, ...)

gf_hex(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_hline(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_abline(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_hex(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_boxplot(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_freqpoly(placeholder = NULL, formula = NULL, data = NULL,
  geom = type, verbose = FALSE, add = FALSE, ...)

gf_histogram(placeholder = NULL, formula = NULL, data = NULL,
  geom = type, verbose = FALSE, add = FALSE, ...)

gf_text(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_counts(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_bar(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)

gf_frame(placeholder = NULL, formula = NULL, data = NULL, geom = type,
  verbose = FALSE, add = FALSE, ...)
}
\arguments{
\item{placeholder}{Ignore this argument. See details.}

\item{formula}{A formula describing the x and y (if any) variables and other aesthetics in
a form like \code{y ~ x + color:red + shape:sex + alpha:0.5}}

\item{data}{A data frame with the variables to be plotted}

\item{geom}{A way to specify ggplot geoms that are not aliased to gf functions.}

\item{verbose}{If \code{TRUE} print the ggplot2 command in the console.}

\item{add}{If \code{TRUE} then construct just the layer with no frame.  The result
can be added to an existing frame.}

\item{...}{Other arguments such as \code{position="dodge"},}
}
\description{
These functions provide a formula interface to \code{ggplot2} and 
various geoms. For plots with just one layer, the formula interface
is more compact and is consistent with modeling and mosaic notation.
The functions generate a \code{ggplot} command string which can be displayed by
setting \code{verbose = TRUE} as an argument.
}
\details{
These \code{gf_} functions are written to interact with ggplot objects. The \code{placeholder} 
argument is part of this interaction system; the end user can ignore it.
}
\examples{
gf_point(mpg ~ hp + color:cyl + size:wt, data = mtcars)
gf_line(mpg ~ hp + group:cyl, data = mtcars) + facet_grid(~ am)
gf_histogram(~ Sepal.Length + fill:Species, data = iris)
gf_text(Sepal.Length ~ Sepal.Width + label:Species + color:Species , data = iris)
}

