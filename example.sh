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

MCRroot=/ifshk1/BC_CANCER/03user/lixiangchun/Software/INSTALL/MCR_R2013a/INSTALL/v81
DES_PATH=/ifshk1/BC_CANCER/03user/lixiangchun/iCGA/v0.02/decipherExpressionSignatures
bash $DES_PATH/run_decipherExpressionSignatures.sh $MCRroot $rowNameFile $colNameFile $inputFile $kstart $kend $nloop $algorithm $transposeInputMatrix $verbose $maxiter



