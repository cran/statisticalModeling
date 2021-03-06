% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gmodel.R
\name{gmodel}
\alias{gmodel}
\title{Graph the function implicit in a model}
\usage{
gmodel(model = NULL, formula = NULL, data = NULL, nlevels = 3,
  at = list(), prob_of = NULL, intervals = c("none", "confidence",
  "prediction"), post_transform = NULL, ...)
}
\arguments{
\item{model}{the model to display graphically}

\item{formula}{setting the y ~ x + color variables}

\item{data}{optional data set from which to extract levels for explanatory variables}

\item{nlevels}{how many levels to display for those variables shown at discrete levels}

\item{at}{named list giving specific values at which to hold the variables. You can accomplish 
this without forming a list by using \code{...}. See examples.}

\item{prob_of}{if to show probability of a given level of the output, name the class here as a character string.}

\item{intervals}{show confidence or prediction intervals: values "none", "confidence", "prediction"}

\item{post_transform}{a scalar transformation and new name for the response variable, 
e.g. \code{post_transform = c(price = exp)} to undo a log transformation of price.}

\item{...}{specific values for explantory variables and/or arguments to predict()}
}
\description{
Currently, this is the same as \code{fmodel}. I think the
name \code{gmodel} makes more sense, and I want to be able to add
additional functionality (such as including data points on the plot) 
without breaking fmodel.
}
\details{
#' Plot out model values

Often you will want to show some data along with the model functions. 
You can do this with `ggplot2::geom_point()` making sure to set the \code{data} argument
to be a data frame with the cases you want to plot.
}
\examples{
\dontrun{
mod1 <- lm(wage ~ age * sex + sector, data = mosaicData::CPS85)
fmodel(mod1)
fmodel(mod1, ~ sector + sex + age) # not necessarily a good ordering
# show the data used for fitting along with the model
fmodel(mod1, ~ age + sex + sector, nlevels = 8) + 
  ggplot2::geom_point(data = mosaicData::CPS85, alpha = 0.1)
require(ggplot2)
fmodel(mod1, ~ age + sex + sector, nlevels = 8) + 
  geom_point(data = mosaicData::CPS85, alpha = 0.1) +
  ylim(0, 20)
mod2 <- lm(log(wage) ~ age + sex + sector, data = mosaicData::CPS85)
fmodel(mod2, post_transform = c(wage = exp)) # undo the log in the display
mod3 <- glm(married == "Married" ~ age + sex * sector,
            data = mosaicData::CPS85, family = "binomial")
fmodel(mod3, type = "response")
# Adding the raw data requires an as.numeric() trick when it's TRUE/FALSE
fmodel(mod3, ~ age + sex + sector, nlevels = 10, type = "response") + 
  geom_point(data = mosaicData::CPS85, 
  aes(x = age, y = as.numeric(married == "Married")), alpha = .1)
}
}

