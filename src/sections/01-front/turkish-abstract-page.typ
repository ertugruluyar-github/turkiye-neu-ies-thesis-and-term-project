#import "/src/constants.typ": (
  STRING-ABSTRACT-TUR,
  STRING-UNIVERSITY-NAME-TUR,
  STRING-INSTITUTE-NAME-TUR,
  STRING-KEYWORDS-TUR,
)
#import "/src/components/abstract-page-component.typ": abstract-page-component

#let turkish-abstract-page(
  department: none,
  program: none,
  report-type: none,
  thesis-title: none,
  author: none,
  keywords: none,
) = {
  abstract-page-component(
    page-title: STRING-ABSTRACT-TUR,
    university-name: STRING-UNIVERSITY-NAME-TUR.title-case,
    institute-name: STRING-INSTITUTE-NAME-TUR.title-case,
    department: department,
    program: program,
    report-type: report-type.TR-TR,
    thesis-title: thesis-title.tur,
    author: author,
    abstract-text-content-file-path: "/template/sections/01-front/abstract-text-tur.typ",
    keywords-title: STRING-KEYWORDS-TUR,
    keywords: keywords,
  )
}
