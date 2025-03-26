#import "/src/constants/drop-down-list-constants.typ": *
#import "/src/styles/common-document-style.typ": common-document-style
#import "/src/styles/thesis-front-section-style.typ": thesis-front-section-style
#import "/src/styles/thesis-main-section-style.typ": thesis-main-section-style
#import "/src/styles/thesis-back-section-style.typ": thesis-back-section-style
#import "/src/sections/01-front/title-page.typ": title-page
#import "/src/sections/01-front/preface-page.typ": preface-page
#import "/src/sections/01-front/table-of-contents-page.typ": table-of-contents-page
#import "/src/sections/01-front/list-of-table-figures-page.typ": list-of-table-figures-page
#import "/src/sections/01-front/list-of-image-figures-page.typ": list-of-image-figures-page
#import "/src/sections/01-front/list-of-equations-page.typ": list-of-equations-page
#import "/src/sections/01-front/list-of-code-figures-page.typ": list-of-code-figures-page
#import "/src/sections/01-front/thesis-study-originality-report-page.typ": thesis-study-originality-report-page
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
#import "/src/sections/03-back/bibliography-page.typ": bibliography-page
#import "/src/sections/03-back/appendices-page.typ": appendices-page
#import "/src/sections/03-back/curriculum-vitae-page.typ": curriculum-vitae-page
#import "/src/sections/03-back/expanded-turkish-abstract-page.typ": expanded-turkish-abstract-page
#import "/src/core/validation-manager/validation-manager.typ": validation-manager
#import "core/language-manager/language-manager.typ": init-language-manager

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
    first-name: "Student's firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Advisor's firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  second-advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Second Advisor's firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  thesis-study-funding-organization: (
    name: "Name of the Funding Organization Supporting the Thesis Study",
    project-no: "Project No",
  ),
  thesis-originalty: (
    included-page-count: 1,
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
  show-list-of-table-figures: true,
  show-list-of-image-figures: true,
  show-list-of-equation-figures: true,
  show-list-of-code-figures: true,
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
    skills: (
      "Skill 1",
      "Skill 2",
    ),
    work-experiences: (
      (
        start-date: datetime(day: 1, month: 3, year: 2030),
        end-date: datetime(day: 1, month: 6, year: 2033),
        title: "Title/Job",
        organization-name: "Organization Name that you worked",
        place: "Konya",
      ),
      (
        start-date: datetime(day: 1, month: 7, year: 2033),
        end-date: datetime(day: 1, month: 3, year: 2037),
        title: "Title/Job",
        organization-name: "Organization Name that you worked",
        place: "Konya",
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
  /* ---- Doğrulama İşlemlerini Başlat [Initialize Validation Process] ---- */
  validation-manager(
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
    thesis-originalty: thesis-originalty,
    keywords: keywords,
    show-list-of-table-figures: show-list-of-table-figures,
    show-list-of-image-figures: show-list-of-image-figures,
    show-list-of-equation-figures: show-list-of-equation-figures,
    show-list-of-code-figures: show-list-of-code-figures,
    have-symbols: have-symbols,
    have-abbreviations: have-abbreviations,
    show-separated-sub-headings-in-discussion-conclusion-and-suggestions: show-separated-sub-headings-in-discussion-conclusion-and-suggestions,
    work-packages: work-packages,
    curriculum-vitae-info: curriculum-vitae-info,
  )

  /* ---- Dil Yöneticisini Başlat [Initialize the Language Manager] ---- */
  init-language-manager(default-language: language.language-code)

  /* ---- Ortak Döküman Stili [Common Document Style] ---- */
  show: common-document-style.with(
    language: language,
    thesis-title: thesis-title,
    author: author,
    keywords: keywords,
  )

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

  {
    /* ---- TEZİN ÖN KISMI [FRONT SECTION OF THESIS] ---- */

    // Tezin Ön Kısmının Stili [Style of the Front Section of Thesis]
    show: thesis-front-section-style

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

    /* --- Tablo Figürleri Listesi Sayfası [List of Table Figures Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-table-figures
    ) {
      list-of-table-figures-page()
    }

    /* --- Şekil Figürleri Listesi Sayfası [List of Image Figures Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-image-figures
    ) {
      list-of-image-figures-page()
    }

    /* --- Denklem Figürleri Listesi Sayfası [List of Equation Figures Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-equation-figures
    ) {
      list-of-equations-page()
    }

    /* --- Kod Figürleri Listesi Sayfası [List of Code Figures Page] --- */
    if (
      (
        report-type == REPORT-TYPES.MASTER-THESIS
          or report-type == REPORT-TYPES.DOCTORAL-THESIS
          or report-type == REPORT-TYPES.TERM-PROJECT
      )
        and show-list-of-code-figures
    ) {
      list-of-code-figures-page()
    }

    /* --- Tez Çalışması Örijinallik Raporu [Originality Report] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    ) {
      thesis-study-originality-report-page(
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

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)

  {
    /* --- TEZİN ANA KISMI [MAIN SECTION OF THESIS] --- */

    // Tezin Ana Kısmının Stili [Style of Main Section of Thesis]
    show: thesis-main-section-style

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

    // Tezin Arka Kısmının Stili [Style of Back Section of Thesis]
    show: thesis-back-section-style

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
    bibliography-page()

    // Ekler [Appendices]
    appendices-page()

    // Özgeçmiş [Curriculum Vitae]
    if report-type == REPORT-TYPES.TERM-PROJECT {
      curriculum-vitae-page(
        first-name: author.first-name,
        last-name: author.last-name,
        orcid: author.orcid,
        ..curriculum-vitae-info,
      )
    }
  }

  // Gövdeyi pasif hale getir. [Disable the body.]
  //body
}
