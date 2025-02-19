#import "/src/components/full-date-with-author-fullname-component.typ": full-date-with-author-fullname-component

#let scientific-ethics-declaration-page(
  author: none,
  date: none,
) = {
  heading(level: 1)[BİLİMSEL ETİK BEYANNAMESİ]
  [
    Bu tezin tamamının kendi çalışmam olduğunu, planlanmasından yazımına kadar tüm aşamalarında bilimsel etiğe ve akademik kurallara özenle riayet edildiğini, tez içindeki bütün bilgilerin etik davranış ve akademik kurallar çerçevesinde elde edilerek sunulduğunu, ayrıca tez hazırlama kurallarına uygun olarak hazırlanan bu çalışmada başkalarının eserlerinden yararlanılması durumunda bilimsel kurallara uygun olarak atıf yapıldığını ve bu kaynakların kaynaklar listesine eklendiğini beyan ederim.
  ]

  full-date-with-author-fullname-component(
    author: author,
    date: date,
  )
}
