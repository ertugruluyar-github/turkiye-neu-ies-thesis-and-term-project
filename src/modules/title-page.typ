#import "../constants.typ": *

#let title-page(
  title,
  author,
  thesis-type,
  is-thesis-proposal,
  header-logo,
  reviewers,
  date,
) = {
  let _large = 14pt
  let _Large = 16pt
  let _LARGE = 20pt
  let _huge = 24pt
  set align(center)

  let thesis-suffix = if is-thesis-proposal { STRING-THESIS-PROPOSAL-SUFFIX } else { STRING-THESIS-SUFFIX }
  let thesis-type = thesis-type + thesis-suffix

  header-logo

  v(4.75em)

  text(_Large, font: FONT-NAME)[*#thesis-type*]
  v(2.5em)
  text(_huge, font: FONT-NAME)[
    #set par(justify: false)
    *#title*
  ]
  v(1.25em)

  set text(_Large)
  show raw: set text(_large * 0.95)

  author.fullname
  v(0.75em, weak: true)
  link("https://orcid.org/" + author.orcid)[#author.orcid]

  v(0.5em)
  [
    #show regex("[a-zA-Z]+"): r => MONTHS.at(date.month() - 1)
    #date.display(DATE-FORMAT)
  ]
  v(5.35em)

  /* First and second reviewer are required, supervisor is optional. */
  if reviewers.len() >= 2 {
    let first-reviewer-name = reviewers.first()
    let second-reviewer-name = reviewers.at(1)
    let supervisor-name = reviewers.at(2, default: none)

    [
      #STRING-FIRST-REVIEWER:\
      #first-reviewer-name\ \
      #v(-1.5em)

      #STRING-SECOND-REVIEWER:\
      #second-reviewer-name\ \
      #v(-1.5em)

      #if supervisor-name != none [
        #STRING-SUPERVISOR:\
        #supervisor-name
      ]
    ]
  }
}
