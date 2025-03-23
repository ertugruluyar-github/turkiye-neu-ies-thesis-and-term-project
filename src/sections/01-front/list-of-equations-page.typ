#import "/src/styles/list-of-equations-style.typ": list-of-equations-style

#let list-of-equations-page() = {
  list-of-equations-style(outline())

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
