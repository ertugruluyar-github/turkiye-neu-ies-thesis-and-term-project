
#import "/src/constants/drop-down-list-constants.typ": LANGUAGES, REPORT-TYPES
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/thesis-title-text-component.typ": thesis-title-text-component
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component

// Kapak sayfasındaki ortak bilgiler. [Common informations in title page.]
#let title-page-common-info-component(
  language: none,
  department: none,
  program: none,
  report-type: none,
  thesis-title: none,
  author: none,
  advisor: none,
) = {
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

  // Dile göre tez başlığını seç. [Select the thesis title according to the language.]
  let thesis-title = if language == LANGUAGES.TR-TR {
    thesis-title.tur
  } else if language == LANGUAGES.EN-US {
    thesis-title.eng
  }
  // Tez başlığı. [Thesis title.]
  thesis-title-text-component(thesis-title: thesis-title)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.75cm)

  // Yazar bilgilerini ekle. [Add author information.]
  fullname-component(first-name: author.first-name, last-name: author.last-name)
  linebreak()
  orcid-with-prefix-component(orcid: author.orcid)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.5cm)

  // Danışman bilgilerini ekle. [Add advisor information.]
  translator(key: language-keys.ADVISOR)
  linebreak()
  advisor-with-orcid-component(advisor: advisor)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(0.5cm)
}
