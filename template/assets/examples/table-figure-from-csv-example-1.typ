#let csv-table-data = csv("/template/assets/csv-files/csv-table-data.csv")

#figure(
  table(
    columns: csv-table-data.first().len(),
    table.header(
      table.cell(rowspan: 2)[Soru],
      table.cell(colspan: 2)[Doğru],
      table.cell(colspan: 2)[Yanlış],
      table.cell(colspan: 2)[Fikrim Yok],
      table.cell(colspan: 2)[Toplam],
      table.hline(start: 1, stroke: 1pt),
      [*f*],
      [*%*],
      [*f*],
      [*%*],
      [*f*],
      [*%*],
      [*N*],
      [*%*],
    ),
    ..csv-table-data.flatten(),
    table.footer(
      repeat: true,
      table.cell(
        colspan: csv-table-data.first().len(),
        stroke: none,
        align(left)[\* Tablo açıklaması varsa tablonun hemen altına yazınız.\ \*İkinci satır örneği.],
      ),
    ),
  ),
  caption: [CSV dosyasıyla tablo örneği 1.],
) <figür-tablo-csv-dosyasıyla-tablo-örneği-1>
//#par(leading: 1em, text(size: 10pt)[Tablo açıklaması varsa tablonun hemen altına yazınız.])
