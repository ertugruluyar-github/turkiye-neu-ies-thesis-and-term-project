#import "/src/constants.typ": (
  MARGIN,
  REPORT-TYPES,
  STRING-TC,
  STRING-UNIVERSITY-NAME-TUR,
  STRING-INSTITUTE-NAME-TUR,
  STRING-ADVISOR,
  STRING-SECOND-ADVISOR,
  STRING-CITY-NAME,
  ONLY-YEAR-DATE-FORMAT,
)
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/thesis-study-funding-organization-component.typ": thesis-study-funding-organization-component

#let title-page(
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

  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.PHD-THESIS-PROPOSAL
  ) {
    grid(
      columns: 1fr,
      align: center + horizon,
      row-gutter: 12pt,
      image("/src/organization-logos/institute-logo.png", width: 3.4cm, height: 3.4cm),
      text(weight: "bold")[
        #upper(STRING-TC)\
        #upper(STRING-UNIVERSITY-NAME-TUR.upper-case)\
        #upper(STRING-INSTITUTE-NAME-TUR.upper-case)
      ],
    )

    v(1cm)
  } else if (
    report-type == REPORT-TYPES.MASTER-THESIS
      or report-type == REPORT-TYPES.PHD-THESIS
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    grid(
      columns: (1fr, 6fr, 1fr),
      align: center + horizon,
      row-gutter: 12pt,
      image("/src/organization-logos/university-logo.png", width: 2.7cm, height: 2.7cm),
      text(weight: "bold")[
        #upper(STRING-TC)\
        #upper(STRING-UNIVERSITY-NAME-TUR.upper-case)\
        #upper(STRING-INSTITUTE-NAME-TUR.upper-case)
      ],
      image("/src/organization-logos/institute-logo.png", width: 2.7cm, height: 2.7cm),
    )

    v(3.5cm)
  }

  align(center, department)
  align(center, program)

  v(1cm)

  report-type

  v(1.75cm)

  text(weight: "bold")[#upper(thesis-title.upper-case)]

  v(1.75cm)

  fullname-component(first-name: author.first-name, last-name: author.last-name)
  orcid-with-prefix-component(orcid: author.orcid)

  v(1.25cm)
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.PHD-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    v(1.75cm)
  }

  STRING-ADVISOR
  advisor-with-orcid-component(advisor: advisor)

  v(0.5cm)

  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.PHD-THESIS
    )
      and second-advisor != none
  ) {
    STRING-SECOND-ADVISOR
    advisor-with-orcid-component(advisor: second-advisor)
    v(0.75cm)
  } else {
    v(1.5cm)
  }

  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.PHD-THESIS
    )
      and thesis-study-funding-organization != none
  ) {
    thesis-study-funding-organization-component(thesis-study-funding-organization: thesis-study-funding-organization)
    v(0.5cm)
  } else {
    v(1cm)
  }

  [#STRING-CITY-NAME - #date.display(ONLY-YEAR-DATE-FORMAT)]

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true), yazının bitimi tek numaralı sayfada ise sayfa sonu ekle ama çift numaralı sayfada ise sayfa sonu ekleme (to: "odd"). Böylece, yazının bittiği sayfa çift sayfa olacak ve "EKLER" bölümü tek numaralı sayfadan başlayacağı garanti altına alındı. Kısaca yazının bittiği sayfadan sonraki sayfanın tek numaralı bir sayfa olmasını garanti altına almak için (to: "odd") parametresi kullanıldı.
  pagebreak(weak: true, to: "odd")
}
