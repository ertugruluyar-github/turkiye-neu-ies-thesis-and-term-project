#show heading.where(level: 1): set align(center)
= ÖZGEÇMİŞ
#v(1em)

#align(
  center,
  table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, auto),
    column-gutter: auto,
    rows: auto,
    row-gutter: auto,
    inset: (
      left: 0.5em,
      top: 1em,
      bottom: 1em,
      right: 0.5em,
    ),
    align: (left,) * 6,
    stroke: 1pt + black,
    table.cell(colspan: 6, align(center)[*Genel Bilgiler*]),
    [*Adı Soyadı:*], table.cell(colspan: 3)[Ertuğrul UYAR], [*İmza:*], [],
    [*Doğum Yeri:*], table.cell(colspan: 3)[KONYA], [*Doğum Tarihi:*], [13/04/2001],
    [*Adres:*], table.cell(colspan: 3)[..\ ..], [*Medeni Durumu:*], [Bekar],
    [*Telefon No:*], table.cell(colspan: 3)[+90 555 55 55], [*E-Posta:*], [eposta\@mail.com],
  ),
)

#align(
  center,
  table(
    columns: (auto, 3fr, 2fr, 1fr, auto),
    column-gutter: auto,
    rows: auto,
    row-gutter: auto,
    inset: (
      left: 0.5em,
      top: 1em,
      bottom: 1em,
      right: 0.5em,
    ),
    align: (left,) * 5,
    stroke: 1pt + black,
    table.cell(colspan: 5, align(center)[*Öğrenim Durumu*]),
    align(center)[*Okul Türü*], align(center)[*Okul Adı*], align(center)[*Program*], align(center)[*Yer*], align(center)[*Yıl*],
    [*Lise:*], [], [], [], [2000],
    [*Lisans:*], [], [], [], [2015],
    [*Yüksek Lisans:*], [], [], [], [],
    [*Becerileri:*], table.cell(colspan: 4)[],
    [*İş Deneyimleri:*], table.cell(colspan: 4)[],
    [*Hakkımda bilgi\ almak için\ önerebileceğim\ şahıslar:*], table.cell(colspan: 4)[],
  ),
)
