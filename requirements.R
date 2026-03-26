# Ensure BiocManager is present
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", repos = "https://cloud.r-project.org")
}

# The packages we need for our Yeast Genome Browser session
required_pkgs <- setdiff(c("Gviz", "Rsamtools", "GenomicAlignments"),installed.packages()[, "Package"])

installed <- required_pkgs %in% installed.packages()[, "Package"]
if (length(required_pkgs)>0) {
  message("Installing packages")
  BiocManager::install(required_pkgs, 
                       update = TRUE, 
                       ask = FALSE, 
                       checkBuilt = TRUE)
} else {
  message("All packages preinstalled")
}

