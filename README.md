# Predictors of Victory in the Indian Premier League
### An Exploratory Data Analysis in R

## Project structure
```
ipl-eda/
├── IPL_EDA_Report.Rmd     # full analysis + report (knit to HTML)
├── install_packages.R     # installs required packages
├── R/helpers.R            # team-name cleaning, phase-of-play helpers
└── data/                  # matches, deliveries, home/away, batsmen, players
```

## How to run
1. Open the folder in RStudio (set it as the working directory / open as a project).
2. Run `source("install_packages.R")` once.
3. Open `IPL_EDA_Report.Rmd` and click **Knit** (or `rmarkdown::render("IPL_EDA_Report.Rmd")`).
4. To get a plain R script: `knitr::purl("IPL_EDA_Report.Rmd", "analysis.R")`.

## Research questions
1. Does winning the toss help?
2. Bat first or chase? Season and venue effects.
3. Is there home advantage?
4. Which innings phases/indicators separate winners from losers?
5. Which predictors matter together (logistic regression + random forest)?

## Methods
Data cleaning (tidyverse), descriptive statistics, binomial / proportion / t-tests,
ball-by-ball feature engineering (powerplay, middle, death overs), logistic regression
with odds ratios, train/test evaluation, random forest importance.
