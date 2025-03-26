#let title-page-style(content) = {
  // Sayfa ayarlarını ayarla. [Set page settings.]
  set page(
    // Başlık kısmını kaldır. [Remove header.]
    header: none,
    // Sayfa numarasını gizle. [Hide page number.]
    footer: none,
    // Tek sütun. [Single column.]
    columns: 1,
  )

  // Her şeyi ortaya hizalandı. [Everything is centered.]
  set align(center)

  // Paragraf boşluklarını ayarla. [Set paragraph spacing.]
  set par(
    leading: 1em,
    spacing: 0em,
  )

  content
}
