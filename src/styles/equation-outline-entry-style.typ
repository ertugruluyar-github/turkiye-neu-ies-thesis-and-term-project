#import "/src/styles/outline-entry-fill-style.typ": outline-entry-fill-style

#let equation-outline-entry-style(content) = {
  // Satırların içeriğindeki doldurma stili. [Outline entry content's fill style.]
  show: outline-entry-fill-style

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
