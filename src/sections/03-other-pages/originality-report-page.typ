#import "/src/components/author-fullname-component.typ": author-fullname-component
#import "/src/components/full-date-component.typ": full-date-component
#import "/src/components/advisor-faculty-member-fullname-with-title.typ": advisor-faculty-member-fullname-with-title

#let originality-report-page(
  author: none,
  advisor: none,
  date: none,
) = {
  heading(level: 1)[TEZ ÇALIŞMASI ORİJİNALLİK RAPORU]

  [#emph[Tez Başlığı] başlıklı tez çalışmamın toplam Sayfa Sayısı sayfalık kısmına ilişkin, Tarih Seçiniz tarihinde tez danışmanım tarafından strong[Turnitin] adlı intihal tespit programından aşağıda belirtilen filtrelemeler uygulanarak alınmış olan orijinallik raporuna göre, tezimin benzerlik oranı strong[%];Benzerlik Oranı olarak belirlenmiştir.]

  v(1em)

  par(first-line-indent: 0cm)[Uygulanan filtrelemeler:]

  v(1em)

  [
    #set enum(indent: 0.5cm)
    + Tez çalışması orijinallik raporu sayfası hariç
    + Bilimsel etik beyannamesi sayfası hariç
    + Önsöz hariç
    + İçindekiler hariç
    + Simgeler ve kısaltmalar hariç
    + Kaynaklar hariç
    + Alıntılar dahil
    + 7 kelimeden daha az örtüşme içeren metin kısımları hariç
  ]

  v(1em)
  [Necmettin Erbakan Üniversitesi Tez Çalışması Orijinallik Raporu Uygulama Esaslarını inceledim ve tez çalışmamın, bu uygulama esaslarında belirtilen azami benzerlik oranının (%30) altında olduğunu ve intihal içermediğini; aksinin tespit edileceği muhtemel durumda doğabilecek her türlü hukuki sorumluluğu kabul ettiğimi ve yukarıda vermiş olduğum bilgilerin doğru olduğunu beyan ederim.]

  grid(
    columns: (70%, auto),
    rows: auto,
    row-gutter: 1em,
    align: center,
    [], full-date-component(date: date),
    [], author-fullname-component(author: author),
  )

  v(2em)

  align(center, advisor-faculty-member-fullname-with-title(advisor: advisor))

  pagebreak()
}
