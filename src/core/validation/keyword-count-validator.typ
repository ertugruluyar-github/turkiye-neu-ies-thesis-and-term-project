#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE, MIN-KEYWORD-COUNT, MAX-KEYWORD-COUNT

#let keyword-count-validator(keyword-count: none) = {
  let common-message = "'keywords' parametresine desteklenmeyen ya da hatalı bir giriş oldu. "
  assert(
    keyword-count >= MIN-KEYWORD-COUNT,
    message: STRING-ERROR-INLINE-TITLE + common-message + "Anahtar kelime sayısı 3'ten az olamaz.",
  )
  assert(
    keyword-count <= MAX-KEYWORD-COUNT,
    message: STRING-ERROR-INLINE-TITLE + common-message + "Anahtar kelime sayısı 5'ten çok olamaz.",
  )
}
