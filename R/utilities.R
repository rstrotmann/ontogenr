#' Render data frame object to string
#'
#' This function renders a data.frame into a string similar to its
#' representation when printed without line numbers
#'
#' @param df The data.frame to be rendered
#' @param indent A string that defines the left indentation of the rendered
#'   output.
#' @param header Boolean to indicate whether the header row is to be included.
#' @param color Print headers in grey as logical.
#' @param n The number of lines to be included, or all if NULL.
#' @param show_none Show empty data frame as 'none', as logical.
#'
#' @return The output as string.
#' @import utils
#' @keywords internal
df_to_string <- function(df, indent = "", n = NULL, header = TRUE,
                         color = FALSE, show_none = FALSE) {
  df <- as.data.frame(df) %>%
    mutate(across(everything(), as.character))
  max_widths <- as.numeric(lapply(
    rbind(df, names(df)),
    FUN = function(x) max(sapply(as.character(x), nchar), na.rm = TRUE)
  ))

  render_line <- function(line) {
    paste0(
      indent,
      paste0(
        mapply(
          function(element, width) {
            format(element, width = width + 3)
          },
          element = as.character(line), width = max_widths
        ),
        collapse = ""
      )
    )
  }

  if (header == TRUE) {
    if(color == TRUE) {
      out <- paste0(
        "\u001b[38;5;248m",
        render_line(data.frame(as.list(names(df)))),
        "\u001b[0m"
      )
    } else {
      out <- render_line(data.frame(as.list(names(df))))
    }
  } else {
    out <- ""
  }

  if (!is.null(n)) {
    df <- utils::head(df, n = n)
  }

  temp <- lapply(as.list(as.data.frame(t(df))), render_line)

  if(show_none & length(temp) == 0) {
    out <- paste0(indent, "none")
  } else {
    out <- paste(out, paste(temp, collapse = "\n"), sep = "\n")
  }
  return(out)
}


#' Nice enumeration of multiple strings
#'
#' @param items Items to enumerate as character.
#' @param conjunction The conjunction between the last and penultmate items.
#'
#' @return Enumeration as character.
#' @export
#' @keywords internal
#'
#' @examples
#' nice_enumeration("A")
#' nice_enumeration(c("A", "B"))
#' nice_enumeration(c("A", "B", "C"))
#' nice_enumeration(c("A", "B", "C"), conjunction = "or")
nice_enumeration <- function(items, conjunction = "and") {
  if(length(items) == 1) {
    return(items[[1]])
  }
  if(length(items) > 1) {
    return(paste(paste(items[1:length(items)-1], collapse = ", "), conjunction,
                 items[length(items)]))
  }
}
