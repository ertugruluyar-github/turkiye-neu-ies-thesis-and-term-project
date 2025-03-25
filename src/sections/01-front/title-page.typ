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

// Kapak sayfası. [Title page.]
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

  // Dile göre enstitü logusunu seç. [Select the institute logo according to the language.]
  let institute-logo-path = if language == LANGUAGES.TR-TR {
    INSTITUTE-LOGO-PATH.TR-TR
  } else if language == LANGUAGES.EN-US {
    INSTITUTE-LOGO-PATH.EN-US
  }

  // Tez önerisi ise tek logolu başlığı kullan. [Use a single logo heading for a thesis proposal.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
  ) {
    // Tek logolu başlık. [Single logo heading.]
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

    // Bir miktar boşluk bırak. [Leave some space.]
    v(1cm)
  }

  // Tez ise çift logolu başlığı kullan. [Use a double logo heading for a thesis.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS
      or report-type == REPORT-TYPES.DOCTORAL-THESIS
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    // Dile göre üniversite logusunu seç. [Select the university logo according to the language.]
    let university-logo-path = if language == LANGUAGES.TR-TR {
      UNIVERSITY-LOGO-PATH.TR-TR
    } else if language == LANGUAGES.EN-US {
      UNIVERSITY-LOGO-PATH.EN-US
    }

    // Çift logolu başlık. [Double logo heading.]
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

    // Bir miktar boşluk bırak. [Leave some space.]
    v(3.5cm)
  }

  // Ana Bilim Dalı bilgisi. [Department information.]
  align(center, department)

  // Bilim Dalı bilgisi. [Program information.]
  align(center, program)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1cm)

  /// Rapor türü bilgisi. [Report type information.]
  report-type

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.75cm)

  // Tez başlığı. [Thesis title.]
  text(weight: "bold")[
    // Dile göre tez başlığını seç. [Select the thesis title according to the language.]
    #let thesis-title = if language == LANGUAGES.TR-TR {
      thesis-title.tur
    } else if language == LANGUAGES.EN-US {
      thesis-title.eng
    }

    // Tamamı büyük harfle tez başlığı bilgisi. [Uppercase thesis title information.]
    #upper(thesis-title.upper-case)
  ]

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.75cm)

  // Yazar bilgilerini ekle. [Add author information.]
  fullname-component(first-name: author.first-name, last-name: author.last-name)
  linebreak()
  orcid-with-prefix-component(orcid: author.orcid)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.25cm)
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    // Bir miktar boşluk bırak. [Leave some space.]
    v(1.75cm)
  }

  // Danışman bilgilerini ekle. [Add advisor information.]
  translator(key: language-keys.ADVISOR)
  linebreak()
  advisor-with-orcid-component(advisor: advisor)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(0.5cm)

  // Rapor türüne ve ikinci danışmanın olup olmamasına göre ikinci danışman bilgilerini ekle. [Add second advisor information according to the report type and whether there is a second advisor or not.]
  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    )
      and second-advisor != none
  ) {
    // İkinci danışman bilgilerini ekle. [Add second advisor information.]
    translator(key: language-keys.SECOND-ADVISOR)
    linebreak()
    advisor-with-orcid-component(advisor: second-advisor)

    // Bir miktar boşluk bırak. [Leave some space.]
    v(0.75cm)
  } else {
    // Bir miktar boşluk bırak. [Leave some space.]
    v(1.5cm)
  }

  // Rapor türüne ve tez çalışmasını destekleyen kuruluş olup olmamasına göre tez çalışmasını destekleyen kuruluş bilgilerini ekle. [Add thesis study funding organization information according to the report type and whether there is a thesis study funding organization or not.]
  if (
    (
      report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
    )
      and thesis-study-funding-organization != none
  ) {
    // Tez çalışmasını destekleyen kuruluş bilgilerini ekle. [Add thesis study funding organization information.]
    thesis-study-funding-organization-component(
      language: language,
      thesis-study-funding-organization: thesis-study-funding-organization,
    )
    // Bir miktar boşluk bırak. [Leave some space.]
    v(0.5cm)
  } else {
    // Bir miktar boşluk bırak. [Leave some space.]
    v(1cm)
  }

  // Şehir adı ve yıl bilgisini ekle. [Add city name and year information.]
  [#STRING-CITY-NAME - #date.display(ONLY-YEAR-DATE-FORMAT)]

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
