#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE, PROGRAMS

#let program-validator(program: none) = {
  assert(
    program in PROGRAMS.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'program' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'PROGRAMS' sözlüğündeki bir bilim dalını seçiniz.",
  )
}
