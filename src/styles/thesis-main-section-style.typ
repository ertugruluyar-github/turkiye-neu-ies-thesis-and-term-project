#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ARABIC
#import "/src/styles/thesis-main-section-heading-style.typ": thesis-main-section-heading-style

#let thesis-main-section-style(content) = {
  // Set centered arabic page numbering.
  set page(numbering: PAGE-NUMBERING-ARABIC)

  // Sayfa numaralandırmasını 1'den başlat. [Start page numbering from 1.]
  counter(page).update(1)

  // Başlık stili
  show: thesis-main-section-heading-style

  content
}
