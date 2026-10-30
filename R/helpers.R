# Helper functions used by the report -------------------------------------

# Franchises that were renamed / spelled inconsistently in the raw data
standardise_team <- function(x) {
  dplyr::case_when(
    x == "Rising Pune Supergiants" ~ "Rising Pune Supergiant",
    x == "Delhi Daredevils"        ~ "Delhi Capitals",
    TRUE                           ~ x
  )
}

# Nice short names for plots
short_team <- function(x) {
  dplyr::recode(x,
    "Chennai Super Kings"         = "CSK",
    "Deccan Chargers"             = "DC (Deccan)",
    "Delhi Capitals"              = "DC/DD",
    "Gujarat Lions"               = "GL",
    "Kings XI Punjab"             = "KXIP",
    "Kochi Tuskers Kerala"        = "KTK",
    "Kolkata Knight Riders"       = "KKR",
    "Mumbai Indians"              = "MI",
    "Pune Warriors"               = "PWI",
    "Rajasthan Royals"            = "RR",
    "Rising Pune Supergiant"      = "RPS",
    "Royal Challengers Bangalore" = "RCB",
    "Sunrisers Hyderabad"         = "SRH",
    .default = x
  )
}

# Phase of play from the over number (1-20)
over_phase <- function(over) {
  dplyr::case_when(
    over <= 6  ~ "powerplay",
    over <= 15 ~ "middle",
    TRUE       ~ "death"
  )
}
