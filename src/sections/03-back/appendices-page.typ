#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let appendices-page() = [
  // Başlık numarlandırmasını 1'den başlat.
  #counter(heading).update(1)

  #heading(level: 1, upper(translator(key: language-keys.APPENDICES))) <bölüm-ekler>
  #include "/template/sections/03-back/appendices/appendices-text.typ"

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  #pagebreak(weak: true)
]
