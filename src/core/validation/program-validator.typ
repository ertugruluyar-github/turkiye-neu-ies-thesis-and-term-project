#import "/src/constants.typ": (
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  PROGRAMS,
)

#let program-validator(program: none) = {
  assert(
    program in PROGRAMS.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'program' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'PROGRAMS' sözlüğündeki bir bilim dalını seçiniz. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK,
  )
}
