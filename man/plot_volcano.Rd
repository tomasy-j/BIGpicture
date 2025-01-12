% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_volcano.R
\name{plot_volcano}
\alias{plot_volcano}
\title{Volcano plot of differentially expressed genes}
\usage{
plot_volcano(
  model_result,
  model,
  variables = NULL,
  x = "estimate",
  y = "FDR",
  x.cutoff = NULL,
  y.cutoff = NULL,
  label = NULL,
  genes = NULL,
  genes_label = NULL
)
}
\arguments{
\item{model_result}{List of data frames output by kimma::kmFit()}

\item{model}{Character string of model to plot. Must match object names in model_result. For example, "lm", "lme", "lmerel"}

\item{variables}{Character vector of variables in model_result to include. Default is all variables in model}

\item{x}{Character string of variable to plot on x-axis. Default is "estimate"}

\item{y}{Character string of variable to plot on y-axis. Default is "FDR"}

\item{x.cutoff}{Numeric.Optional x cutoff for color and/or labeling}

\item{y.cutoff}{Numeric. Optional y cutoff for color and/or labeling}

\item{label}{Character or numeric. If "all", all significant genes as defined by x.cutoff and y.cutoff are labels with their HGNC symbol. If numeric, that number of most significant genes are labeled.}

\item{genes}{Data frame with gene metadata for labeling points (optional). If not provided, the gene column in the model_result is used}

\item{genes_label}{Character string of variable in genes to label with. Required if provide genes parameter}
}
\value{
ggplot object
}
\description{
Volcano plot of differentially expressed genes
}
\examples{
plot_volcano(example_model, model = "lme")
plot_volcano(example_model, model = "lme", variables = "virus", y = "pval")
plot_volcano(example_model, model = "lme", variables = c("virus","asthma"),
             x.cutoff = 0.5, y.cutoff = 0.05, label = 2)
plot_volcano(example_model, model = "lme", variables = "virus",
             y.cutoff = 0.05, label = 2)
plot_volcano(example_model, model = "lme", variables = "virus",
             x.cutoff = 0.5, label = 2)

plot_volcano(example_model, model = "lme", variables = "virus",
             y.cutoff = 1E-20, label = "all")
plot_volcano(example_model, model = "lme", variables = "virus",
             y.cutoff = 1E-20, label = "all",
             genes = kimma::example.voom$genes, genes_label = "hgnc_symbol")
}
