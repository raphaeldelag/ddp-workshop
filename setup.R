# setup.R — installs and verifies the packages this workshop needs.
#
# Safe to run as many times as you like. It installs only what's missing,
# then checks that every package actually loads — so a half-finished
# install can't slip through and break a lesson later.

# Pin a CRAN mirror so R never stops to ask which one to use.
options(repos = c(CRAN = "https://cloud.r-project.org"))

# The convenience meta-packages we install.
to_install <- c("tidyverse", "readxl", "janitor", "scales", "here")

# The packages the lessons actually load. tidyverse is a bundle, so we
# check its members individually — that's where partial installs hide.
to_verify <- c(
  "dplyr", "ggplot2", "readr", "tibble", "tidyr",
  "lubridate", "forcats", "stringr",
  "readxl", "janitor", "scales", "here"
)

# Install only the meta-packages that aren't already present.
missing <- to_install[!(to_install %in% rownames(installed.packages()))]
if (length(missing) > 0) {
  cat("Installing:", paste(missing, collapse = ", "), "\n\n")
  install.packages(missing)
} else {
  cat("Required packages already installed — checking they load.\n\n")
}

# Verify each package can be loaded. This catches broken or partial installs.
ok <- vapply(to_verify, requireNamespace, logical(1), quietly = TRUE)

cat("Package check:\n")
for (pkg in to_verify) {
  cat(if (ok[[pkg]]) "  [ OK ] " else "  [FAIL] ", pkg, "\n", sep = "")
}

if (all(ok)) {
  cat("\nAll packages installed and loading. You're ready to go.\n")
  cat("Open ddp-workshop.Rproj in RStudio before running any lesson files.\n")
} else {
  failed <- to_verify[!ok]
  cat("\nThese packages did NOT load correctly:", paste(failed, collapse = ", "), "\n")
  cat("Re-run the install for just those, then run source(\"setup.R\") again:\n")
  cat('  install.packages(c("', paste(failed, collapse = '", "'), '"))\n', sep = "")
  cat("If they still fail, raise your hand.\n")
}
