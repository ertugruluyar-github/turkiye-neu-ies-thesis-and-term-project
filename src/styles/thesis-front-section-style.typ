#import "/src/constants.typ": PAGE-NUMBERING-ROMAN
#import "/src/styles/page-numbering-style.typ": page-numbering-style
#import "/src/styles/thesis-front-section-heading-style.typ": thesis-front-section-heading-style

#let thesis-front-section-style(content) = {
  // Set centered roman page numbering.
  show: page-numbering-style.with(numbering: PAGE-NUMBERING-ROMAN, number-align: center)

  // Başlık stili
  show: thesis-front-section-heading-style

  content
}
