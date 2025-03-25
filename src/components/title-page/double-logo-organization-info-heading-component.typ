#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/constants/path-constants.typ": (
  UNIVERSITY-LOGO-PATH,
  INSTITUTE-LOGO-PATH,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

// Çift logolu başlık. [Double logo heading.]
#let double-logo-organization-info-heading-component(
  language: none,
) = {
  // Dile göre üniversite logusunu seç. [Select the university logo according to the language.]
  let university-logo-path = if language == LANGUAGES.TR-TR {
    UNIVERSITY-LOGO-PATH.TR-TR
  } else if language == LANGUAGES.EN-US {
    UNIVERSITY-LOGO-PATH.EN-US
  }

  // Dile göre enstitü logusunu seç. [Select the institute logo according to the language.]
  let institute-logo-path = if language == LANGUAGES.TR-TR {
    INSTITUTE-LOGO-PATH.TR-TR
  } else if language == LANGUAGES.EN-US {
    INSTITUTE-LOGO-PATH.EN-US
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
