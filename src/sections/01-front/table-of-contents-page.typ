#import "/src/styles/table-of-contents-style.typ": table-of-contents-style

#let table-of-contents-page() = {
  table-of-contents-style(outline())

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
