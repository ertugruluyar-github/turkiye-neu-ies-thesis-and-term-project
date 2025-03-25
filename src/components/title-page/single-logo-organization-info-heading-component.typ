#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/constants/path-constants.typ": INSTITUTE-LOGO-PATH
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

// Tek logolu başlık. [Single logo heading.]
#let single-logo-organization-info-heading-component(
  language: none,
) = {
  // Dile göre enstitü logusunu seç. [Select the institute logo according to the language.]
  let institute-logo-path = if language == LANGUAGES.TR-TR {
    INSTITUTE-LOGO-PATH.TR-TR
  } else if language == LANGUAGES.EN-US {
    INSTITUTE-LOGO-PATH.EN-US
  }

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
