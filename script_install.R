### This script installs the R package used in the examples.
### It is not neccessary to run this script because the packages can be 
### installed with renv

install.packages("devtools")
library(devtools)

install_github("flr/FLCore", INSTALL_opts = "--no-multiarch")
install_github("flr/ggplotFL", INSTALL_opts = "--no-multiarch")
install_github("flr/FLFishery", INSTALL_opts = "--no-multiarch")
install_github("flr/FLasher", INSTALL_opts = "--no-multiarch")
library(FLasher)
