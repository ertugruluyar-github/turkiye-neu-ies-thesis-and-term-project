#import "/src/constants.typ": STRING-ERROR-INLINE-TITLE

#let date-validator(date: none) = {
  assert(
    type(date) == datetime,
    message: STRING-ERROR-INLINE-TITLE
      + "'date' parametresine desteklenmeyen ya da hatalı bir giriş oldu. Lütfen 'datetime' fonksiyonunu kullanarak tarih giriniz.",
  )
}
