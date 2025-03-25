#import "/src/constants/document-settings-constants.typ": MARGIN
#import "/src/constants/language-free-string-constants.typ": STRING-CITY-NAME
#import "/src/constants/date-constants.typ": ONLY-YEAR-DATE-FORMAT
#import "/src/constants/drop-down-list-constants.typ": LANGUAGES, REPORT-TYPES
#import "/src/constants/path-constants.typ": (
  UNIVERSITY-LOGO-PATH,
  INSTITUTE-LOGO-PATH,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/thesis-study-funding-organization-component.typ": thesis-study-funding-organization-component

#let title-page(
  language: none,
  department: none,
  program: none,
  report-type: none,
  date: none,
  thesis-title: none,
  author: none,
  advisor: none,
  second-advisor: none,
  thesis-study-funding-organization: none,
) = {
  set page(
    header: none,
    footer: none,
    margin: MARGIN,
    numbering: none,
    columns: 1,
  )
  set align(center)
  set par(leading: 1em, spacing: 1em)


  let institute-logo-path = if language == LANGUAGES.TR-TR {
    INSTITUTE-LOGO-PATH.TR-TR
  } else if language == LANGUAGES.EN-US {
    INSTITUTE-LOGO-PATH.EN-US
  }
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
  ) {
    grid(
      columns: 1fr,
      align: center + horizon,
      row-gutter: 12pt,
      image(institute-logo-path, width: 3.4cm, height: 3.4cm),
      text(weight: "bold")[
        #upper(translator(key: language-keys.THE-REPUPLIC-OF-TURKIYE))\
        #upper(translator(key: language-keys.UNIVERSITY-NAME-UPPER-CASE))\
        #upper(translator(key: language-keys.INSTITUTE-NAME-UPPER-CASE))
      ],
    )

    v(1cm)
  }

  if (
    report-type == REPORT-TYPES.MASTER-THESIS
      or report-type == REPORT-TYPES.DOCTORAL-THESIS
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    let university-logo-path = if language == LANGUAGES.TR-TR {
      UNIVERSITY-LOGO-PATH.TR-TR
    } else if language == LANGUAGES.EN-US {
      UNIVERSITY-LOGO-PATH.EN-US
    }

    grid(
      columns: (1fr, auto, 1fr),
      align: center + horizon,
      row-gutter: 12pt,
      align(left, image(university-logo-path, width: 2.7cm, height: 2.7cm)),
      text(weight: "bold")[
        #upper(translator(key: language-keys.THE-REPUPLIC-OF-TURKIYE))\
        #upper(translator(key: language-keys.UNIVERSITY-NAME-UPPER-CASE))\
        #upper(translator(key: language-keys.INSTITUTE-NAME-UPPER-CASE))
      ],
      align(right, image(institute-logo-path, width: 2.7cm, height: 2.7cm)),
    )

    v(3.5cm)
  }

  align(center, department)
  align(center, program)

  v(1cm)

  report-type

  v(1.75cm)

  text(weight: "bold")[
    #let thesis-title = if language == LANGUAGES.TR-TR {
      thesis-title.tur
    } else if language == LANGUAGES.EN-US {
      thesis-title.eng
    }
    #upper(thesis-title.upper-case)
  ]


  v(1.75cm)

  fullname-component(first-name: author.first-name, last-name: author.last-name)
  linebreak()
  orcid-with-prefix-component(orcid: author.orcid)

  v(1.25cm)
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    v(1.75cm)
  }

  translator(key: language-keys.ADVISOR)
  linebreak()
  advisor-with-orcid-component(advisor: advisor)

  v(0.5cm)

  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    )
      and second-advisor != none
  ) {
    translator(key: language-keys.SECOND-ADVISOR)
    linebreak()
    advisor-with-orcid-component(advisor: second-advisor)
    v(0.75cm)
  } else {
    v(1.5cm)
  }

  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    )
      and thesis-study-funding-organization != none
  ) {
    thesis-study-funding-organization-component(
      language: language,
      thesis-study-funding-organization: thesis-study-funding-organization,
    )
    v(0.5cm)
  } else {
    v(1cm)
  }

  [#STRING-CITY-NAME - #date.display(ONLY-YEAR-DATE-FORMAT)]

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
