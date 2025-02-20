% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_fit.R
\name{plot_fit}
\alias{plot_fit}
\title{Model fit comparisons}
\usage{
plot_fit(
  model_result,
  model_result_y = NULL,
  x,
  y,
  x_label = NULL,
  y_label = NULL,
  metrics = "AIC"
)
}
\arguments{
\item{model_result}{List of data frames output by kimma::kmFit(). Must contain both x and y models if model_result_y not provided.}

\item{model_result_y}{List of data frame output by kimma::kmFit()}

\item{x}{Character string of model to plot on x-axis. Must match object names in model_result. For example, "lm", "lme", "lmerel"}

\item{y}{Character string of model to plot on y-axis. Must match object names in model_result. For example, "lm", "lme", "lmerel"}

\item{x_label}{Character string to use for x-axis label. If NULL, the model type and variables are used}

\item{y_label}{Character string to use for y-axis label. If NULL, the model type and variables are used}

\item{metrics}{Character vector of metric to plot. For example, "sigma", "AIC", "BIC", "Rsq", "adj_Rsq". Default is "AIC"}
}
\value{
ggplot object
}
\description{
Model fit comparisons
}
\examples{
plot_fit(example_model, example_model, x="lme", y="lmerel", metrics=c("sigma","AIC","Rsq"))
}
