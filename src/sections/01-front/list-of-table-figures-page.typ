#import "/src/styles/list-of-table-figures-style.typ": list-of-table-figures-style

#let list-of-table-figures-page() = {
  // Tablo listelerinin stilini uygula. [Apply the style of the table figure lists.]
  list-of-table-figures-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
