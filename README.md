# SaTAnn
an R package to detect and quantify ORF translation using Ribo-seq data

*SaTAnn* is an R package that aims at detecting and quantifiying ORF translation on complex transcriptomes using Ribo-seq data.
This package uses syntax and functions present in Bioconductor packages like *GenomicFeatures*, *rtracklayer* or *BSgenome*. 
*SaTAnn* aims at quantifying translation at the single ORF level taking into account the presence of multiple transcripts expressed by each gene.
To do so, the *SaTAnn* pipeline consists of transcript filtering, *de-novo* ORF finding, ORF quantification and ORF annotation.
A variety of annotation methods, both in transcript and genomic space, is performed for each ORF, to yield a more complete picture of alternative splice sites usage, uORF translation, translation on NMD candidates etc...
More details can be found in our manuscript (*to be added soon...*)

We recommend users to have a look at the vignette: https://htmlpreview.github.io/?https://github.com/lcalviell/SaTann/blob/master/SaTAnn_vignette.html, or our manual (*SaTAnn_manual.pdf*).


To install *SaTAnn*:

```
library("devtools")
install_github(repo = "lcalviell/SaTAnn")

library("SaTAnn")

```

Three steps are required to use *SaTAnn* on your data:
```
?prepare_annotation_files
```
parses a *.gtf* and a *.2bit* file. (this need to be done once per each annotation-genome combination, a .2bit file can be obtained from a fasta file using the *faToTwoBit* software from UCSC: https://genome.ucsc.edu/goldenpath/help/twoBit.html - http://hgdownload.soe.ucsc.edu/admin/exe/ )


```
?prepare_for_SaTAnn
```
or (**recommended**) the *Ribo-seQC* package (https://github.com/lcalviell/Ribo-seQC) can create an input for *SaTAnn* from a Ribo-seq .bam file


and
```
?run_SaTAnn
```

is the master function used to perform the entire analysis workflow, or single genes or (**recommended**) entire transcriptomes.
Please check the vignette for an example workflow.


For any question, please email:

calviello.l.bio@gmail.com or uwe.ohler@mdc-berlin.de


Enjoy!


