#import "/src/styles/list-of-equation-figures-style.typ": list-of-equation-figures-style

#let list-of-equation-figures-page() = {
  list-of-equation-figures-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
