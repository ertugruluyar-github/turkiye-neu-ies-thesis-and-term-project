#import "/src/constants.typ": ABSTRACT-TEXT-FONT-SIZE
#import "/src/components/keywords-component.typ": keywords-component
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/thesis-type-component.typ": thesis-type-component

#let abstract-page(
  page-title: none,
  university-name: "University Name",
  institute-name: "Institute Name",
  department: none,
  program: none,
  thesis-type: none,
  is-thesis-proposal: none,
  thesis-title: none,
  author: none,
  abstract-text-content-file-path: none,
  keywords-title: "Keywords Title",
  keywords: "Keyword 1, Keyword 2",
) = {
  // Özet metni normal yazı büyüklüğünden daha küçük olacak şekilde ayarlandı.
  set text(size: ABSTRACT-TEXT-FONT-SIZE)
  set par(spacing: 1em)

  heading(level: 1, upper(page-title))

  align(center, university-name + ", " + institute-name)
  align(center, department)
  align(center, program)
  align(center, thesis-type-component(thesis-type: thesis-type, is-thesis-proposal: is-thesis-proposal))
  v(1em)
  align(center, text(weight: "bold", upper(thesis-title.upper-case)))
  v(1em)
  align(center, fullname-component(first-name: author.first-name, last-name: author.last-name))

  v(24pt)

  set par(leading: 1em, spacing: 0cm)
  include abstract-text-content-file-path

  v(10pt)

  keywords-component(
    keywords-title: keywords-title,
    keywords: keywords,
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
