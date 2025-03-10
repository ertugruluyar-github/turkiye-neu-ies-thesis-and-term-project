#import "/src/constants.typ": LANGUAGES

#let language-validator(language: none) = {
  assert(
    language == LANGUAGES.TR-TR or language == LANGUAGES.EN-US,
    message: "Desteklenmeyen ya da hatalı dil girişi oldu. Lütfen 'LANGUAGES' sözlüğündeki bir dili seçiniz.",
  )
}
