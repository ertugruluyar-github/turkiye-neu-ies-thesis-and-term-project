#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let appendices-page() = [
  // Başlık numarlandırmasını 1'den başlat.
  #counter(heading).update(1)

  #heading(level: 1, upper(translator(key: language-keys.APPENDICES))) <bölüm-ekler>
  #include "/template/sections/03-back/appendices/appendices-text.typ"

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true), yazının bitimi tek numaralı sayfada ise sayfa sonu ekle ama çift numaralı sayfada ise sayfa sonu ekleme (to: "odd"). Böylece, yazının bittiği sayfa çift sayfa olacak ve "EKLER" bölümü tek numaralı sayfadan başlayacağı garanti altına alındı. Kısaca yazının bittiği sayfadan sonraki sayfanın tek numaralı bir sayfa olmasını garanti altına almak için (to: "odd") parametresi kullanıldı.
  #pagebreak(weak: true, to: "odd")
]
