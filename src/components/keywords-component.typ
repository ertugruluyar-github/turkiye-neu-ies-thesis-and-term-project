#import "/src/constants.typ": MIN-KEYWORD-COUNT, MAX-KEYWORD-COUNT

#let keywords-component(
  keywords-title: none,
  keywords: none,
) = {
  assert(keywords.len() >= MIN-KEYWORD-COUNT, message: "Anahtar kelime sayısı 3'ten az olamaz.")
  assert(keywords.len() <= MAX-KEYWORD-COUNT, message: "Anahtar kelime sayısı 5'ten çok olamaz.")
  set align(left)
  set par(
    first-line-indent: (amount: 0cm, all: true),
    spacing: 0pt,
  )
  text(weight: "bold", keywords-title + ": ") + keywords.join(", ")
}
