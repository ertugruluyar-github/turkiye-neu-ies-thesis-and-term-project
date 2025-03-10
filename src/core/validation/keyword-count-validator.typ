#import "/src/constants.typ": MIN-KEYWORD-COUNT, MAX-KEYWORD-COUNT

#let keyword-count-validator(keyword-count: none) = {
  assert(keyword-count >= MIN-KEYWORD-COUNT, message: "Anahtar kelime sayısı 3'ten az olamaz.")
  assert(keyword-count <= MAX-KEYWORD-COUNT, message: "Anahtar kelime sayısı 5'ten çok olamaz.")
}
