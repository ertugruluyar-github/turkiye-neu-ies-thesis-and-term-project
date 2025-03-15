#import "/src/constants/document-settings-constants.typ": *
#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ROMAN, MATH-NUMBERING
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/styles/list-style.typ": list-style
#import "/src/styles/table-style.typ": table-style
#import "/src/styles/figure-style.typ": figure-style
#import "/src/styles/reference-style.typ": reference-style
#import "/src/styles/raw-style.typ": raw-style
#import "/src/styles/footnote-style.typ": footnote-style

#let common-document-style(
  language: none,
  thesis-title: none,
  author: none,
  keywords: none,
  content,
) = {
  set document(
    title: thesis-title.tur.title-case + " (" + thesis-title.eng.title-case + ")",
    author: (author.first-name + " " + upper(author.last-name)),
    keywords: (..keywords.tur, ..keywords.eng),
  )

  set page(
    paper: PAPER,
    header: none,
    footer: none,
    margin: MARGIN,
    number-align: right,
    numbering: PAGE-NUMBERING-ROMAN,
    columns: 1,
  )

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

  set heading(
    numbering: none,
    outlined: true,
    bookmarked: true,
  )

  show heading: set text(size: FONT-SIZE)

  set par(
    justify: true,
    first-line-indent: (amount: PARAGRAPH-FIRST-LINE-INDENT, all: true),
    leading: PARAGRAPH-LEADING-SIZE,
    spacing: PARAGRAPH-SPACING-SIZE,
  )

  set math.equation(
    numbering: MATH-NUMBERING,
    supplement: translator(key: language-keys.MATH-EQUATION-REFERENCE-SUPPLEMENT),
  )

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

  /* ---- Dipnot Stili [Footnote Style] ---- */
  show: footnote-style

  content
}
