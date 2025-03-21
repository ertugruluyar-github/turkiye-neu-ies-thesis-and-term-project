#let equation-outline-entry-style(content) = {
  // Paragraflardaki boşluk ayarları. [Paragraph spacing settings.]
  set par(leading: 1em, spacing: 1em)

  // Satırların içeriğindeki doldurma stili. [Outline entry content's fill style.]
  set outline.entry(fill: repeat(justify: true, gap: 0.1em)[.])

  // Ön ek ("Denklem (1.1))") kısmını kalın yazıdır. [Bold the prefix ("Equation (1.1))").]
  show outline.entry: it => {
    link(
      it.element.location(),
      it.indented(
        text(weight: "bold", it.prefix()),
        it.inner(),
      ),
    )
  }

  content
}
