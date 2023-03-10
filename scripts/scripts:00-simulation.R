#### Preamble ####
# Purpose: Get data on Toronto Language Services data during the 2021 year and make a table
# Author: Emily Kim
# Email: emilyuna.kim@mail.utoronto.ca
# Date: 28 January 2023
# Pre-req: None

#### Workspace set-up ####
install.packages("opendatatoronto")
install.packages("tidyverse")

library(opendatatoronto)
library(janitor)
library(lubridate)
library(tidyverse)

#### Simulate ####
set.seed(853)
simulated_languageduration_data <-
  tibble(
    date = rep(x = as.Date("2014-01-01") + c(0:364), times = 3),
    language = c(
      rep(x = "Language 1", times = 365),
      rep(x = "Language 2", times = 365),
      rep(x = "Language 3", times = 365)
    ),
    call_duration =
      rpois(
        n = 365*3,
        lambda = 15
      )
  )
head(simulated_languageduration_data)
