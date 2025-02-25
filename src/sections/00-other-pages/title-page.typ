#import "/src/constants.typ": *
#import "/src/modules/custom-functions.typ": empty-page-with-no-page-numbering
#import "/src/modules/turkish-case-handler.typ": upper-case-tr
#import "/src/components/thesis-type-component.typ": thesis-type-component
#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/thesis-study-funding-organization-component.typ": thesis-study-funding-organization-component
#import "/src/modules/turkish-case-handler.typ": title-case-tr

#let title-page(
  department: none,
  program: none,
  thesis-title: none,
  author: none,
  advisor: none,
  second-advisor: none,
  thesis-study-funding-organization: none,
  thesis-type: none,
  is-thesis-proposal: none,
  reviewers: none,
  date: none,
) = {
  set align(center)
  set par(leading: 1em, spacing: 1em)

  grid(
    columns: (1fr, 6fr, 1fr),
    align: center + horizon,
    row-gutter: 12pt,
    "", //image("/src/organization-logos/university-logo.png", width: 2.7cm, height: 2.7cm),
    text(weight: "bold")[
      #upper-case-tr(STRING-TC)\
      #upper-case-tr(STRING-UNIVERSITY-NAME-TUR)\
      #upper-case-tr(STRING-INSTITUTE-NAME-TUR)
    ],
    "", //image("/src/organization-logos/university-logo.png", width: 2.7cm, height: 2.7cm),
  )

  v(3.5cm)

  align(center, department)
  align(center, program)

  v(1cm)

  thesis-type-component(thesis-type: thesis-type, is-thesis-proposal: is-thesis-proposal)

  v(1.75cm)

  text(weight: "bold")[#upper-case-tr(thesis-title)]

  v(1.75cm)

  author-fullname-component(author: author)
  orcid-with-prefix-component(orcid: author.orcid)

  v(1.25cm)

  title-case-tr(STRING-ADVISOR)
  advisor-with-orcid-component(advisor: advisor)

  v(0.5cm)

  if second-advisor != none {
    title-case-tr(STRING-SECOND-ADVISOR)
    advisor-with-orcid-component(advisor: second-advisor)
  } else {
    v(5em)
  }

  v(0.75cm)

  if thesis-study-funding-organization != none {
    thesis-study-funding-organization-component(thesis-study-funding-organization: thesis-study-funding-organization)
  } else {
    v(3.3em)
  }

  v(0.5cm)

  [#title-case-tr(STRING-CITY-NAME) - #date.display(ONLY-YEAR-DATE-FORMAT)]

  pagebreak()

  empty-page-with-no-page-numbering
}
