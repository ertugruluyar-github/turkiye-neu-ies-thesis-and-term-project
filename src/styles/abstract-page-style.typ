#import "/src/constants/document-settings-constants.typ": ABSTRACT-TEXT-FONT-SIZE

#let abstract-page-style(content) = {
  // Özet metni normal yazı büyüklüğünden daha küçük olacak şekilde ayarlandı. [The abstract text is set smaller than the normal font size.]
  set text(size: ABSTRACT-TEXT-FONT-SIZE)

  // Paragraf boşlukları. [Paragraph spacing]
  set par(
    leading: 1em,
    spacing: 1em,
  )

  // Düzey 1 başlıklar ortalandı. [Level 1 headings are centered.]
  show heading.where(level: 1): set align(center)

  content
}
