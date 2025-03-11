#import "/src/constants.typ": FULL-DATE-FORMAT, MONTH-YEAR-DATE-FORMAT
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/styles/curriculum-vitae-page-style.typ": curriculum-vitae-page-style
#import "/src/components/fullname-with-title-component.typ": fullname-with-title-component
#import "/src/components/email-link-component.typ": email-link-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component

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
  // İş deneyimlerini geçmişten günümüze doğru sırala. [Sort your work experiences from past to present.]
  let sorted-work-experiences = work-experiences.sorted(
    key: work-experience => (work-experience.start-date, work-experience.end-date),
  )

  // Sayfa stilini uygula. [Apply page style.]
  show: curriculum-vitae-page-style

  heading(level: 1, translator(key: language-keys.CURRICULUM-VITAE))

  v(1em)

  table(
    columns: (auto, 2fr, auto, 1fr),
    table.cell(colspan: 4, align(center)[*#translator(key: language-keys.GENERAL-INFO)*]),
    [*#translator(key: language-keys.FIRST-NAME-LAST-NAME):*], [#first-name #upper(last-name)], [*#translator(key: language-keys.SIGNATURE):*], [],
    [*#translator(key: language-keys.BIRTHPLACE):*], [#upper(birthplace)], [*#translator(key: language-keys.BIRTHPLACE):*], [#birthday.display(FULL-DATE-FORMAT)],
    [*#translator(key: language-keys.ADRESS):*], [#address], [*#translator(key: language-keys.MARITAL-STATUS):*], [#marital-status],
    [*#translator(key: language-keys.PHONE-NUMBER):*], [#phone-number], [*#translator(key: language-keys.EMAIL):*], [#email-link-component(
        email: email,
      )],
  )

  table(
    columns: (auto, 4fr, 3fr, 2fr, 1fr),
    table.cell(colspan: 5, align(center)[*#translator(key: language-keys.EDUCATIONAL-BACKGROUND)*]),
    align(center)[*#translator(key: language-keys.SCHOOL-TYPE)*], align(center)[*#translator(key: language-keys.SCHOOL-NAME)*], align(center)[*#translator(key: language-keys.PROGRAM)*], align(center)[*#translator(key: language-keys.PLACE)*], align(center)[*#translator(key: language-keys.YEAR)*],
    [*#translator(key: language-keys.HIGH-SCHOOL):*], [#high-school.name], [#high-school.program], [#high-school.place], [#high-school.start-year],
    [*#translator(key: language-keys.UNDERGRADUATE):*], [#undergraduate.name], [#undergraduate.program], [#undergraduate.place], [#undergraduate.start-year],
    [*#translator(key: language-keys.MASTERS-DEGREE):*], [#masters-degree.name], [#masters-degree.program], [#masters-degree.place], [#masters-degree.start-year],
  )

  table(
    columns: (auto, 1fr),
    table.cell(colspan: 2, align(center)[*#translator(key: language-keys.WORK-BACKGROUND)*]),
    [*#translator(key: language-keys.SKILLS):*], [#skills.join("; ")],
    [*#translator(key: language-keys.WORK-EXPERIENCES):*], [#(
        sorted-work-experiences
          .map(it => (
            "("
              + it.start-date.display(MONTH-YEAR-DATE-FORMAT)
              + " - "
              + it.end-date.display(MONTH-YEAR-DATE-FORMAT)
              + ")"
              + ": "
              + it.organization-name
              + " ("
              + it.title
              + ")"
          ))
          .join("\n")
      )],
    [*#translator(key: language-keys.GET-INFO-FROM-RECOMMENDED-PEOPLES):*], [#(
        get-info-from-recommended-peoples
          .map(it => (
            fullname-with-title-component(
              title: it.title,
              first-name: it.first-name,
              last-name: it.last-name,
            )
              + "\n"
              + orcid-with-prefix-component(orcid: it.orcid)
              + "\n"
              + translator(key: language-keys.EMAIL)
              + ": "
              + email-link-component(email: it.email)
          ))
          .join({
            align(
              center,
              line(
                length: 95%,
                stroke: (paint: black, thickness: 0.25pt, dash: "dashed"),
              ),
            )
          })
      )],
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
