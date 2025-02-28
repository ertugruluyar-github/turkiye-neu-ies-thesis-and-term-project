#show heading.where(level: 1): set align(center)

#set par(
  justify: false,
  leading: 1em,
  spacing: 1.5em,
  first-line-indent: (amount: 0cm, all: true),
)

#set table(
  column-gutter: auto,
  rows: auto,
  row-gutter: auto,
  inset: (
    left: 0.5em,
    top: 1em,
    bottom: 1em,
    right: 0.5em,
  ),
  align: left,
  stroke: 0.25pt + black,
)

#set table.header(repeat: false)

#set table.footer(repeat: false)

#heading(level: 1, "ÇALIŞMA TAKVİMİ") <bölüm-çalışma-takvimi>

// TODO: Çalışma Talviminide yüksek lisans ve doktorayı otomatik olarak ayarlayacak şekilde yap.

/*
Dikkat!
İş paketi sayısı, iş paketi tanımları ve tablodaki iş paketlerinin süreleri örnek olarak verilmiş olup, çalışmanıza uygun iş paketi adları ve süreleri yazılmalıdır.
*/

*İP 1:* Alan Yazın taranması\
*İP 2:* Ölçme aracının geliştirilmesi\
*İP 3:* Ölçme aracının uygulanması\
*İP 4:* Verilerin çözümlenmesi ve yorumlanması\
*İP 5:* Raporun (tezin) yazılması\

#align(
  center,
  table(
    columns: (1fr,) * 13,
    align: center + horizon,
    table.header(
      table.cell(rowspan: 2)[#strong[İP\*];],
      table.cell(colspan: 12)[*Aylar*],
      [1],
      [2],
      [3],
      [4],
      [5],
      [6],
      [7],
      [8],
      [9],
      [10],
      [11],
      [12],
    ), table.hline(), [*İP 1*], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 2*], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 3*], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 4*], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 5*], [], [], [], [], [], [], [], [], [], [], [], [], table.cell(
      colspan: 13,
    )[\*İP: İş Paketi],
  ),
)

/*
Dikkat!
Yukarıdaki tablo #emph[Yüksek Lisans] ve aşağıdaki tablo #emph[Doktora] için olup, birini siliniz.
*/


#align(
  center,
  table(
    columns: (1fr,) * 17,
    align: center + horizon,
    table.header(
      table.cell(rowspan: 2)[#strong[İP\*];],
      table.cell(colspan: 16)[#strong[Aylar];],
      [1],
      [2],
      [3],
      [4],
      [5],
      [6],
      [7],
      [8],
      [9],
      [10],
      [11],
      [12],
      [13],
      [14],
      [15],
      [16],
    ), table.hline(), [*İP 1*], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 2*], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 3*], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 4*], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [*İP 5*], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], table.cell(
      colspan: 17,
    )[\*İP: İş Paketi],
  ),
)
