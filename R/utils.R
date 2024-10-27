assert_subject <- function(subject, call = caller_env()) {
  if (!(is_style_pronoun(subject) ||
          is_pronoun_box(subject) ||
          is_tag(subject))) {

    abort(
      "subject must be the `.event` pronoun or tag element",
      call = call
    )
  }
}

is_event_pronoun <- function(x) {
  inherits_only(x, "eventure_event_pronoun")
}

is_pronoun_box <- function(x) {
  is_box(x) && is_spliced(x) && is_style_pronoun(unbox(x))
}

is_tag <- function(x) {
  inherits_any(x, "shiny.tag")
}

add_attribute <- function(x, attr, value) {
  assert_subject(x)

  if (is_event_pronoun(x)) {
    pronoun_add_attribute(x, attr, value)
  } else if (is_pronoun_box(x)) {
    pronoun_box_add_attribute(x, attr, value)
  } else if (is_tag(x)) {
    tag_add_attribute(x, attr, value)
  }
}

pronoun_add_attribute <- function(x, attr, value) {
  x[[attr]] <- value
  splice(x)
}

pronoun_box_add_atribute <- function(x, attr, value) {
  x <- unbox(x)

  if (!is_event_pronoun(x)) {
    abort("unexpected pronoun box contents")
  }

  pronoun_add_attribute(x, attr, value)
}

tag_add_attribute <- function(x, attr, value) {
  x$attribs[[attr]] <- value
  x
}
