#import "/src/styles/table-of-contents-style.typ": table-of-contents-style

#let table-of-contents-page() = {
  table-of-contents-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
