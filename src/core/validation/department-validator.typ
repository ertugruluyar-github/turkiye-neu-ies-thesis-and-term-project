#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE, DEPARTMENTS

#let department-validator(department: none) = {
  assert(
    department in DEPARTMENTS.values(),
    message: STRING-ERROR-INLINE-TITLE
      + "'department' parametresine desteklenmeyen ya da hatalı ana bilim dalı girişi oldu. Lütfen 'DEPARTMENTS' sözlüğündeki bir ana bilim dalını seçiniz.",
  )
}
