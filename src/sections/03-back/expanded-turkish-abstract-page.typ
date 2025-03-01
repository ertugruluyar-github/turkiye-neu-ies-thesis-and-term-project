#import "/src/constants.typ": (
  STRING-ABSTRACT-TUR,
  STRING-UNIVERSITY-NAME-TUR,
  STRING-INSTITUTE-NAME-TUR,
  STRING-KEYWORDS-TUR,
)
#import "/src/components/abstract-page-component.typ": abstract-page-component

#let expanded-turkish-abstract-page(
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
    thesis-title: thesis-title,
    author: author,
    abstract-text-content-file-path: "/template/sections/03-back/expanded-turkish-abstract-text.typ",
    keywords-title: STRING-KEYWORDS-TUR,
    keywords: keywords,
  )
}
