#import "/src/styles/title-page-style.typ": title-page-style
#import "/src/constants/document-settings-constants.typ": MARGIN
#import "/src/constants/language-free-string-constants.typ": STRING-CITY-NAME
#import "/src/constants/date-constants.typ": ONLY-YEAR-DATE-FORMAT
#import "/src/constants/drop-down-list-constants.typ": REPORT-TYPES
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/title-page/single-logo-organization-info-heading-component.typ": (
  single-logo-organization-info-heading-component,
)
#import "/src/components/title-page/double-logo-organization-info-heading-component.typ": (
  double-logo-organization-info-heading-component,
)
#import "/src/components/title-page/title-page-common-info-component.typ": title-page-common-info-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/title-page/thesis-study-funding-organization-component.typ": (
  thesis-study-funding-organization-component,
)

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
  // Başlık sayfası stilini uygula. [Apply the style of the title page.]
  show: title-page-style

  // Tez önerisi ise tek logolu başlığı kullan. [Use a single logo heading for a thesis proposal.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
  ) {
    // Tek logolu başlık. [Single logo heading.]
    single-logo-organization-info-heading-component(language: language)
  }

  // Tez ise çift logolu başlığı kullan. [Use a double logo heading for a thesis.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS
      or report-type == REPORT-TYPES.DOCTORAL-THESIS
      or report-type == REPORT-TYPES.TERM-PROJECT
  ) {
    double-logo-organization-info-heading-component(language: language)
  }

  // Kapak sayfasındaki ortak bilgileri ekle. [Add common informations in title page.]
  title-page-common-info-component(
    language: language,
    department: department,
    program: program,
    report-type: report-type,
    thesis-title: thesis-title,
    author: author,
    advisor: advisor,
  )

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
