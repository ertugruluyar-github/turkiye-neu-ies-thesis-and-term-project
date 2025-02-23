#import "/src/constants.typ": *
#import "/src/modules/custom-functions.typ": change-long-month-name, empty-page-with-no-page-numbering
#import "/src/modules/turkish-case-handler.typ": upper-case-tr
#import "/src/components/thesis-type-component.typ": thesis-type-component
#import "../components/author-fullname-component.typ": author-fullname-component
#import "../components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "../components/advisor-faculty-member-fullname-with-title.typ": advisor-faculty-member-fullname-with-title
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "../components/thesis-study-funding-organization-component.typ": thesis-study-funding-organization-component

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

  grid(
    columns: (1fr, 6fr, 1fr),
    align: center + horizon,
    row-gutter: 1em,
    image("/src/organization-logos/university-logo.png", width: 2.7cm, height: 2.7cm),
    [
      #set text(weight: "bold")
      #set par(leading: 1em)
      T.C.\
      #upper-case-tr(STRING-UNIVERSITY-NAME-TUR)\
      #upper-case-tr(STRING-INSTITUTE-NAME-TUR)
    ],
    image("/src/organization-logos/university-logo.png", width: 2.7cm, height: 2.7cm),
  )

  v(3.5cm)

  align(center, department)
  align(center, program)

  v(1cm)

  thesis-type-component(thesis-type: thesis-type, is-thesis-proposal: is-thesis-proposal)

  v(1.75cm)

  [
    #set text(weight: "bold")
    #upper-case-tr(thesis-title)
  ]

  v(1.75cm)

  author-fullname-component(author: author)
  orcid-with-prefix-component(orcid: author.orcid)

  v(1.25cm)


  STRING-ADVISOR
  advisor-faculty-member-fullname-with-title(advisor: advisor)
  orcid-with-prefix-component(orcid: advisor.orcid)
  v(0.5cm)
  if STRING-SECOND-ADVISOR != none {
    STRING-SECOND-ADVISOR
    advisor-faculty-member-fullname-with-title(advisor: second-advisor)
    orcid-with-prefix-component(orcid: second-advisor.orcid)
  }

  v(0.75cm)

  thesis-study-funding-organization-component(thesis-study-funding-organization: thesis-study-funding-organization)

  v(0.5cm)

  [#CITY-NAME - #date.display(ONLY-YEAR-DATE-FORMAT)]

  pagebreak()
  empty-page-with-no-page-numbering
}
