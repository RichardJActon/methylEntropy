
<!-- README.md is generated from README.Rmd. Please edit that file -->

# methylEntropy

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/RichardJActon/methylEntropy.svg?branch=master)](https://travis-ci.org/RichardJActon/methylEntropy)
[![Codecov test
coverage](https://codecov.io/gh/RichardJActon/methylEntropy/branch/master/graph/badge.svg)](https://codecov.io/gh/RichardJActon/methylEntropy?branch=master)
<!-- badges: end -->

The goal of methylEntropy is to compute shannon entropy for DNA
methylation faction values (0-1)

Example uses of shannon entropy for DNA methylation in the literature
(Hannum et al. 2013; Martin-Herranz et al. 2019)

Calculation:

<math xmlns:mml="http://www.w3.org/1998/Math/MathML" display="block" id="M1" overflow="scroll"><mrow><mi mathvariant="italic">Entropy</mi><mo>=</mo><mfrac><mn>1</mn><mrow><mi>N</mi><mo>∗</mo><mi>log</mi><mo>(</mo><mfrac><mn>1</mn><mn>2</mn></mfrac><mo>)</mo></mrow></mfrac><munder><mo>∑</mo><mi>i</mi></munder><mo>\[</mo><mi mathvariant="italic">MFi</mi><mo>∗</mo><mi>log</mi><mo>(</mo><mi mathvariant="italic">MFi</mi><mo>)</mo><mo>+</mo><mo>(</mo><mn>1</mn><mo>−</mo><mi mathvariant="italic">MFi</mi><mo>)</mo><mo>∗</mo><mi>log</mi><mo>(</mo><mn>1</mn><mo>−</mo><mi mathvariant="italic">MFi</mi><mo>)</mo><mo>\]</mo></mrow></math>

where MFi is the methylation fraction of the ith methylation marker and
N is the number of markers.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("RichardJActon/methylEntropy")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(methylEntropy)

meth <- rbeta(10,1,1)

methylEntropy(meth)
#> [1] 0.8119606
```

# References

<div id="refs" class="references">

<div id="ref-Hannum2013">

Hannum, Gregory, Justin Guinney, Ling Zhao, Li Zhang, Guy Hughes,
SriniVas Sadda, Brandy Klotzle, et al. 2013. “Genome-wide methylation
profiles reveal quantitative views of human aging rates.” *Molecular
Cell* 49 (2): 359–67. <https://doi.org/10.1016/j.molcel.2012.10.016>.

</div>

<div id="ref-Martin-Herranz2019">

Martin-Herranz, Daniel E., Erfan Aref-Eshghi, Marc Jan Bonder, Thomas M.
Stubbs, Sanaa Choufani, Rosanna Weksberg, Oliver Stegle, Bekim
Sadikovic, Wolf Reik, and Janet M. Thornton. 2019. “Screening for genes
that accelerate the epigenetic aging clock in humans reveals a role for
the H3K36 methyltransferase NSD1.” *Genome Biology* 20 (1): 146.
<https://doi.org/10.1186/s13059-019-1753-9>.

</div>

</div>
