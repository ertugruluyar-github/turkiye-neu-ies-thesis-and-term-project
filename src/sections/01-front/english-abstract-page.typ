#import "/src/constants.typ": (
  STRING-ABSTRACT-ENG,
  STRING-UNIVERSITY-NAME-ENG,
  STRING-INSTITUTE-NAME-ENG,
  STRING-KEYWORDS-ENG,
)
#import "/src/components/abstract-page-component.typ": abstract-page-component

#let english-abstract-page(
  department: none,
  program: none,
  report-type: none,
  thesis-title: none,
  author: none,
  keywords: none,
) = {
  abstract-page-component(
    page-title: STRING-ABSTRACT-ENG,
    university-name: STRING-UNIVERSITY-NAME-ENG.title-case,
    institute-name: STRING-INSTITUTE-NAME-ENG.title-case,
    department: department,
    program: program,
    report-type: report-type.EN-US,
    thesis-title: thesis-title,
    author: author,
    abstract-text-content-file-path: "/template/sections/01-front/abstract-text-eng.typ",
    keywords-title: STRING-KEYWORDS-ENG,
    keywords: keywords,
  )
}
