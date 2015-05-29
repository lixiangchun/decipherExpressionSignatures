# decipherExpressionSignatures
Deciphering gene expression signature for high throughput data

This program can be used to perform gene expression signature analysis based on nonnegative matrix factorization (NMF).
For more information on application of NMF, please refer to the following publications:

1. Brunet J, Tamayo P, Golub TR, et al: Metagenes and molecular pattern discovery using matrix factorization. Proc Natl Acad Sci U S A 101:4164–9, 2004
2. Tamayo P, Scanfeld D, Ebert BL, et al: Metagene projection for cross-platform, cross-species characterization of global transcriptional states. Pnas 104:5959–5964, 2007
3. Kim H, Park H: Sparse non-negative matrix factorizations via alternating non-negativity-constrained least squares for microarray data analysis. Bioinformatics 23:1495–1502, 2007
4. Carmona-Saez P, Pascual-Marqui RD, Tirado F, et al: Biclustering of gene expression data by Non-smooth Non-negative Matrix Factorization. BMC Bioinformatics 7:78, 2006


Check 'example.sh' to see how to run this program in detail. When finished running 'example.sh', an output directory, termed 'output',
can be found, in which all of result files are placed.


#######################example.sh########################
#!/bin/bash

# The row and column names of input file, each must be unique.
rowNameFile='../decipherMutationalSignatures/rowNames'
colNameFile='../decipherMutationalSignatures/sampleNames'

# Input file, e.g. genes by samples matrix
inputFile='../decipherMutationalSignatures/originalGenomes'

kstart=2    # the start rank of NMF
kend=5      # the end rank of NMF
nloop=100   # Number of iterations to run NMF for each rank

algorithm=gdclsNMF        # algorithm to used, i.e. brunet, sNMFR, gdclsNMF, mult, als
transposeInputMatrix=0    # 1 - transpose, 0 - do not transpose
verbose=1
maxiter=10000

# Change these accordingly.
MCRroot=/ifshk1/BC_CANCER/03user/lixiangchun/Software/INSTALL/MCR_R2013a/INSTALL/v81
DES_PATH=/ifshk1/BC_CANCER/03user/lixiangchun/iCGA/v0.02/decipherExpressionSignatures
bash $DES_PATH/run_decipherExpressionSignatures.sh $MCRroot $rowNameFile $colNameFile $inputFile $kstart $kend $nloop $algorithm $transposeInputMatrix $verbose $maxiter



