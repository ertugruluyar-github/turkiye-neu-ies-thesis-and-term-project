#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  MIN-KEYWORD-COUNT,
  MAX-KEYWORD-COUNT,
)

#let keyword-count-validator(keyword-count: none) = {
  let common-message-1 = "'keywords' parametresine desteklenmeyen ya da hatalı bir giriş oldu. "
  let common-message-2 = STRING-RELATED-DOCUMENTATION-INLINE-TITLE + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK
  assert(
    keyword-count >= MIN-KEYWORD-COUNT,
    message: STRING-ERROR-INLINE-TITLE
      + common-message-1
      + "Anahtar kelime sayısı 3'ten az olamaz. "
      + common-message-2,
  )
  assert(
    keyword-count <= MAX-KEYWORD-COUNT,
    message: STRING-ERROR-INLINE-TITLE
      + common-message-1
      + "Anahtar kelime sayısı 5'ten çok olamaz. "
      + common-message-2,
  )
}
