#' Event target
#'
#' @export
#'
#' @examples
#'
#' .event %>%
#'   target("nav1")
#'
target <- function(x, id) {
  add_attribute(x, "data-evt-target", id)
}
