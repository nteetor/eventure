# eventure

A dsl for describing and handling events.

## Desired usage

```R
buttonInput(
  id = "open",
  label = "Open",
  on(click) %>%
    target(
      open = "pane_1"
    ) %>%
    dispatch(
      pane_1 = show()
    )
)
```

```R
input_button(
  id = "open_pane",
  label = "Open",
  .event %>%
    target(
      open_pane = pane_1
    ) %>%
    dispatch(
      pane_1 = show()
    ),
  .click %>%
    target(
      open_pane = pane_1
    )
)
```

```R
input_button_group(
  id = ""
)
```
