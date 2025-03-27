#import "/src/styles/bibliography-section-style.typ": bibliography-section-style
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let bibliography-page() = {
  // Kaynaklar stilini uygula. [Apply bibliography style.]
  bibliography-section-style(
    // Kaynakları ekle. [Add references.]
    bibliography(
      // Kaynakların olduğu .bib dosyasının yolu. [Path to the .bib file with references.]
      "/template/assets/bibliography-sources/references.bib",
      // Kaynakların stilini ayarla. [Set bibliography style.]
      style: "american-psychological-association",
      // Kaynaklar başlığını ekle. [Add refences title.]
      title: upper(translator(key: language-keys.BIBLIOGRAPHY)),
      // Yalnızca atıf yapılan kaynakları göster. [Show only cited references.]
      full: false,
    ),
  )

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
