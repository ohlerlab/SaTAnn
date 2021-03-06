% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/satann.R
\name{plot_SaTAnn_results}
\alias{plot_SaTAnn_results}
\title{Plot general statistics about SaTAnn results}
\usage{
plot_SaTAnn_results(for_SaTAnn_file, SaTAnn_output_file, annotation_file,
  coverage_file_plus = NA, coverage_file_minus = NA,
  output_plots_path = NA, prefix = NA)
}
\arguments{
\item{for_SaTAnn_file}{path to the "for_SaTAnn" file containing P_sites positions and junction reads}

\item{SaTAnn_output_file}{Full path to the "_final_SaTAnn_results" RData object output by SaTAnn. See \code{run_SaTAnn}}

\item{annotation_file}{Full path to the *Rannot R file in the annotation directory used in the \code{prepare_annotation_files function}}

\item{coverage_file_plus}{Full path to a Ribo-seq coverage (no P-sites but read coverage) bigwig file (plus strand), as the ones created by \code{RiboseQC}}

\item{coverage_file_minus}{Full path to a Ribo-seq coverage (no P-sites but read coverage) bigwig file (minus strand), as the ones created by \code{RiboseQC}}

\item{output_plots_path}{Full path to the directory where plots in .pdf format are stored.}

\item{prefix}{prefix appended to output filenames}
}
\value{
the function exports a RData object (*SaTAnn_plots_RData) containing data to produce all plots, and produces different QC plots in .pdf format.
The plots created are as follows:\cr\cr
\code{ORFs_found}: Number of ORF categories detected per gene biotype.\cr
\code{ORFs_found_pct_tr}: Distribution of ORF_pct_P_sites (% of gene translation) for different ORF categories and gene biotypes.\cr
\code{ORFs_found_P_sites_pNpM}: Distribution of ORF_P_sites_pNpM (P-sites per nucleotide per Million, similar to TPM) for different ORF categories and gene biotypes.\cr
\code{ORFs_found_len}: Distribution of ORF length for different ORF categories and gene biotypes.\cr
\code{ORFs_genes}: Number of detected ORFs per gene.\cr
\code{ORFs_genes_tpm}: Gene level TPM values, plotted by number of ORFs detected.\cr
\code{ORFs_maxiso}:  Number of genes plotted against the percentages of gene translation of their most translated ORF.\cr
\code{ORFs_maxiso_tpm}: Gene level TPM values, plotted against the percentages of gene translation of their most translated ORF.\cr
\code{Sel_txs_genes}: Number of genes plotted against the number of selected transcripts.\cr
\code{Sel_txs_genes_tpm}: Gene level TPM values, plotted against the number of selected transcripts.\cr
\code{Sel_txs_genes_pct}: Percentages of annotated trascripts per gene, plotted against the number of selected transcripts.\cr
\code{Sel_txs_bins_juns}: Percentages of covered exonic bins or junctions, using all annotated transcripts, coding transcripts only, or the set of selected transcripts.\cr
\code{Meta_splicing_coverage}: Aggregate signal of Ribo-seq coverage and normalized ORF coverage across different splice sites combinations, with different mixtures of translated overlapping ORFs.
}
\description{
This function produces a series of plots and statistics about the set ORFs called by SaTAnn compared to the annotation.
IMPORTANT: Use only on transcriptome-wide SaTAnn results. See \code{run_SaTAnn}
}
\seealso{
\code{\link{run_SaTAnn}}
}
\author{
Lorenzo Calviello, \email{calviello.l.bio@gmail.com}
}
\keyword{Ribo-seQC}
\keyword{SaTAnn,}
