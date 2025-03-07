#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let findings-page() = [
  #heading(level: 1, upper(translator(key: language-keys.FINDINGS))) <bölüm-bulgular>
  #include "/template/sections/02-main/04-findings/findings-text.typ"

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  #pagebreak(weak: true)
]
