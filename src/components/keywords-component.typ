#let keywords-component(
  keywords-title: "Title",
  keywords: "Keyword 1, Keyword 2",
) = {
  [
    #set align(left)
    #set par(first-line-indent: (amount: 0cm, all: true))
    *#keywords-title:* #keywords
  ]
}
