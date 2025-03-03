#import "/src/styles/list-of-images-style.typ": list-of-images-style

#let list-of-images-page() = {
  list-of-images-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
