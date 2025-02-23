#import "/src/modules/turkish-case-handler.typ": title-case-tr
#import "/src/components/full-date-with-author-fullname-component.typ": full-date-with-author-fullname-component
#import "/src/components/advisor-faculty-member-fullname-with-title.typ": advisor-faculty-member-fullname-with-title
#import "/src/components/date-component.typ": date-component

#let originality-report-page(
  thesis-title: none,
  author: none,
  advisor: none,
  date: none,
  included-page-count: none,
  similarity-score: none,
) = {
  heading(level: 1)[TEZ ÇALIŞMASI ORİJİNALLİK RAPORU]

  [#text(style: "italic", title-case-tr(thesis-title)) başlıklı tez çalışmamın toplam #included-page-count sayfalık kısmına ilişkin, #date-component(date: date) tarihinde tez danışmanım tarafından #text(weight: "bold")[Turnitin] adlı intihal tespit programından aşağıda belirtilen filtrelemeler uygulanarak alınmış olan orijinallik raporuna göre, tezimin benzerlik oranı #text(weight: "bold")[%#similarity-score] olarak belirlenmiştir.]

  v(1em)

  [
    #set par(first-line-indent: (amount: 0cm, all: true))
    Uygulanan filtrelemeler:
  ]
  //par(first-line-indent: (amount: 0cm, all: true))[Uygulanan filtrelemeler:]

  v(1em)

  [
    #set enum(indent: 0.5cm, spacing: 1em)
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

  v(2em)

  full-date-with-author-fullname-component(
    author: author,
    date: date,
  )

  v(2em)

  align(center, advisor-faculty-member-fullname-with-title(advisor: advisor))

  pagebreak()
}
