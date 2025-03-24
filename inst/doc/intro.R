## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(capybara)

## -----------------------------------------------------------------------------
fit <- fepoisson(
  trade ~ log_dist + cntg + lang + clny + rta | exp_year + imp_year,
  data = trade_panel
)

summary(fit)

## -----------------------------------------------------------------------------
fit <- fepoisson(
  trade ~ log_dist + cntg + lang + clny + rta | exp_year + imp_year | pair,
  data = trade_panel
)

summary(fit, type = "clustered")

