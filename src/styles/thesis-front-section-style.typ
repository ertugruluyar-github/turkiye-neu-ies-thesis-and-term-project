#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ROMAN
#import "/src/styles/thesis-front-section-heading-style.typ": thesis-front-section-heading-style

#let thesis-front-section-style(content) = {
  // Set centered roman page numbering.
  set page(numbering: PAGE-NUMBERING-ROMAN)

  // Başlık stili
  show: thesis-front-section-heading-style

  content
}
