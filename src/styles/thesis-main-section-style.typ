#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ARABIC
#import "/src/styles/page-numbering-style.typ": page-numbering-style
#import "/src/styles/thesis-main-section-heading-style.typ": thesis-main-section-heading-style

#let thesis-main-section-style(content) = {
  // Set centered arabic page numbering.
  show: page-numbering-style.with(numbering: PAGE-NUMBERING-ARABIC, number-align: center)

  // Başlık stili
  show: thesis-main-section-heading-style

  content
}
