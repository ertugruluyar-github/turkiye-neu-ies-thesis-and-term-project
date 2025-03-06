#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let symbols-and-abbreviations-page(
  have-symbols: true,
  have-abbreviations: true,
) = {
  heading(level: 1, upper(translator(key: language-keys.SYMBOLS-AND-ABBREVIATIONS)))
  if have-symbols {
    heading(level: 2, translator(key: language-keys.SYMBOLS))

    include "/template/sections/01-front/symbols-text.typ"

    // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
    pagebreak(weak: true)
  }

  if have-abbreviations {
    heading(level: 2, translator(key: language-keys.ABBREVIATIONS))

    include "/template/sections/01-front/abbreviations-text.typ"

    // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
    pagebreak(weak: true)
  }
}
