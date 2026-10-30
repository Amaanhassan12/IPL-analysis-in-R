# Run once to install everything the project needs
pkgs <- c("tidyverse", "lubridate", "readxl", "scales", "broom",
          "knitr", "rmarkdown", "randomForest")
to_install <- setdiff(pkgs, rownames(installed.packages()))
if (length(to_install)) install.packages(to_install)
