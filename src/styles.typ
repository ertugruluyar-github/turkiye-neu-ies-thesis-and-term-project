#import "constants.typ": HEADING-NUMBERING, APPENDICES-HEADING-NUMBERING, APPENDICES-REFERENCE-NUMBERING, STRING-APPENDIX, APPENDIX-PREFIX-SEPERATOR, APPENDICES-SUPPLEMENT, APPENDICES-SUFFIX

// Diğer bölümlerdeki 1. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda var, PDF dökümanı hatlarında var.
#let set-heading-styles-for-front-matter-of-thesis(content) = {
  // 
  show heading.where(level: 1): set heading(numbering: none, outlined: true, bookmarked: true)
  
  // 
  show heading.where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(numbering: none, outlined: false, bookmarked: true)
  
  // 
  show heading.where(level: 1): set align(center)
  
  //
  show heading.where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set align(left)
  
  // 
  show heading.where(level: 4)
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set text(style: "italic")  
  content
}

// Diğer bölümlerdeki 2. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında var.
#let set-heading-styles-for-main-sections-of-thesis(content) = {
  // 
  set heading(numbering: HEADING-NUMBERING, outlined: true, bookmarked: true)
  // 
  show heading.where(level: 4)
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(numbering: none, outlined: true, bookmarked: true)
  // 
  show heading.where(level: 4)
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set text(style: "italic")
  // 
  show heading: set align(left)
  content
}

// 
#let set-heading-styles-for-back-matter-of-thesis(content) = {
  // 
  show heading: set align(left)
  
  //
  show heading.where(level: 1): set heading(numbering: none, outlined: true, bookmarked: true)
  
  //
  show heading.where(level: 2): set heading(numbering: APPENDICES-HEADING-NUMBERING, supplement: APPENDICES-SUPPLEMENT, outlined: true, bookmarked: true)
  
  //
  show ref: it => {
    APPENDICES-SUPPLEMENT + numbering(APPENDICES-REFERENCE-NUMBERING, ..counter(heading).at(it.element.location()))
  }

  //
  show heading.where(level: 3)
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(outlined: false, bookmarked: false)
  
  // 
  show heading.where(level: 4)
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set text(style: "italic")  
  content
}
