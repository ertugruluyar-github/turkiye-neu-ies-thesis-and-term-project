#import "/src/constants/drop-down-list-constants.typ": LANGUAGES
#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/abstract-page-component.typ": abstract-page-component

#let expanded-turkish-abstract-page(
  department: none,
  program: none,
  report-type: none,
  thesis-title: none,
  author: none,
) = {
  let language-code = LANGUAGES.TR-TR.language-code
  set text(lang: LANGUAGES.TR-TR.language-code)

  abstract-page-component(
    page-title: translator(key: language-keys.EXPANDED-TURKISH-ABSTRACT, language-code: language-code),
    university-name: translator(key: language-keys.UNIVERSITY-NAME-TITLE-CASE),
    institute-name: translator(key: language-keys.INSTITUTE-NAME-TITLE-CASE),
    department: department,
    program: program,
    report-type: report-type,
    thesis-title: thesis-title.tur,
    author: author,
    abstract-text-content-file-path: "/template/sections/03-back/expanded-turkish-abstract-text.typ",
    keywords-title: translator(key: language-keys.KEYWORDS),
    keywords: none,
  )
}
