#let symbols-and-abbreviations-page(
  have-symbols: true,
  have-abbreviations: true,
) = {
  heading(level: 1)[SİMGELER VE KISALTMALAR]
  if have-symbols {
    heading(level: 2)[Simgeler]

    include "/template/sections/03-other-pages/symbols-text.typ"

    pagebreak()
  }

  if have-abbreviations {
    heading(level: 2)[Kısaltmalar]

    include "/template/sections/03-other-pages/abbreviations-text.typ"

    pagebreak()
  }
}
