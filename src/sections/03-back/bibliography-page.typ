#import "/src/styles/bibliography-section-style.typ": bibliography-section-style
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let bibliography-page() = {
  bibliography-section-style(
    bibliography(
      "/template/assets/bibliography-sources/references.bib",
      style: "american-psychological-association",
      title: upper(translator(key: language-keys.BIBLIOGRAPHY)),
      full: false,
    ),
  )

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  pagebreak(weak: true)
}
