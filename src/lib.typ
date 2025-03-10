#import "/src/constants.typ": *
#import "/src/core/validation/keyword-count-validator.typ": keyword-count-validator
#import "/src/core/validation/language-validator.typ": language-validator
#import "/src/core/validation/department-validator.typ": department-validator
#import "/src/styles/thesis-front-section-heading-style.typ": thesis-front-section-heading-style
#import "/src/styles/thesis-main-section-heading-style.typ": thesis-main-section-heading-style
#import "/src/styles/thesis-back-section-heading-style.typ": thesis-back-section-heading-style
#import "/src/styles/page-numbering-style.typ": page-numbering-style
#import "/src/styles/bibliography-section-style.typ": bibliography-section-style
#import "/src/styles/table-style.typ": table-style
#import "/src/styles/figure-style.typ": figure-style
#import "/src/styles/reference-style.typ": reference-style
#import "/src/modules/custom-functions.typ": *
#import "/src/sections/01-front/title-page.typ": title-page
#import "/src/sections/01-front/preface-page.typ": preface-page
#import "/src/sections/01-front/table-of-contents-page.typ": table-of-contents-page
#import "/src/sections/01-front/list-of-tables-page.typ": list-of-tables-page
#import "/src/sections/01-front/list-of-images-page.typ": list-of-images-page
#import "/src/sections/01-front/thesis-originality-report-page.typ": thesis-originality-report-page
#import "/src/sections/01-front/scientific-ethics-declaration-page.typ": scientific-ethics-declaration-page
#import "/src/sections/01-front/symbols-and-abbreviations-page.typ": symbols-and-abbreviations-page
#import "/src/sections/01-front/turkish-abstract-page.typ": turkish-abstract-page
#import "/src/sections/01-front/english-abstract-page.typ": english-abstract-page
#import "/src/sections/02-main/introduction-page.typ": introduction-page
#import "/src/sections/02-main/literature-page.typ": literature-page
#import "/src/sections/02-main/methodology-page.typ": methodology-page
#import "/src/sections/02-main/findings-page.typ": findings-page
#import "/src/sections/02-main/discussion-conclusion-and-suggestions-page.typ": (
  discussion-conclusion-and-suggestions-page,
)
#import "/src/sections/03-back/work-schedule-page.typ": work-schedule-page
#import "/src/sections/03-back/appendices-page.typ": appendices-page
#import "/src/sections/03-back/curriculum-vitae-page.typ": curriculum-vitae-page
#import "/src/sections/03-back/expanded-turkish-abstract-page.typ": expanded-turkish-abstract-page
#import "core/language-manager/language-manager.typ": init-language-manager, translator

#let template-configurations(
  language: LANGUAGES.TR-TR,
  department: DEPARTMENTS.__DEPARTMENT-PLACE-HOLDER,
  program: PROGRAMS.__PROGRAM-PLACE-HOLDER,
  report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL,
  date: datetime.today(),
  thesis-title: (
    tur: (
      title-case: "Thesis Title",
      upper-case: "THESIS TITLE",
    ),
    eng: (
      title-case: "Thesis English Title",
      upper-case: "THESIS ENGLISH TITLE",
    ),
  ),
  author: (
    first-name: "Author's firstname",
    last-name: "Author's LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  advisor: (
    title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Advisor's firstname",
    last-name: "Advisor's LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  second-advisor: (
    title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Second Advisor's firstname",
    last-name: "Second Advisor's LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  thesis-study-funding-organization: (
    name: "Name of the Funding Organization Supporting the Thesis Study",
    project-no: "Project No",
  ),
  thesis-originalty: (
    included-page-count: 0,
    similarity-score: 0,
  ),
  keywords: (
    tur: (
      "Anahtar kelime 1",
      "Anahtar kelime 2",
      "Anahtar kelime 3",
      "Anahtar kelime 4",
      "Anahtar kelime 5",
    ),
    eng: (
      "Keyword 1",
      "Keyword 2",
      "Keyword 3",
      "Keyword 4",
      "Keyword 5",
    ),
  ),
  show-list-of-tables: true,
  show-list-of-images: true,
  have-symbols: true,
  have-abbreviations: true,
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: true,
  work-packages: (
    (
      description: "Description 1",
      months: (1, 2),
    ),
    (
      description: "Description 2",
      months: (2, 3, 4, 5),
    ),
    (
      description: "Description 3",
      months: (5, 6, 7),
    ),
    (
      description: "Description 4",
      months: (7, 8, 9),
    ),
    (
      description: "Description 5",
      months: (9, 10, 11, 12),
    ),
  ),
  curriculum-vitae-info: (
    birthplace: "Konya",
    birthday: datetime.today(),
    address: "Adress",
    marital-status: "Single/Married",
    phone-number: "+90 555 55 55",
    email: "email@mail.com",
    high-school: (
      name: "High School Name",
      program: "Mathematics-Science",
      place: "Konya",
      start-year: 2025,
    ),
    undergraduate: (
      name: "Undergraduate - University Name",
      program: "Elementary School Teacher",
      place: "Konya",
      start-year: 2029,
    ),
    masters-degree: (
      name: "Master's Degree - University Name",
      program: "Mathematics Education",
      place: "Konya",
      start-year: 2032,
    ),
    skills: "Skill 1, Skill 2, ...",
    work-experiences: (
      (
        start-date: "04/2030",
        end-date: "06/2033",
        organization-name: "Organization Name that you worked",
        title: "Title/Job",
      ),
      (
        start-date: "07/2033",
        end-date: "03/2037",
        organization-name: "Organization Name that you worked",
        title: "Title/Job",
      ),
    ),
    get-info-from-recommended-peoples: (
      (
        title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
        first-name: "Firstname",
        last-name: "LASTNAME",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "email@mail.com",
      ),
      (
        title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
        first-name: "Firstname",
        last-name: "LASTNAME",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "email@mail.com",
      ),
    ),
  ),
  body,
) = {
  // Doğrulama işlemlerini gerçekleştir. [Perform the verification process.]
  // Dili doğrula. [Validate the language.]
  language-validator(language: language)
  // Ana Bilim Dalını doğrula. [Validate the department.]
  department-validator(department: department)
  // Anahtar kelime sayısını doğrula. [Validate keyword count.]
  keyword-count-validator(keyword-count: keywords.tur.len())
  keyword-count-validator(keyword-count: keywords.eng.len())

  // Initialize the language manager
  init-language-manager(default-language: language.language-code)

  /* Basic document rules. */
  set document(
    title: thesis-title.tur.title-case + " (" + thesis-title.eng.title-case + ")",
    author: (author.first-name + " " + upper(author.last-name)),
    keywords: (..keywords.tur, ..keywords.eng),
  )

  set page(
    paper: PAPER,
    header: none,
    footer: none,
    margin: MARGIN,
    number-align: right,
    numbering: PAGE-NUMBERING-ROMAN,
    columns: 1,
  )

  set text(
    font: FONT-NAME,
    size: FONT-SIZE,
    lang: language.language-code,
    region: language.region-code,
    ligatures: false,
    hyphenate: false,
    style: "normal",
    weight: DEFAULT-TEXT-FONT-WEIGHT,
  )

  set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )

  show heading: set text(size: FONT-SIZE)

  set par(
    justify: true,
    first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true),
    leading: PARAGRAPH-LEADING-SIZE,
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  set math.equation(
    numbering: MATH-NUMBERING,
    supplement: translator(key: language-keys.MATH-EQUATION-REFERENCE-SUPPLEMENT),
  )

  /* ---- Reference Style ---- */
  show: reference-style

  /* ---- Table Style ---- */
  show: table-style

  /* ---- Figure Styles ---- */
  show: figure-style

  /* ----------------------------- */

  /*
    show raw.where(block: true): r => {
      set par(justify: false, first-line-indent: 0cm, leading: PARAGRAPH-LEADING-SIZE, spacing: PARAGRAPH-SPACING-SIZE)
      show raw.line: line => {
        box(
          table(
            columns: (-1.25em, 100%),
            stroke: 0pt,
            inset: 0em,
            column-gutter: 1em,
            align: (x, y) => if x == 0 { right } else { left },
            text(fill: ovgu-darkgray, str(line.number)), line.body,
          ),
        )
      }

      set align(left)
      rect(width: 100%, stroke: gray + 0.5pt, inset: 0.75em, r)
    }
  */

  /* ----------------------------- */

  set footnote.entry(separator: line(length: 40%, stroke: 0.5pt))
  set list(marker: (sym.bullet, "◦", "-"))

  /* --- BAŞLIK SAYFASI [TITLE PAGE] --- */
  title-page(
    language: language,
    department: department,
    program: program,
    report-type: report-type,
    date: date,
    thesis-title: thesis-title,
    author: author,
    advisor: advisor,
    second-advisor: second-advisor,
    thesis-study-funding-organization: thesis-study-funding-organization,
  )

  // Set centered arabic page numbering.
  show: page-numbering-style.with(numbering: PAGE-NUMBERING-ROMAN, number-align: center)

  show raw: set text(12pt * 0.95)
  set-page-properties()

  {
    /* ---- TEZİN ÖN KISMI [FRONT SECTION OF THESIS] ---- */
    // Başlık stili
    show: thesis-front-section-heading-style

    //
    set par(
      justify: true,
      first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true),
      leading: PARAGRAPH-LEADING-SIZE,
      spacing: PARAGRAPH-SPACING-SIZE,
    )

    /* --- Ön Söz [Preface] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      preface-page(
        author: author,
        date: date,
      )
    }

    /* --- İçindekiler Sayfası [Table of Contents Page] --- */
    table-of-contents-page()

    /* --- Tablolar Listesi Sayfası [List of Tables Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-tables
    ) {
      list-of-tables-page()
    }

    /* --- Şekiller Listesi Sayfası [List of Images Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-images
    ) {
      list-of-images-page()
    }

    /* --- Tez Çalışması Örijinallik Raporu [Originality Report] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    ) {
      thesis-originality-report-page(
        thesis-title: thesis-title,
        author: author,
        advisor: advisor,
        date: date,
        included-page-count: thesis-originalty.included-page-count,
        similarity-score: thesis-originalty.similarity-score,
      )
    }

    /* --- Bilimsel Etik Beyannamesi [Scientific Ethics Declaration] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      scientific-ethics-declaration-page(
        author: author,
        date: date,
      )
    }

    /* --- Simgeler ve Kısaltmalar [Symbols and Abbreviations] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and (have-symbols or have-abbreviations)
    ) {
      symbols-and-abbreviations-page(
        have-symbols: have-symbols,
        have-abbreviations: have-abbreviations,
      )
    }

    /* --- Türkçe Özet Sayfası [Turkish Abstract Page] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      turkish-abstract-page(
        department: department,
        program: program,
        report-type: report-type,
        thesis-title: thesis-title,
        author: author,
        keywords: keywords.tur,
      )
    }

    /* --- İngilizce Özet Sayfası [English Abstract Page] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      english-abstract-page(
        department: department,
        program: program,
        report-type: report-type,
        thesis-title: thesis-title,
        author: author,
        keywords: keywords.eng,
      )
    }
  }

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true), yazının bitimi tek numaralı sayfada ise sayfa sonu ekle ama çift numaralı sayfada ise sayfa sonu ekleme (to: "odd"). Böylece, yazının bittiği sayfa çift sayfa olacak ve "EKLER" bölümü tek numaralı sayfadan başlayacağı garanti altına alındı. Kısaca yazının bittiği sayfadan sonraki sayfanın tek numaralı bir sayfa olmasını garanti altına almak için (to: "odd") parametresi kullanıldı.
  pagebreak(weak: true, to: "odd")

  // Set centered arabic page numbering.
  show: page-numbering-style.with(numbering: PAGE-NUMBERING-ARABIC, number-align: center)

  {
    /* --- TEZİN ANA KISMI [MAIN SECTION OF THESIS] --- */
    // Başlık stili
    show: thesis-main-section-heading-style

    //
    set par(
      justify: true,
      first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true),
      leading: PARAGRAPH-LEADING-SIZE,
      spacing: PARAGRAPH-SPACING-SIZE,
    )

    /* ---- Bölüm 1 [Chapter 1] ---- */
    introduction-page()

    /* ---- Bölüm 2 [Chapter 2] ---- */
    literature-page()

    /* ---- Bölüm 3 [Chapter 3] ---- */
    methodology-page()

    /* ---- Bölüm 4 [Chapter 4] ---- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      findings-page()
    }

    /* ---- Bölüm 5 [Chapter 5] ---- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      discussion-conclusion-and-suggestions-page(
        show-separated-sub-headings: show-separated-sub-headings-in-discussion-conclusion-and-suggestions,
      )
    }
  }

  {
    /* ---- TEZİN ARKA KISMI [BACK SECTION OF THESIS] ---- */
    // Başlık numarlandırmasını 1'den başlat.
    counter(heading).update(1)

    // Başlık stili
    show: thesis-back-section-heading-style

    // Çalışma takvimi
    if (
      report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
    ) {
      work-schedule-page(
        report-type: report-type,
        work-packages: work-packages,
      )
    }

    // Genişletilmiş Türkçe Özet
    if (
      language == LANGUAGES.EN-US
        and (
          report-type == REPORT-TYPES.MASTER-THESIS
            or report-type == REPORT-TYPES.DOCTORAL-THESIS
            or report-type == REPORT-TYPES.TERM-PROJECT
        )
    ) {
      expanded-turkish-abstract-page(
        department: department,
        program: program,
        report-type: report-type,
        thesis-title: thesis-title,
        author: author,
      )
    }

    // Kaynakça [Bibliography]
    bibliography-section-style(
      bibliography(
        "/template/bibliography-sources/references.bib",
        style: "american-psychological-association",
        title: upper(translator(key: language-keys.BIBLIOGRAPHY)),
        full: false,
      ),
    )

    // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true), yazının bitimi tek numaralı sayfada ise sayfa sonu ekle ama çift numaralı sayfada ise sayfa sonu ekleme (to: "odd"). Böylece, yazının bittiği sayfa çift sayfa olacak ve "EKLER" bölümü tek numaralı sayfadan başlayacağı garanti altına alındı. Kısaca yazının bittiği sayfadan sonraki sayfanın tek numaralı bir sayfa olmasını garanti altına almak için (to: "odd") parametresi kullanıldı.
    pagebreak(weak: true, to: "odd")

    // Ekler [Appendices]
    appendices-page()

    // Özgeçmiş [Curriculum Vitae]
    if report-type == REPORT-TYPES.TERM-PROJECT {
      curriculum-vitae-page(
        first-name: author.first-name,
        last-name: author.last-name,
        ..curriculum-vitae-info,
      )
    }
  }

  // Gövdeyi pasif hale getir. [Disable the body.]
  //body
}
