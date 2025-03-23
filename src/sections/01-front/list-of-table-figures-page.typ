#import "/src/styles/list-of-table-figures-style.typ": list-of-table-figures-style

#let list-of-table-figures-page() = {
  // Tablo listelerinin stilini uygula. [Apply the style of the table figure lists.]
  list-of-table-figures-style(outline())

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
