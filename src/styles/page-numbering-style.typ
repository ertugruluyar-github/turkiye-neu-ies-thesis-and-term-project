#import "/src/constants/numbering-constants.typ": PAGE-NUMBERING-ARABIC

#let page-numbering-style(
  content,
  numbering: PAGE-NUMBERING-ARABIC,
  number-align: right,
  is-one-left-one-right: false,
  reset: true,
) = {
  // Sayfa numaralandırmasını 1'den başlatmak. [Start page numbering from 1]
  if reset { counter(page).update(1) }

  // Sayfa altbilgisi [Page footer]
  let footer = context if is-one-left-one-right and number-align != center {
    let page-number = counter(page).get().first()
    number-align = if calc.odd(page-number) { right } else { left }
    align(number-align, counter(page).display())
  } else {
    align(number-align, counter(page).display())
  }

  // Sayfa numaralandırmasını ayarlamak. [Set page numbering]
  set page(footer: footer, numbering: numbering)

  content
}
