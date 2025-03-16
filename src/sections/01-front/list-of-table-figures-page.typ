#import "/src/styles/list-of-table-figures-style.typ": list-of-table-figures-style

#let list-of-table-figures-page() = {
  list-of-table-figures-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
