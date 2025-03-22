#import "/src/styles/list-of-image-figures-style.typ": list-of-image-figures-style

#let list-of-image-figures-page() = {
  // Şekil listelerinin stilini uygula. [Apply the style of the image figure lists.]
  list-of-image-figures-style(outline())

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
