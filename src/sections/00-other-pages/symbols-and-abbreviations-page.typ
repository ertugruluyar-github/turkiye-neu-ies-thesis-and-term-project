#let symbols-and-abbreviations-page(
  have-symbols: true,
  have-abbreviations: true,
) = {
  heading(level: 1)[SİMGELER VE KISALTMALAR]
  if have-symbols {
    heading(level: 2)[Simgeler]

    include "/template/sections/00-other-pages/symbols-text.typ"

    // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
    pagebreak(weak: true)
  }

  if have-abbreviations {
    heading(level: 2)[Kısaltmalar]

    include "/template/sections/00-other-pages/abbreviations-text.typ"

    // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
    pagebreak(weak: true)
  }
}
