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
