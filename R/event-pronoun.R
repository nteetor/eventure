new_pronoun <- function() {
  structure(
    class = "eventure_event_pronoun",
    list()
  )
}

#' @export
print.eventure_event_pronoun <- function(x, ...) {
  cat("<pronoun>\n")
  invisible(x)
}

#' @export
str.eventure_event_pronoun <- function(object, ...) {
  cat("<pronoun>\n")
  invisible(NULL)
}

#' `.event` pronoun
#'
#' Create events.
#'
#' @name dot-style
#'
#' @usage NULL
#'
#' @format NULL
#'
#' @export
.event <- new_pronoun()
