#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let findings-page() = [
  #heading(level: 1, upper(translator(key: language-keys.FINDINGS))) <bölüm-bulgular>
  #include "/template/sections/02-main/04-findings/findings-text.typ"

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  #pagebreak(weak: true)
]
