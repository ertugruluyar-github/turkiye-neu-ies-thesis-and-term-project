#import "/src/constants.typ": ABSTRACT-TEXT-FONT-SIZE
#import "/src/components/keywords-component.typ": keywords-component

#let abstract-page(
  title: "Title",
  abstract-text-content-file-path: none,
  keywords-title: "Keywords Title",
  keywords: "Keyword 1, Keyword 2",
) = {
  // Özet metni normal yazı büyüklüğünden daha küçük olacak şekilde ayarlandı.
  set text(size: ABSTRACT-TEXT-FONT-SIZE)

  heading(level: 1, title)

  include abstract-text-content-file-path

  keywords-component(
    keywords-title: keywords-title,
    keywords: keywords,
  )

  pagebreak()
}
