#import "/src/styles/figure-outline-entry-style.typ": figure-outline-entry-style
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let list-of-code-figures-style(content) = {
  // Anahatın style. [Outline setstyletings.]
  set outline(
    depth: none,
    indent: auto,
    target: figure.where(kind: raw),
    title: upper(translator(key: language-keys.LIST-OF-CODES)),
  )

  // Figürler listelerinin girdilerinin stili. [Style of the entries of the figures lists.]
  show: figure-outline-entry-style

  content
}
