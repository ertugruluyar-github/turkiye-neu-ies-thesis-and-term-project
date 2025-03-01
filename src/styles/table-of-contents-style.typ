#let table-of-contents-style(content) = {
  // Paragraflardaki boşluk ayarları. [Paragraph spacing settings.]
  set par(leading: 0.75em, spacing: 1em)

  // Satırlardaki girinti ayarları. [Line indentation settings.]
  set outline(indent: auto)

  // Satırların içeriği. [Outline entry content.]
  set outline.entry(fill: repeat(justify: true, gap: 0.1em)[.])

  // Düzey 1 satırlardaki metni kalın yap. [Set Level 1 outlines' text bold.]
  show outline.entry.where(level: 1): set text(weight: "bold")

  /*
  // Set headings and special appendices numbering
  show outline.entry.where(level: 1).or(outline.entry.where(level: 2)).or(outline.entry.where(level: 3)): it => {
    let cc = if it.element.numbering != none {
      numbering(it.element.numbering, ..counter(heading).at(it.element.location()))
    }

    //let indent = h(1.5em + ((it.level - 2) * 1.5em))
    /*
      box(
        grid(
          columns: (auto, 1fr, auto),
          indent + link(it.element.location())[#cc #h(0.1em) #it.element.body #h(5pt)],
          it.fill,
          box(width: 1.5em, align(right, it.page)),
        ),
      )
    */
    it
  }
  */

  content
}
