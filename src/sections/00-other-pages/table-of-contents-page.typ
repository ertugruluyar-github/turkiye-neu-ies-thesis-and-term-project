#import "/src/styles.typ": set-table-of-contents-style
#import "/src/constants.typ": STRING-CONTENTS

#let table-of-contents-page() = {
  set-table-of-contents-style(
    outline(
      depth: 3,
      indent: n => n * 1em,
      //fill: repeat(justify: true, gap: 0.1em)[.],
      title: upper(STRING-CONTENTS),
    ),
  )

  // Sayfa sonu koyulan sayfa boşsa sayfa sonu pasif olsun (weak: true)
  pagebreak(weak: true)
}
