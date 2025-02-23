#import "/src/styles.typ": set-table-of-contents-style
#import "/src/constants.typ": STRING-CONTENTS
#import "/src/modules/turkish-case-handler.typ": upper-case-tr

#let table-of-contents-page() = {
  set-table-of-contents-style(
    outline(
      depth: 3,
      indent: n => n * 1em,
      //fill: repeat(justify: true, gap: 0.1em)[.],
      title: upper-case-tr(STRING-CONTENTS),
    ),
  )

  pagebreak()
}
