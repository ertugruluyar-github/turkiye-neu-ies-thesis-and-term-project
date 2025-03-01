#import "/src/styles/table-of-contents-style.typ": table-of-contents-style
#import "/src/constants.typ": STRING-CONTENTS

#let table-of-contents-page() = {
  table-of-contents-style(
    outline(
      depth: 3,
      indent: n => n * 1em,
      title: upper(STRING-CONTENTS),
    ),
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
