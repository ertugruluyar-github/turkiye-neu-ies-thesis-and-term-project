#import "/src/constants.typ": (
  FIGURE-NUMBERING,
  FIGURE-CAPTION-SEPARATOR,
  FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT,
  FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT,
  ALTERNATE-FONT-SIZE,
)
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let figure-style(content) = {
  // Tablo figürünün stili. [Table Figure Style]
  show figure.where(kind: table): set figure(
    supplement: translator(key: language-keys.TABLE-FIGURE-REFERENCE-SUPPLEMENT),
    placement: none,
    gap: 0.5em,
  )

  // Tablo figürünün başlık stili. [Table Figure Caption Style]
  show figure.where(kind: table): set figure.caption(
    position: top,
    separator: FIGURE-CAPTION-SEPARATOR,
  )

  // Görsel figürünün stili. [Image Figure Style]
  show figure.where(kind: image): set figure(
    supplement: translator(key: language-keys.IMAGE-FIGURE-REFERENCE-SUPPLEMENT),
    placement: none,
    gap: 0.5em,
  )

  // Görsel figürünün başlık stili. [Image Figure Caption Style]
  show figure.where(kind: image): set figure.caption(
    position: bottom,
    separator: FIGURE-CAPTION-SEPARATOR,
  )

  // Figür başlıklarının stili. [Figure Caption Style]
  show figure.caption: it => {
    set text(size: ALTERNATE-FONT-SIZE)
    (
      text(
        weight: FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT,
        it.supplement + " " + context it.counter.display(it.numbering) + it.separator,
      )
        + text(weight: FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT, it.body)
    )
  }

  // TODO: Tablo figürlerinin bölünüp bölünmeyeceğini ayarla.
  // Tabloyu bölünebilir yapma. [Make table breakable.]
  //show figure.where(kind: table): set block(breakable: true)

  // Figürlerin üstündeki ve altındaki boşlukları ayarlama. [Set spacing above and below figures.]
  show figure: set block(above: 1.5em, below: 0.5em)

  // Figürlerin numaralandırma stilini ayarlama. [Set numbering style of figures.]
  set figure(
    numbering: n => numbering(FIGURE-NUMBERING, counter(heading).get().first(), n),
    gap: 1em,
  )

  content
}
