#import "/src/styles/abstract-page-style.typ": abstract-page-style
#import "/src/components/keywords-component.typ": keywords-component
#import "/src/components/fullname-component.typ": fullname-component

#let abstract-page-component(
  page-title: none,
  university-name: none,
  institute-name: none,
  department: none,
  program: none,
  report-type: none,
  thesis-title: none,
  author: none,
  abstract-text-content-file-path: none,
  keywords-title: none,
  keywords: none,
) = {
  show: abstract-page-style

  heading(level: 1, upper(page-title))

  align(center, university-name + ", " + institute-name)
  align(center, department)
  align(center, program)
  align(center, report-type)
  v(1em)
  align(center, text(weight: "bold", upper(thesis-title.upper-case)))
  v(1em)
  align(center, fullname-component(first-name: author.first-name, last-name: author.last-name))

  v(24pt)

  par(spacing: 0pt)[#include abstract-text-content-file-path]

  if keywords-title != none and keywords != none {
    v(10pt)

    keywords-component(
      keywords-title: keywords-title,
      keywords: keywords,
    )
  }

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
