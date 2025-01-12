% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_enrich.R
\name{plot_enrich}
\alias{plot_enrich}
\title{Plot k/K for hypergeo enrichment}
\usage{
plot_enrich(
  enrich,
  fdr.cutoff = 0.2,
  fdr.colors = c(0.01, 0.05, 0.1, 0.2),
  show.overlap = TRUE
)
}
\arguments{
\item{enrich}{Data frame output by SEARchways::BIGprofiler or SEARchways::BIGenrichr}

\item{fdr.cutoff}{Numeric. Maximum FDR to plot. Default is 0.2}

\item{fdr.colors}{Numeric vector. Cutoffs for color groups. Default is c(0.01, 0.05, 0.1, 0.2)}

\item{show.overlap}{Logical if should show overlap across all facets even if some missing (TRUE) or give each facet it's own axis labels (FALSE). Default is TRUE}
}
\value{
ggplot2 object
}
\description{
Plot k/K for hypergeo enrichment
}
\examples{
library(SEARchways)
library(dplyr)
#Run enrichment
gene_list <- list(HRV1 = names(example_gene_list[[1]]),
                  HRV2 = names(example_gene_list[[2]]))
enrich <- BIGprofiler(gene_list, ID="ENSEMBL", category="H")

#Plot
plot_enrich(enrich, fdr.cutoff = 0.5, fdr.colors = c(0.05, 0.5))
}
