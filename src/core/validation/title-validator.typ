#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  ACADEMIC-MEMBER-TITLES,
)

#let title-validator(title: none) = {
  assert(
    title in ACADEMIC-MEMBER-TITLES.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'title' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'ACADEMIC-MEMBER-TITLES' sözlüğündeki bir ünvanı seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
