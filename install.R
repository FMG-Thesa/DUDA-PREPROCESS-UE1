# Installer les bibliothèques R avec des versions spécifiques
install_packages <- function(packages) {
  for (package_name in names(packages)) {
    package_version <- packages[[package_name]]
    package_full <- paste0(package_name, "_", package_version)
    package_url <- paste0("https://cran.r-project.org/src/contrib/Archive/", package_name, "/", package_full, ".tar.gz")
    
    if (!requireNamespace(package_name, quietly = TRUE)) {
      install.packages(package_url, repos = NULL, type = "source")
    }
  }
}

# Liste des bibliothèques à installer avec des versions spécifiques
packages_to_install <- c(
  "ggplot2" = "3.3.5",
  "dplyr" = "1.0.7",
  "visdat" = "0.5.3",
  "stringr" = "1.4.0",
  "skimr" = "2.1.3",
  "UpSetR" = "1.4.0",
  "lubridate" = "1.7.10",
  "naniar" = "0.6.1",
  "tidyr" = "1.1.3",
  "poppr" = "2.9.3",
  "xtable" = "1.8-4",
  "tidyverse" = "1.3.1",
  "veritis" = "0.1.0" # This was in the original code
)

# Installer les bibliothèques avec des versions spécifiques
install_packages(packages_to_install)
