// Dil'e göre uzun ay adını değiştiren fonksiyon.
#let long-month-name-by-language(
  date: none,
  month-names: none,
  content,
) = {
  show regex("[a-zA-Z]+"): month-name => month-names.at(date.month() - 1)

  content
}
