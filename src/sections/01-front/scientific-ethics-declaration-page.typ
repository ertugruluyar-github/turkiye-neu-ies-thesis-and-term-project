#import "/src/components/full-date-with-author-fullname-component.typ": full-date-with-author-fullname-component
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let scientific-ethics-declaration-page(
  author: none,
  date: none,
) = {
  heading(level: 1, upper(translator(key: language-keys.SCIENTIFIC-ETHIC-DECLARATION)))
  [
    Bu tezin tamamının kendi çalışmam olduğunu, planlanmasından yazımına kadar tüm aşamalarında bilimsel etiğe ve akademik kurallara özenle riayet edildiğini, tez içindeki bütün bilgilerin etik davranış ve akademik kurallar çerçevesinde elde edilerek sunulduğunu, ayrıca tez hazırlama kurallarına uygun olarak hazırlanan bu çalışmada başkalarının eserlerinden yararlanılması durumunda bilimsel kurallara uygun olarak atıf yapıldığını ve bu kaynakların kaynaklar listesine eklendiğini beyan ederim.
  ]

  v(2em)

  full-date-with-author-fullname-component(
    author: author,
    date: date,
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
