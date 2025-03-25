#import "/src/styles/title-page-style.typ": title-page-style
#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/title-page/double-logo-organization-info-heading-component.typ": (
  double-logo-organization-info-heading-component,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/thesis-title-text-component.typ": thesis-title-text-component
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/title-page/thesis-study-funding-organization-component.typ": (
  thesis-study-funding-organization-component,
)
#import "/src/components/title-page/city-name-with-year-component.typ": city-name-with-year-component

// Tez Kapak Sayfası bileşeni. [Thesis Title Page component.]
#let thesis-title-page-component(
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

  // Çift logolu başlık. [Double logo heading.]
  double-logo-organization-info-heading-component(language: language)

  // Ana Bilim Dalı bilgisi. [Department information.]
  align(center, department)

  // Satır sonu ekle. [Add line break.]
  linebreak()

  // Bilim Dalı bilgisi. [Program information.]
  align(center, program)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.25cm)

  /// Rapor türü bilgisi. [Report type information.]
  report-type

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.25cm)

  // Dile göre tez başlığını seç. [Select the thesis title according to the language.]
  let thesis-title = if language == LANGUAGES.TR-TR {
    thesis-title.tur
  } else if language == LANGUAGES.EN-US {
    thesis-title.eng
  }
  // Tez başlığı. [Thesis title.]
  thesis-title-text-component(thesis-title: thesis-title)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.25cm)

  // Yazar bilgilerini ekle. [Add author information.]
  fullname-component(first-name: author.first-name, last-name: author.last-name)
  linebreak()
  orcid-with-prefix-component(orcid: author.orcid)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.25cm)

  // Danışman bilgilerini ekle. [Add advisor information.]
  translator(key: language-keys.ADVISOR)
  linebreak()
  advisor-with-orcid-component(advisor: advisor)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(0.5cm)

  // Rapor türüne ve ikinci danışmanın olup olmamasına göre ikinci danışman bilgilerini ekle. [Add second advisor information according to the report type and whether there is a second advisor or not.]
  if second-advisor != none {
    // İkinci danışman bilgilerini ekle. [Add second advisor information.]
    translator(key: language-keys.SECOND-ADVISOR)
    linebreak()
    advisor-with-orcid-component(advisor: second-advisor)
  } else {
    // Bir miktar boşluk bırak. [Leave some space.]
    v(1.75cm)
  }

  // Bir miktar boşluk bırak. [Leave some space.]
  v(0.75cm)

  // Rapor türüne ve tez çalışmasını destekleyen kuruluş olup olmamasına göre tez çalışmasını destekleyen kuruluş bilgilerini ekle. [Add thesis study funding organization information according to the report type and whether there is a thesis study funding organization or not.]
  if thesis-study-funding-organization != none {
    // Tez çalışmasını destekleyen kuruluş bilgilerini ekle. [Add thesis study funding organization information.]
    thesis-study-funding-organization-component(
      language: language,
      thesis-study-funding-organization: thesis-study-funding-organization,
    )

    // Satır sonu ekle. [Add line break.]
    linebreak()
  } else {
    // Bir miktar boşluk bırak. [Leave some space.]
    v(1.25cm)
  }

  // Şehir adı ve yıl bilgisini ekle. [Add city name and year information.]
  city-name-with-year-component(date: date)
}
