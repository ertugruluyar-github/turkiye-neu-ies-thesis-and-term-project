#import "constants.typ": HEADING-NUMBERING
#import "modules/custom-functions.typ": _huge, _large, _Large

// Diğer bölümlerdeki 1. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda var, PDF dökümanı hatlarında var.
#let set-heading1-style-for-other-sections(content) = {    
  show heading.where(level: 1): it => {
    set align(center)
    it
  }
  content
}

// Diğer bölümlerdeki 2. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında var.
#let set-heading2-style-for-other-sections(content) = {    
  show heading.where(level: 2): it => {
    set align(left)
    it
  }
  content
}

// Diğer bölümlerdeki 2. düzey başlık, ortalı, numaralandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında var.
#let set-heading-styles-for-main-sections(content) = {    
    show heading: it => {
      if it.level == 4 {
        set text(style: "italic")
      }
      set align(left)
      it
    }
    content
}

// 
#let set-heading4-style-for-main-sections(content) = {    
    show heading.where(level: 4): it => {
      set text(style: "italic")
      set align(left)
      it
    }
    content
}

#let set-heading1-style-for-bibliography-and-later(content) = {
  show heading.where(level: 1): it => {
    set align(left)
    it
  }
  content
}

#let set-heading2-style-for-bibliography-and-later(content) = {   
  show heading.where(level: 2): it => {
    set align(left)
    it
  }
  content
}
