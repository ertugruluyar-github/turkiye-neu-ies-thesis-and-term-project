#import "/src/constants/document-settings-constants.typ": *
#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ROMAN, MATH-NUMBERING
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/styles/math-equation-style.typ": math-equation-style
#import "/src/styles/list-style.typ": list-style
#import "/src/styles/table-style.typ": table-style
#import "/src/styles/figure-style.typ": figure-style
#import "/src/styles/reference-style.typ": reference-style
#import "/src/styles/raw-style.typ": raw-style
#import "/src/styles/quotation-style.typ": quotation-style
#import "/src/styles/footnote-style.typ": footnote-style

// Dökümandaki ortak stil ayarları. [Common document style settings.]
#let common-document-style(
  language: none,
  thesis-title: none,
  author: none,
  keywords: none,
  content,
) = {
  // Döküman üst verisini ayarla. [Set document metadata.]
  set document(
    title: thesis-title.tur.title-case + " (" + thesis-title.eng.title-case + ")",
    author: (author.first-name + " " + upper(author.last-name)),
    keywords: (..keywords.tur, ..keywords.eng),
  )

  // Döküman düzeni ayarlarını ayarla. [Set document layout settings.]
  set page(
    paper: PAPER,
    header: auto,
    footer: auto,
    margin: MARGIN,
    number-align: center + bottom,
    numbering: PAGE-NUMBERING-ROMAN,
    columns: 1,
  )

  // Yazı ayarlarını ayarla. [Set text settings.]
  set text(
    font: FONT-NAME,
    size: FONT-SIZE,
    lang: language.language-code,
    region: language.region-code,
    ligatures: false,
    hyphenate: false,
    style: "normal",
    weight: DEFAULT-TEXT-FONT-WEIGHT,
  )

  // Başlık ayarlarını ayarla. [Set heading settings.]
  set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )

  // Başlıkların yazı büyüklüğünü ayarla. [Set heading font size.]
  show heading: set text(size: FONT-SIZE)

  // Paragraf ayarlarını ayarla. [Set paragraph settings.]
  set par(
    justify: true,
    first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true),
    // TODO: Paragrafdaki satırlar arası boşluk olayını netleştir. [TODO: Clarify the paragraph line spacing issue.] https://practicaltypography.com/line-spacing.html
    leading: PARAGRAPH-LEADING-SIZE,
    // TODO: Paragraflar arası boşluk olayını netleştir. [TODO: Clarify the paragraph spacing issue.] https://practicaltypography.com/space-between-paragraphs.html
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  /* ---- Matematiksel Denklem Stili [Math Equation Style] ---- */
  show: math-equation-style

  /* ---- Liste Stili [List Style] ---- */
  show: list-style

  /* ---- Tablo Stili [Table Style] ---- */
  show: table-style

  /* ---- Figür Stili [Figure Style] ---- */
  show: figure-style

  /* ---- Atıf Stili [Reference Style] ---- */
  show: reference-style

  /* ---- Ham/Kod Stili [Raw/Code Style] ---- */
  show: raw-style

  /* ---- Alıntı Stili [Quotation Style] ---- */
  show: quotation-style

  /* ---- Dipnot Stili [Footnote Style] ---- */
  show: footnote-style

  content
}
