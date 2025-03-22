#import "/src/styles/list-of-equations-style.typ": list-of-equations-style

#let list-of-equations-page() = {
  list-of-equations-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
