#import "/src/styles/title-page-style.typ": title-page-style
#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/components/title-page/single-logo-organization-info-heading-component.typ": (
  single-logo-organization-info-heading-component,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/thesis-title-text-component.typ": thesis-title-text-component
#import "/src/components/fullname-component.typ": fullname-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component
#import "/src/components/advisor-with-orcid-component.typ": advisor-with-orcid-component
#import "/src/components/title-page/city-name-with-year-component.typ": city-name-with-year-component

// Tez Önerisi Kapak Sayfası bileşeni. [Thesis Proposal Title Page component.]
#let thesis-proposal-title-page-component(
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

  // Tek logolu başlık. [Single logo heading.]
  single-logo-organization-info-heading-component(language: language)

  // Ana Bilim Dalı bilgisi. [Department information.]
  department

  // Bir miktar boşluk bırak. [Leave some space.]
  v(0.2cm)

  // Bilim Dalı bilgisi. [Program information.]
  program

  // Bir miktar boşluk bırak. [Leave some space.]
  v(1.5cm)

  /// Rapor türü bilgisi. [Report type information.]
  report-type

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.35cm)

  // Dile göre tez başlığını seç. [Select the thesis title according to the language.]
  let thesis-title = if language == LANGUAGES.TR-TR {
    thesis-title.tur
  } else if language == LANGUAGES.EN-US {
    thesis-title.eng
  }
  // Tez başlığı. [Thesis title.]
  thesis-title-text-component(thesis-title: thesis-title)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.35cm)

  // Yazar bilgilerini ekle. [Add author information.]
  fullname-component(first-name: author.first-name, last-name: author.last-name)
  linebreak()
  orcid-with-prefix-component(orcid: author.orcid)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.5cm)

  // Danışman bilgilerini ekle. [Add advisor information.]
  translator(key: language-keys.ADVISOR)
  linebreak()
  advisor-with-orcid-component(advisor: advisor)

  // Bir miktar boşluk bırak. [Leave some space.]
  v(2.4cm)

  // Şehir adı ve yıl bilgisini ekle. [Add city name and year information.]
  city-name-with-year-component(date: date)
}
