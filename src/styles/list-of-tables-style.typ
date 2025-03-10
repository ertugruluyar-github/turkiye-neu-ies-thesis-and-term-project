#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let list-of-tables-style(content) = {
  // Paragraflardaki boşluk ayarları. [Paragraph spacing settings.]
  set par(leading: 1em, spacing: 1em)

  // Satırlardaki girinti ayarları. [Line indentation settings.]
  set outline(
    depth: none,
    indent: auto,
    target: figure.where(kind: table),
    title: upper(translator(key: language-keys.LIST-OF-TABLES)),
  )

  // Satırların içeriğindeki doldurma stili. [Outline entry content's fill style.]
  set outline.entry(fill: repeat(justify: true, gap: 0.1em)[.])

  // TODO: "Table 2.1" kısmını kalın yazıdır. Şekiller listesi içinde aynı şekilde.

  content
}
