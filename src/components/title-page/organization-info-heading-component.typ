#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

// Organizasyon bilgisi başlığı. [Organization information heading.]
#let organization-info-heading-component() = {
  // Yazı kalın yap. [Bold the text.]
  set text(weight: "bold")

  // Ülke bilgisini ekle. [Add country information.]
  upper(translator(key: language-keys.THE-REPUPLIC-OF-TURKIYE))

  // Satır sonu ekle. [Add line break.]
  linebreak()

  // Üniversite bilgisini ekle. [Add university information.]
  upper(translator(key: language-keys.UNIVERSITY-NAME-UPPER-CASE))

  // Satır sonu ekle. [Add line break.]
  linebreak()

  // Enstitü bilgisini ekle. [Add institute information.]
  upper(translator(key: language-keys.INSTITUTE-NAME-UPPER-CASE))
}
