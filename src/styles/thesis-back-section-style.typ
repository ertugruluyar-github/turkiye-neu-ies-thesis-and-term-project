#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ARABIC
#import "/src/styles/thesis-back-section-heading-style.typ": thesis-back-section-heading-style

#let thesis-back-section-style(content) = {
  // Başlık numarlandırmasını 1'den başlat.
  counter(heading).update(1)

  // Set continued centered arabic page numbering.
  set page(numbering: PAGE-NUMBERING-ARABIC)

  // Başlık stili
  show: thesis-back-section-heading-style

  content
}
