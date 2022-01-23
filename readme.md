Reproducibility example with FLR and renv
================

This is an example document to show how the R package `renv` can be used
to create a reproducible FLR script.

## Start using `renv`

For this example to work, the R package `renv` needs to be installed
first. `renv` is available from CRAN.

``` r
install.packages("renv")
```

## Clone repository

The easiest way to run this example, is to clone this GitHub repository.
This can be done by clicking on the green “Code” button above (see
screenshot), and clone the repository with the address in an environment
of your choice, with GitHub Desktop or by downloading the content as a
zip file.

![git_clone](readme_files/git_clone.png)

## Install FLR packages

Because we are working with FLR packages, these need to be build from
source. This will require tools for compiling these. These tools need to
be installled before we can install the FLR packages. On Windows, this
requires Rtools
<https://cran.r-project.org/bin/windows/Rtools/rtools40.html>.

The `renv` package can create snapshots of all used R packages,
including their dependencies. The record is stored in the
[`renv.lock`](https://github.com/shfischer/FLR_renv_example/blob/main/renv.lock)
file, which includes the exact package version and the source from where
the packages can be installed. The list of packages is quite extensive
because it also includes the packages required to compile the other FLR
packages. `renv` creates a local R package library (e.g. in
renv/library/R-4.1/x86_64-w64-mingw32) where it stores the R packages.

More details about `renv` can be found at
<https://rstudio.github.io/renv/>.

Once the repository has been cloned, we can install (restore) all R
packages defined in
[`renv.lock`](https://github.com/shfischer/FLR_renv_example/blob/main/renv.lock)
with one command and following the interactive installer.

``` r
renv::restore()
```

Activate the project with “y” when asked:

``` r
Would you like to activate this project before restore? [Y/n]:
```

It is also possible to active `renv` manually with:

``` r
renv::activate()
```

## A reproducible example

After the installation, it is possible to run the [example
code](https://github.com/shfischer/FLR_renv_example/blob/main/script_example.Rmd)
