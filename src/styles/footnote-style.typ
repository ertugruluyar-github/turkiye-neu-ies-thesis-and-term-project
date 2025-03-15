#import "/src/constants/numbering-constants.typ": FOOTNOTE-NUMBERING

#let footnote-style(content) = {
  // Dipnot numaralandırma stili. [Footnote numbering style.]
  set footnote(numbering: FOOTNOTE-NUMBERING)

  // Dipnot girdisi stili. [Footnote entry style.]
  set footnote.entry(
    clearance: 1em,
    gap: 0.35em,
    indent: 0.25em,
    separator: line(length: 40%, stroke: 0.5pt + black),
  )

  content
}
