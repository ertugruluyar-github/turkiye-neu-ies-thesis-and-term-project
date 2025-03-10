#let keywords-component(
  keywords-title: none,
  keywords: none,
) = {
  set align(left)
  set par(
    first-line-indent: (amount: 0cm, all: true),
    spacing: 0pt,
  )
  text(weight: "bold", keywords-title + ": ") + keywords.join(", ")
}
