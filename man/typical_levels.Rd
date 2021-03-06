% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typical_levels.R
\name{typical_levels}
\alias{typical_levels}
\title{Find typical levels of explanatory variables in a model/dataset.}
\usage{
typical_levels(model = NULL, data = NULL, nlevels = 3, at = list(), ...)
}
\arguments{
\item{model}{the model to display graphically}

\item{data}{optional data frame from which to extract levels for explanatory variables}

\item{nlevels}{how many levels to construct for input variables.
For quantitative variables, this is a suggestion. \code{pretty()} will determine}

\item{at}{named list giving specific values at which to hold the variables. Use this to 
override the automatic generation of levels for any or all explanatory variables.}

\item{...}{a more concise mechanism to passing desired values for variables}
}
\value{
A dataframe containing all combinations of the selected values for 
the explanatory variables. If there are p explanatory variables, 
there will be about \code{nlevels^p} cases.
}
\description{
This function tries to choose sensible values of the explanatory variables 
from the data used to build a model or any other specified data. 
(or from data specified with the \code{data =} argument.)
}
\details{
For categorical variables, the most populated levels are used. For quantitative 
variables, a sequence of \code{pretty()} values is generated.
}
\examples{
\dontrun{mod1 <- lm(wage ~ age * sex + sector, data = mosaicData::CPS85)
typical_levels(mod1)
mod3 <- glm(married == "Married" ~ age + sex * sector,
            data = mosaicData::CPS85, family = "binomial")
typical_levels(mod3, nlevels = 2)
}
}

