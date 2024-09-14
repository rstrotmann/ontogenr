#' Relative enzyme or transporter activity by age
#'
#' @param name The target enzyme or transporter as character.
#' @param age The age as numeric.
#' @param loc The localisation as character. Can be 'hepatic', 'intestinal',
#'   'brain' or 'renal'.
#'
#' @return The relative activity as numeric.
#' @import assertr
#' @export
#'
#' @examples
#' rel_act("CYP3A4", 1)
#' rel_act(c("CYP3A4", "CYP2D6"), 1)
rel_act <- Vectorize(
  function(name, age, loc="hepatic") {
    if(!name %in% unique(ontogeny_param$Name))
      stop(paste0("Target '", name, "' not found in ontogeny data!"))

    temp <- ontogeny_param %>%
      filter(Name == name, Loc == loc) %>%
      assertr::verify(
        nrow(.) == 1,
        error_fun = function(error, data = .) {
          stop("Target/localisation combination not found!")})

    fraction_sig <- function(age) {
      temp$Fbirth + (temp$Fmax - temp$Fbirth) * age^temp$N /
        (temp$Age50^temp$N + age^temp$N)
    }

    fraction_lin <- function(age) {
      temp$C0 + temp$C1 * age
    }

    ifelse(
      age < temp$Agecap,
      fraction_sig(age),
      ifelse(is.na(temp$C0), fraction_sig(temp$Agecap),
            ifelse(age < temp$Agecap_lin,
                   fraction_lin(agecap - agecap),
                   fraction_lin(agecap_lin - agecap))))
  }
)


#' Plot enzyme or transporter activity over age
#'
#' @param name The target enzyme or transporter as character.
#' @param loc the localisation as character. Can be 'hepatic', 'intestinal',
#'   'brain' or 'renal'.
#' @param min_age Minimum age in years as numeric.
#' @param max_age Maximum age in years as numeric.
#' @param age_step The age resolution for the plot in years, as numeric.
#'
#' @return A ggplot object.
#' @export
#'
#' @examples
#' ontogeny_plot("CYP3A4")
#' ontogeny_plot(c("CYP3A4", "CYP2C9", "CYP2C19"))
#' ontogeny_plot(c("UGT1A1", "UGT1A4", "UGT1A6"), max_age = 6)
ontogeny_plot <- function(name, loc = "hepatic", min_age = 0, max_age = 4,
                          age_step = 0.02) {
  locs <- unique(ontogeny_param$Loc)
  if(!loc %in% locs)
    stop(paste0("Localisation must be either of: ",
                nice_enumeration(locs, conjunction = "or")))

  temp <- interaction(name, loc, sep = "/") %in%
    interaction(ontogeny_param$Name, ontogeny_param$Loc, sep = "/")
  if(!any(temp))
    stop("Target not found!")
  if(any(!temp))
    warning(paste0("Some targets not found:\n",
                df_to_string(data.frame(name, loc)[!temp,], indent = "  ")))

    data.frame(name, loc)[temp,] %>%
      rowwise() %>%
      mutate(age = list(c(seq(min_age, max_age, age_step)))) %>%
      unnest(c(age)) %>%
      mutate(rel_act = rel_act(name, age, loc)) %>%
      ggplot(aes(x = age, y = rel_act, color = interaction(name, loc, sep = "-"))) +
      geom_line() +
      labs(x = "age (y)", y = "relative activity", color = "") +
      theme_bw()
}


