#import "/src/constants.typ": (
  HEADING-NUMBERING,
  APPENDIX-PREFIX-SEPERATOR,
  APPENDIX-HEADING-SUFFIX-SEPARATOR,
  APPENDIX-REFERENCE-SUFFIX-SEPARATOR,
  ALTERNATE-FONT-SIZE,
  PARAGRAPH-FIRST-LINE-INDENT,
  PARAGRAPH-LEADING-SIZE,
  PARAGRAPH-SPACING-SIZE,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/styles/heading-spacing-style.typ": heading-spacing-style

#let set-styles-for-front-section-of-thesis(content) = {
  // 1. düzey başlıklar ortaya hizalandı. [1st level headings are aligned center.]
  show heading.where(level: 1): set align(center)

  // 2. düzey başlıklar sola hizalandı. [2nd level headings are aligned left.]
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set align(left)

  // 1. düzey başlıklarda numaralandırma yok, İçindekiler tablosunda var, PDF dökümanı hatlarında var. [1st level headings are numbered, listed in the table of contents and appear in the PDF document.]
  show heading.where(level: 1): set heading(numbering: none, outlined: true, bookmarked: true)

  // 2. düzey başlıklarda numaralandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında var. [2nd level headings are numbered, listed in the table of contents and appear in the PDF document.]
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set heading(numbering: none, outlined: false, bookmarked: true)

  // 4, 5 ve 6. düzey başlıklar italik yapıldı. [4th, 5th and 6th level headings are italicized.]
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  // Başlıklardan önce ve sonra olan boşluk miktarı ayarlandı. [Set the amount of space before and after headings.]
  show: heading-spacing-style

  content
}

#let set-styles-for-main-section-of-thesis(content) = {
  // Başlıklar sola hizalandı. [Headings are aligned left.]
  show heading: set align(left)

  // 1, 2 ve 3. düzey başlıklarda numaralandırma var ve numaralandırma biçimi ayarlandı, İçindekiler tablosunda var, PDF dökümanı hatlarında var. [1, 2 and 3 level headings are numbered, listed in the table of contents and appear in the PDF document.]
  show heading.where(level: 1).or(heading.where(level: 2)).or(heading.where(level: 3)): set heading(
    numbering: HEADING-NUMBERING,
    outlined: true,
    bookmarked: true,
  )

  // 4, 5 ve 6. düzey başlıklarda numaralandırma yok, İçindekiler tablosunda var, PDF dökümanı hatlarında var. [4, 5 and 6 level headings are numbered, listed in the table of contents and appear in the PDF document.]
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )

  // 4, 5 ve 6. düzey başlıklar italik yapıldı. [4, 5 and 6 level headings are italicized.]
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  // Başlıklardan önce ve sonra olan boşluk miktarı ayarlandı. [Set the amount of space before and after headings.]
  show: heading-spacing-style

  // Her numaralandırmaya sahip 1. düzey başlık için "Bölüm X" ön başlığını ekle. [For each numbered 1st level heading, add the prefix heading "Bölüm X".]
  show heading.where(level: 1): it => {
    if it.numbering != none {
      // Figür sayaçlarını sıfırla. [Reset figure counters.]
      counter(figure.where(kind: image)).update(0)
      counter(figure.where(kind: table)).update(0)
      counter(figure.where(kind: raw)).update(0)

      align(center)[
        #let chapter-heading-prefix = [
          #set heading(level: 1, numbering: HEADING-NUMBERING, outlined: false, bookmarked: false)
          // Sondaki noktayı kaldır. [Remove the last dot.]
          #upper(translator(key: language-keys.CHAPTER)) #counter(heading).get().first()
        ]
        #chapter-heading-prefix \
        // 1.5 satır aralığı (1em karakterin kendisi + 0.5em) ve paragraflar arası boşluk miktarı kadar boşluk eklendi.
        #v(0.5em + PARAGRAPH-SPACING-SIZE)
      ]
    }
    it
  }

  // Tezin ana bölümündeki başlıklara yapılan atıfların stilini ayarla. [Set the style of references to headings in the main section of the thesis.]
  set ref(
    supplement: it => {
      if it.func() == heading {
        if it.level == 1 {
          translator(key: language-keys.CHAPTER-REFERENCE-SUPPLEMENT)
        } else {
          translator(key: language-keys.HEADING-REFERENCE-SUPPLEMENT)
        }
      } else {
        it.supplement
      }
    },
  )

  content
}

#let set-styles-for-back-section-of-thesis(content) = {
  //
  let APPENDIX-HEADING-NUMBERING(..nums) = (
    translator(key: language-keys.APPENDIX)
      + APPENDIX-PREFIX-SEPERATOR
      + nums.pos().slice(1).map(str).join(".")
      + APPENDIX-HEADING-SUFFIX-SEPARATOR
  )

  //
  let APPENDIX-REFERENCE-NUMBERING(..nums) = nums.pos().slice(1).map(str).join(".")

  // Başlıklar sola hizalandı. [Headings are aligned left.]
  show heading: set align(left)

  // 1. düzey başlıklarda numaralandırma yok, özel ön ek var, İçindekiler tablosunda var, PDF dökümanı hatlarında var. [1st level headings are numbered, has special prefix, listed in the table of contents and appear in the PDF document.]
  show heading.where(level: 1): set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
    supplement: translator(key: language-keys.CHAPTER-REFERENCE-SUPPLEMENT),
  )

  // 2. düzey başlıklarda özel numaralandırma var, özel ön ek var, İçindekiler tablosunda var, PDF dökümanı hatlarında var. [2nd level headings has special numbering, has special prefix, listed in the table of contents and appear in the PDF document.]
  show heading.where(level: 2).or(heading.where(level: 3)): set heading(
    numbering: APPENDIX-HEADING-NUMBERING,
    outlined: true,
    bookmarked: true,
    supplement: translator(key: language-keys.APPENDIX-REFERENCE-SUPPLEMENT),
  )

  // 4, 5 ve 6. düzey başlıklarda numaranlandırma yok, İçindekiler tablosunda yok, PDF dökümanı hatlarında yok. [4th, 5th and 6th level headings are not numbered, not listed in the table of contents and do not appear in the PDF document.]
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set heading(
    numbering: none,
    outlined: false,
    bookmarked: false,
    supplement: translator(key: language-keys.HEADING-REFERENCE-SUPPLEMENT),
  )

  // 4, 5 ve 6. düzey başlıklar italik yapıldı. [4th, 5th and 6th level headings are italicized.]
  show heading.where(level: 4).or(heading.where(level: 5)).or(heading.where(level: 6)): set text(style: "italic")

  // Başlıklardan önce ve sonra olan boşluk miktarı ayarlandı. [Set the amount of space before and after headings.]
  show: heading-spacing-style

  // Tezin arka bölümündeki başlıklara yapılan atıfların stilini ayarla. [Set the style of references to headings in the back section of the thesis.]
  show ref: it => {
    if it.element != none and it.element.func() == heading {
      if it.element.level == 2 or it.element.level == 3 {
        (
          link(
            it.element.location(),
            it.element.supplement
              + APPENDIX-PREFIX-SEPERATOR
              + numbering(APPENDIX-REFERENCE-NUMBERING, ..counter(heading).at(it.element.location())),
          )
        )
      } else {
        link(it.element.location(), it.element.supplement + APPENDIX-REFERENCE-SUFFIX-SEPARATOR + it.element.body)
      }
    } else {
      it
    }
  }

  content
}
