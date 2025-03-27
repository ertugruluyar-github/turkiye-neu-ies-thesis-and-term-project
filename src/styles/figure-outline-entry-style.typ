#import "/src/constants/separator-constants.typ": FIGURE-OUTLINE-ENTRY-PREFIX-SEPARATOR
#import "/src/styles/outline-entry-fill-style.typ": outline-entry-fill-style

#let figure-outline-entry-style(content) = {
  // Paragraflardaki boşluk ayarları. [Paragraph spacing settings.]
  set par(leading: 1em, spacing: 1em)

  // Satırların içeriğindeki doldurma stili. [Outline entry content's fill style.]
  show: outline-entry-fill-style

  // Ön ek ("Şekil 2.1") kısmını kalın yazıdır ve sonuna bir "." daha koy. [Bold the prefix ("Figure 2.1") and put another "." at the end.]
  show outline.entry: it => {
    link(
      it.element.location(),
      it.indented(
        text(
          weight: "bold",
          it.prefix() + FIGURE-OUTLINE-ENTRY-PREFIX-SEPARATOR,
        ),
        it.inner(),
      ),
    )
  }

  content
}
