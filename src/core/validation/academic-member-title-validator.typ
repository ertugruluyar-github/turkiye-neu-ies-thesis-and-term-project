#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  ACADEMIC-MEMBER-TITLES,
)

#let academic-member-title-validator(academic-member-title: none) = {
  assert(
    academic-member-title in ACADEMIC-MEMBER-TITLES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'academic-member-title' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'ACADEMIC-MEMBER-TITLES' sözlüğündeki bir öğretim üyesi ünvanı seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
