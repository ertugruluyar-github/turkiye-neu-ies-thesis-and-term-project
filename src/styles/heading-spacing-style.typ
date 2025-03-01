#import "/src/constants.typ": PARAGRAPH-SPACING-SIZE

#let heading-spacing-style(content) = {
  // 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk eklendi ve paragrafdan sonraki boşluk eklendi. NOT: 1em = FONT-SIZE = 12pt ve buna 0.5em eklenerek 1.5 satır aralığı başlığa uygulanmış oldu. [For make 1.5 line spacing, 0.5 line spacing was added and paragraph spacing was added. NOTE: 1em = FONT-SIZE = 12pt and 0.5em was added to make 1.5 line spacing applied to the heading.]
  show heading.where(level: 1): set block(above: 0pt, below: 0.5em + PARAGRAPH-SPACING-SIZE)

  // Başlığın üstünde, 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk + paragrafdan sonraki boşluk miktarı kadar boşluk eklendi. Başlığın altında 1.5 satır aralığı yapmak için 0.5 satır aralığı kadar boşluk eklendi. [Above the heading, 0.5 line spacing was added for 1.5 line spacing + paragraph spacing was added. Below the heading, 0.5 line spacing was added for 1.5 line spacing.]
  show heading
    .where(level: 2)
    .or(heading.where(level: 3))
    .or(heading.where(level: 4))
    .or(heading.where(level: 5))
    .or(heading.where(level: 6)): set block(above: 0.5em + PARAGRAPH-SPACING-SIZE, below: 0.5em)

  content
}
