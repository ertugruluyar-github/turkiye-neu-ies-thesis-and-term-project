#import "/src/constants.typ": (
  STRING-CURRICULUM-VITAE,
  STRING-GENERAL-INFO,
  FULL-DATE-FORMAT,
  STRING-FIRST-NAME-LAST-NAME,
  STRING-SIGNATURE,
  STRING-BIRTHDAY,
  STRING-BIRTHPLACE,
  STRING-ADRESS,
  STRING-MARITAL-STATUS,
  STRING-PHONE-NUMBER,
  STRING-EMAIL,
  STRING-EDUCATIONAL-BACKGROUND,
  STRING-SCHOOL-TYPE,
  STRING-SCHOOL-NAME,
  STRING-PROGRAM,
  STRING-PLACE,
  STRING-YEAR,
  STRING-HIGH-SCHOOL,
  STRING-UNDERGRADUATE,
  STRING-MASTERS-DEGREE,
  STRING-WORK-BACKGROUND,
  STRING-SKILLS,
  STRING-WORK-EXPERIENCES,
  STRING-GET-INFO-FROM-RECOMMENDED-PEOPLES,
)
#import "/src/components/email-link-component.typ": email-link-component
#import "/src/components/orcid-link-component.typ": orcid-link-component

#let curriculum-vitae-page(
  first-name: none,
  last-name: none,
  birthplace: none,
  birthday: none,
  address: none,
  marital-status: none,
  phone-number: none,
  email: none,
  high-school: (
    name: none,
    program: none,
    place: none,
    start-year: none,
  ),
  undergraduate: (
    name: none,
    program: none,
    place: none,
    start-year: none,
  ),
  masters-degree: (
    name: none,
    program: none,
    place: none,
    start-year: none,
  ),
  skills: none,
  work-experiences: (
    (
      start-date: none,
      end-date: none,
      organization-name: none,
      title: none,
    ),
    (
      start-date: none,
      end-date: none,
      organization-name: none,
      title: none,
    ),
  ),
  get-info-from-recommended-peoples: (
    (
      name-with-title: none,
      orcid: none,
      email: none,
    ),
    (
      name-with-title: none,
      orcid: none,
      email: none,
    ),
  ),
) = {
  show heading.where(level: 1): set align(center)

  set par(justify: false, leading: 1em, spacing: 1.5em)

  set table(
    column-gutter: auto,
    rows: auto,
    row-gutter: auto,
    inset: (
      left: 0.5em,
      top: 1em,
      bottom: 1em,
      right: 0.5em,
    ),
    align: left,
    stroke: 0.25pt + black,
  )

  set table.header(repeat: false)

  set table.footer(repeat: false)

  heading(level: 1, STRING-CURRICULUM-VITAE)

  v(1em)

  align(
    center,
    table(
      columns: (auto, 2fr, auto, 1fr),
      table.cell(colspan: 4, align(center)[*#STRING-GENERAL-INFO*]),
      [*#STRING-FIRST-NAME-LAST-NAME:*], [#first-name #upper(last-name)], [*#STRING-SIGNATURE:*], [],
      [*#STRING-BIRTHPLACE:*], [#upper(birthplace)], [*#STRING-BIRTHPLACE:*], [#birthday.display(FULL-DATE-FORMAT)],
      [*#STRING-ADRESS:*], [#address], [*#STRING-MARITAL-STATUS:*], [#marital-status],
      [*#STRING-PHONE-NUMBER:*], [#phone-number], [*#STRING-EMAIL:*], [#email-link-component(email: email)],
    ),
  )

  align(
    center,
    table(
      columns: (auto, 4fr, 3fr, 2fr, 1fr),
      table.cell(colspan: 5, align(center)[*#STRING-EDUCATIONAL-BACKGROUND*]),
      align(center)[*#STRING-SCHOOL-TYPE*], align(center)[*#STRING-SCHOOL-NAME*], align(center)[*#STRING-PROGRAM*], align(center)[*#STRING-PLACE*], align(center)[*#STRING-YEAR*],
      [*#STRING-HIGH-SCHOOL:*], [#high-school.name], [#high-school.program], [#high-school.place], [#high-school.start-year],
      [*#STRING-UNDERGRADUATE:*], [#undergraduate.name], [#undergraduate.program], [#undergraduate.place], [#undergraduate.start-year],
      [*#STRING-MASTERS-DEGREE:*], [#masters-degree.name], [#masters-degree.program], [#masters-degree.place], [#masters-degree.start-year],
    ),
  )

  align(
    center,
    table(
      columns: (auto, 1fr),
      table.cell(colspan: 2, align(center)[*#STRING-WORK-BACKGROUND*]),
      [*#STRING-SKILLS:*], [#skills],
      [*#STRING-WORK-EXPERIENCES:*], [#(
          work-experiences
            .map(it => (
              "(" + it.start-date + " - " + it.end-date + ")" + ": " + it.organization-name + " (" + it.title + ")"
            ))
            .join("\n")
        )],
      [*#STRING-GET-INFO-FROM-RECOMMENDED-PEOPLES:*], [#(
          get-info-from-recommended-peoples
            .map(it => (
              it.name-with-title
                + " ("
                + orcid-link-component(orcid: it.orcid)
                + ")"
                + " ("
                + email-link-component(email: it.email)
                + ")"
            ))
            .join("\n")
        )],
    ),
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
