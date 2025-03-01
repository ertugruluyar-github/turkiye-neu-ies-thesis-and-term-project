#import "/src/constants.typ": ABSTRACT-TEXT-FONT-SIZE

#let abstract-page-style(content) = {
  // Özet metni normal yazı büyüklüğünden daha küçük olacak şekilde ayarlandı.
  set text(size: ABSTRACT-TEXT-FONT-SIZE)
  set par(
    leading: 1em,
    spacing: 1em,
  )

  content
}
