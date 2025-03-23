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

    // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
    pagebreak(weak: true)
  }

  if have-abbreviations {
    heading(level: 2, translator(key: language-keys.ABBREVIATIONS))

    include "/template/sections/01-front/abbreviations-text.typ"

    // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
    pagebreak(weak: true)
  }
}
