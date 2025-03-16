#import "/src/styles/list-of-code-figures-style.typ": list-of-code-figures-style

#let list-of-code-figures-page() = {
  list-of-code-figures-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
