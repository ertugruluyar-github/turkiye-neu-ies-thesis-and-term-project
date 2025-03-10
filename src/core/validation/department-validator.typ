#import "/src/constants.typ": DEPARTMENTS

#let department-validator(department: none) = {
  assert(
    department in DEPARTMENTS.values(),
    message: "Desteklenmeyen ya da hatalı Ana Bilim Dalı girişi oldu. Lütfen 'DEPARTMENTS' sözlüğündeki bir dili seçiniz.",
  )
}
