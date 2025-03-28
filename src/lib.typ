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
#import "/src/sections/02-main/literature-review-page.typ": literature-review-page
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
  // Raporun dilini seçiniz. [Select the language of the report.]
  language: LANGUAGES.TR-TR,
  // Ana Bilim Dalı seçiniz. [Select the department.]
  department: DEPARTMENTS.__DEPARTMENT-PLACE-HOLDER,
  // Bilim Dalı seçiniz. [Select the program.]
  program: PROGRAMS.__PROGRAM-PLACE-HOLDER,
  // Raporun türünü seçiniz. [Select the report type.]
  report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL,
  // Tez önerisi ya da tezin teslim edildiği tarih. Varsayılan olarak bugünün tarihidir. Elle bir tarih girmek için "datetime(day: 20, month: 3, year: 2025)" yapınız. [The date of the thesis proposal or the date of the thesis delivery. The default is today's date. To enter a date manually, do "datetime(day: 20, month: 3, year: 2025)".]
  date: datetime.today(),
  // Tezinizin Türkçe ve İngilizce başlığı (başlık ve hepsi büyük harf biçiminde). [The Turkish and English title of the thesis (titlecase and uppercase).]
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
  // Öğrencinin adı, soyadı ve ORCID numarası. [The student's name, lastname and ORCID number.]
  author: (
    first-name: "Student's Firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  // Danışmanın adı, soyadı ve ORCID numarası. [The advisor's name, lastname and ORCID number.]
  advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Advisor's Firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  // İkinci danışmanın adı, soyadı ve ORCID numarası. İkinci danışman yoksa "second-advisor: none" yapınız. [The second advisor's name, lastname and ORCID number. If there is no second advisor, do "second-advisor: none".]
  second-advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.__ACADEMIC-MEMBER-TITLE-PLACE-HOLDER,
    first-name: "Second Advisor's Firstname",
    last-name: "LASTNAME",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  // Tez çalışması destekleyen kuruluşun adı ve projenin numarası. Tez çalışması destekleyen herhangi bir kuruluş yoksa "thesis-study-funding-organization: none" yapınız. [The name and project number of the organization supporting the thesis study. If there is no organization supporting the thesis study, do "thesis-study-funding-organization: none".]
  thesis-study-funding-organization: (
    name: "Name of the Funding Organization Supporting the Thesis Study",
    project-no: "Project No",
  ),
  // Tez çalışmasının orijinallik bilgisi. Örneğin Turnitin yazılımında tezin 78 sayfası taratıldı ve benzerlik oranı %17 çıktıysa "included-page-count: 78" ve "similarity-score: 17" şeklindedir. [The originality information of the thesis study. For example, if the thesis has 78 pages scanned in the Turnitin software and the similarity score is %17, it is "included-page-count: 78" and "similarity-score: 17".]
  thesis-originalty: (
    included-page-count: 1,
    similarity-score: 0,
  ),
  // Tez çalışmasının Türkçe ve İngilizce anahtar kelimeleri. Anahtar kelimelerin ilk harfi büyük diğer harfleri küçük olmalıdır. En az 3 adet ve en fazla 5 adet olmalıdır. [The Turkish and English keywords of the thesis study. The first letter of the keywords must be uppercase and the other letters must be lowercase. There must be at least 3 and at most 5 keywords.]
  keywords: (
    // Tez çalışmasının Türkçe anahtar kelimeleri. [The Turkish keywords of the thesis study.]
    tur: (
      "Anahtar kelime 1",
      "Anahtar kelime 2",
      "Anahtar kelime 3",
      "Anahtar kelime 4",
      "Anahtar kelime 5",
    ),
    // Tez çalışmasının İngilizce anahtar kelimeleri. [The English keywords of the thesis study.]
    eng: (
      "Keyword 1",
      "Keyword 2",
      "Keyword 3",
      "Keyword 4",
      "Keyword 5",
    ),
  ),
  // Tablo figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-table-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-table-figures: false" yapınız. [To show the list of table figures on the page where the list is located, do "show-list-of-table-figures: true". To not show the list, do "show-list-of-table-figures: false".]
  show-list-of-table-figures: true,
  // Şekil figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-image-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-image-figures: false" yapınız. [To show the list of image figures on the page where the list is located, do "show-list-of-image-figures: true". To not show the list, do "show-list-of-image-figures: false".]
  show-list-of-image-figures: true,
  // Matematiksel Denklemler listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-equations: true" yapınız. Yer almasını istemiyorsanız "show-list-of-equations: false" yapınız. [To show the list of equations on the page where the list is located, do "show-list-of-equations: true". To not show the list, do "show-list-of-equations: false".]
  show-list-of-equations: true,
  // Kod figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-code-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-code-figures: false" yapınız. [To show the list of code figures on the page where the list is located, do "show-list-of-code-figures: true". To not show the list, do "show-list-of-code-figures: false".]
  show-list-of-code-figures: true,
  // Tez çalışmasında simgeler kullandıysanız "Simgeler" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir. [To include the content of the "Symbols" heading in the thesis, do "have-symbols: true". However, if the thesis proposal is "true" or "false", the content of the "Symbols and Abbreviations" heading will not be included in the thesis.]
  have-symbols: true,
  // Tez çalışmasında kısaltmalar kullandıysanız "Kısaltmalar" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir. [To include the content of the "Abbreviations" heading in the thesis, do "have-abbreviations: true". However, if the thesis proposal is "true" or "false", the content of the "Symbols and Abbreviations" heading will not be included in the thesis.]
  have-abbreviations: true,
  // Tartışma, Sonuç ve Öneriler bölümünü alt başlıklara ayırarak yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: true", alt başlıklar olmadan ana başlık altında yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: false" yapınız. [To write the Discussion, Conclusion and Suggestions section in subheadings, do "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: true". To write the section in the main heading without subheadings, do "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: false".]
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: true,
  // Tez Önerisinde yer alan "Çalışma Takvimi" sayfasındaki "Çalışma Paketleri" kısmını doldurmak için her bir iş paketinizin açıklamasını ve hangi aylarda yapılacağını belirtiniz. Yüksek Lisans Tez Önerisi ise 12 aylık bir süre, Doktora Tez Önerisi ise 16 aylık bir süre için doldurulmalıdır. Yalnızca "report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL" ya da report-type: REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL" olduğunda çıktıda gözükecektir. [To fill in the "Work Packages" section of the "Work Schedule" page of the thesis proposal, specify the description of each work package and when it will be done. The Master's thesis proposal is for 12 months and the doctoral thesis proposal is for 16 months. It will only appear in the output when report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type: REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL.]
  work-packages: (
    (
      // İş paketinin açıklaması. [The description of the work package.]
      description: "Description 1",
      // İş paketinin yapılacağı aylar. [The months when the work package will be done.]
      months: (1, 2),
    ),
    (
      // İş paketinin açıklaması. [The description of the work package.]
      description: "Description 2",
      // İş paketinin yapılacağı aylar. [The months when the work package will be done.]
      months: (2, 3, 4, 5),
    ),
    (
      // İş paketinin açıklaması. [The description of the work package.]
      description: "Description 3",
      // İş paketinin yapılacağı aylar. [The months when the work package will be done.]
      months: (5, 6, 7),
    ),
    (
      // İş paketinin açıklaması. [The description of the work package.]
      description: "Description 4",
      // İş paketinin yapılacağı aylar. [The months when the work package will be done.]
      months: (7, 8, 9),
    ),
    (
      // İş paketinin açıklaması. [The description of the work package.]
      description: "Description 5",
      // İş paketinin yapılacağı aylar. [The months when the work package will be done.]
      months: (9, 10, 11, 12),
    ),
  ),
  // Dönem Projesinin sonunda yer alan "Öz Geçmiş" sayfasında yer alan bilgilerdir. Yalnızca "report-type: REPORT-TYPES.TERM-PROJECT" olduğunda gözükecektir, diğer durumlarda doldurulmasına gerek yoktur. [Information in the "Curriculum Vitae" page at the end of the term project. It will only appear when report-type: REPORT-TYPES.TERM-PROJECT, otherwise it does not need to be filled.]
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
    // İş deneyimlerinizi geçmişten günümüze doğru sırayla giriniz. [Enter your work experiences in order from the past to the present.]
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
    // Hakkınızda bilgi alabilecekleri önerebileceğiniz şahısların bilgilerini giriniz. [Enter the information of the people who can provide information about you.]
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
    show-list-of-equations: show-list-of-equations,
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

    /* --- Ön Söz Sayfası [Preface Page] --- */
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
        and show-list-of-equations
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

    /* --- Tez Çalışması Örijinallik Raporu Sayfası [Originality Report Page] --- */
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

    /* --- Bilimsel Etik Beyannamesi Sayfası [Scientific Ethics Declaration Page] --- */
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

    /* --- Simgeler ve Kısaltmalar Sayfası [Symbols and Abbreviations Page] --- */
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

    /* ---- Bölüm 1: Giriş [Chapter 1: Introduction] ---- */
    introduction-page()

    /* ---- Bölüm 2: Alan Yazın (İlgi̇li̇ Araştırmalar) [Chapter 2: Literature Review] ---- */
    literature-review-page()

    /* ---- Bölüm 3: Yöntem [Chapter 3: Methodology] ---- */
    methodology-page()

    /* ---- Bölüm 4: Bulgular [Chapter 4: Findings] ---- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS
        or report-type == REPORT-TYPES.DOCTORAL-THESIS
        or report-type == REPORT-TYPES.TERM-PROJECT
    ) {
      findings-page()
    }

    /* ---- Bölüm 5: Tartışma, Sonuç ve Öneriler [Chapter 5: Discussion, Conclusion and Suggestions] ---- */
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

    /* --- Çalışma Takvimi Sayfası [Work Schedule Page] --- */
    if (
      report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
    ) {
      work-schedule-page(
        report-type: report-type,
        work-packages: work-packages,
      )
    }

    /* --- Genişletilmiş Türkçe Özet Sayfası [Expanded Turkish Abstract Page] --- */
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

    /* --- Kaynaklar Sayfası [References Page]  --- */
    bibliography-page()

    /* --- Ekler Sayfası [Appendices Page]  --- */
    appendices-page()

    /* --- Öz Geçmiş Sayfası [Curriculum Vitae Page]  --- */
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
