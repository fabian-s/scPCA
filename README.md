
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R/`scPCA`

[![Travis-CI Build
Status](https://travis-ci.org/PhilBoileau/scPCA.svg?branch=master)](https://travis-ci.org/PhilBoileau/scPCA)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/PhilBoileau/scPCA?branch=master&svg=true)](https://ci.appveyor.com/project/PhilBoileau/scPCA/)
[![Codecov test
coverage](https://codecov.io/gh/PhilBoileau/scPCA/branch/master/graph/badge.svg)](https://codecov.io/gh/PhilBoileau/scPCA?branch=master)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![BioC
status](http://www.bioconductor.org/shields/build/release/bioc/scPCA.svg)](https://bioconductor.org/checkResults/release/bioc-LATEST/scPCA)
[![Bioc
Time](http://bioconductor.org/shields/years-in-bioc/scPCA.svg)](https://bioconductor.org/packages/release/bioc/html/scPCA.html)
[![MIT
license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Sparse Contrastive Principal Component Analysis for Computational
> Biology

**Authors:** [Philippe Boileau](https://pboileau.ca/), [Nima
Hejazi](https://nimahejazi.org), [Sandrine
Dudoit](https://statistics.berkeley.edu/~sandrine/)

-----

## What’s `scPCA`?

The exploration and analysis of modern high-dimensional biological data
regularly involves the use of dimension reduction techniques in order to
tease out meaningful and interpretable information from complex
experimental data, often subject to batch effects and other technical
noise. In tandem with the development of sequencing technology (e.g.,
RNA-seq, scRNA-seq), many variants of PCA have been developed in
attempts to remedy deficiencies in interpretability and stability that
plague their classical variants. Such developments have included both
sparse PCA (SPCA) (Zou, Hastie, and Tibshirani 2006; Erichson et al.
2018), which increases the stability and interpretability of principal
component loadings in high dimensions, and, more recently, contrastive
PCA (cPCA) (Abid et al. 2018), which captures relevant information in
the target (experimental) data set by eliminating technical noise
through comparison to a so-called background data set. While SPCA and
cPCA have both individually proven useful in resolving distinct
shortcomings of PCA, neither is capable of simultaneously tackling the
issues of interpretability, stability and relevance simultaneously. The
`scPCA` package implements *sparse constrastive PCA*, to accomplish both
of these tasks in the context of high-dimensional biological data. In
addition to implementing this newly developed technique, the `scPCA`
package also implements cPCA and generalizations thereof.

-----

## Installation

For standard use, install from
[Bioconductor](https://bioconductor.org/packages/scPCA) using
[`BiocManager`](https://CRAN.R-project.org/package=BiocManager):

``` r
if (!requireNamespace("BiocManager", quietly=TRUE)) {
  install.packages("BiocManager")
}
BiocManager::install("scPCA")
```

To contribute, install the bleeding-edge *development version* from
GitHub via [`remotes`](https://CRAN.R-project.org/package=remotes):

``` r
remotes::install_github("PhilBoileau/scPCA")
```

Current and prior [Bioconductor](https://bioconductor.org) releases are
available under branches with numbers prefixed by “RELEASE\_”. For
example, to install the version of this package available via
Bioconductor 3.10, use

``` r
remotes::install_github("PhilBoileau/scPCA@RELEASE_3_10")
```

-----

## Example

For details on how to best use the `scPCA` R package, please consult the
most recent [package
vignette](https://bioconductor.org/packages/release/bioc/vignettes/scPCA/inst/doc/scpca_intro.html)
available through the [Bioconductor
project](https://bioconductor.org/packages/scPCA).

-----

## Issues

If you encounter any bugs or have any specific feature requests, please
[file an issue](https://github.com/PhilBoileau/scPCA/issues).

-----

## Contributions

Contributions are very welcome. Interested contributors should consult
our [contribution
guidelines](https://github.com/PhilBoileau/scPCA/blob/master/CONTRIBUTING.md)
prior to submitting a pull request.

-----

## License

© 2019-2020 [Philippe Boileau](https://pboileau.ca/)

The contents of this repository are distributed under the MIT license.
See file `LICENSE` for details.

-----

## References

<div id="refs" class="references">

<div id="ref-abid2018exploring">

Abid, Abubakar, Martin J Zhang, Vivek K Bagaria, and James Zou. 2018.
“Exploring Patterns Enriched in a Dataset with Contrastive Principal
Component Analysis.” *Nature Communications* 9 (1): 2134.

</div>

<div id="ref-erichson2018sparse">

Erichson, N. Benjamin, Peng Zeng, Krithika Manohar, Steven L. Brunton,
J. Nathan Kutz, and Aleksandr Y. Aravkin. 2018. “Sparse Principal
Component Analysis via Variable Projection.” *ArXiv* abs/1804.00341.

</div>

<div id="ref-zou2006sparse">

Zou, Hui, Trevor Hastie, and Robert Tibshirani. 2006. “Sparse Principal
Component Analysis.” *Journal of Computational and Graphical Statistics*
15 (2). Taylor & Francis: 265–86.

</div>

</div>
