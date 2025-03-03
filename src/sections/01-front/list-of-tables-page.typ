#import "/src/styles/list-of-tables-style.typ": list-of-tables-style

#let list-of-tables-page() = {
  list-of-tables-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
