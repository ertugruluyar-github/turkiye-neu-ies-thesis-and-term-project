#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let discussion-conclusion-and-suggestions-page(
  show-separated-sub-headings: true,
) = [
  #heading(
    level: 1,
    upper(translator(key: language-keys.DISCUSSION-CONCLUSION-AND-SUGGESTIONS)),
  ) <bölüm-tartışma-sonuç-ve-öneriler>
  #include "/template/sections/02-main/05-discussion-conclusion-and-suggestions/discussion-conclusion-and-suggestions-text.typ"

  #if show-separated-sub-headings {
    [#heading(level: 2, translator(key: language-keys.DISCUSSION)) <başlık-tartışma>
      #include "/template/sections/02-main/05-discussion-conclusion-and-suggestions/discussion-text.typ"]

    [#heading(
        level: 2,
        translator(key: language-keys.CONCLUSION),
      ) <başlık-sonuç>
      #include "/template/sections/02-main/05-discussion-conclusion-and-suggestions/conclusion-text.typ"]

    [#heading(
        level: 2,
        translator(key: language-keys.SUGGESTIONS),
      ) <başlık-öneriler>
      #include "/template/sections/02-main/05-discussion-conclusion-and-suggestions/suggestions-text.typ"]
  }

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true), yazının bitimi tek numaralı sayfada ise sayfa sonu ekle ama çift numaralı sayfada ise sayfa sonu ekleme (to: "odd"). Böylece, yazının bittiği sayfa çift sayfa olacak ve "EKLER" bölümü tek numaralı sayfadan başlayacağı garanti altına alındı. Kısaca yazının bittiği sayfadan sonraki sayfanın tek numaralı bir sayfa olmasını garanti altına almak için (to: "odd") parametresi kullanıldı.
  #pagebreak(weak: true, to: "odd")
]
