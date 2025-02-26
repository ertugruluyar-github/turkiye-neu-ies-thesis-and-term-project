#let keywords-component(
  keywords-title: none,
  keywords: none,
) = {
  set align(left)
  set par(first-line-indent: (amount: 0cm, all: true))
  text(weight: "bold", keywords-title + ": ") + keywords
}
