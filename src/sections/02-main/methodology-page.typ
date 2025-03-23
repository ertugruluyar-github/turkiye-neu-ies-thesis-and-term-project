#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let methodology-page() = [
  #heading(level: 1, upper(translator(key: language-keys.METHODOLOGY))) <bölüm-yöntem>
  #include "/template/sections/02-main/03-methodology/methodology-text.typ"

  #heading(level: 2, translator(key: language-keys.RESEARCH-DESIGN)) <başlık-araştırmanın-modeli>
  #include "/template/sections/02-main/03-methodology/research-design-text.typ"

  #heading(
    level: 2,
    translator(key: language-keys.RESEARCH-POPULATION-AND-SAMPLE),
  ) <başlık-araştırmanın-evreni-ve-örneklemi>
  #include "/template/sections/02-main/03-methodology/research-population-and-sample-text.typ"

  #heading(
    level: 2,
    translator(key: language-keys.DATA-COLLECTION-TOOLS),
  ) <başlık-veri-toplama-araçları-ve-veya-teknikleri>
  #include "/template/sections/02-main/03-methodology/data-collection-tools-text.typ"

  #heading(level: 2, translator(key: language-keys.DATA-COLLECTION-PROCESS)) <başlık-verilerin-toplanması>
  #include "/template/sections/02-main/03-methodology/data-collection-process-text.typ"

  #heading(level: 2, translator(key: language-keys.DATA-ANALYSIS))<başlık-verilerin-analizi>
  #include "/template/sections/02-main/03-methodology/data-analysis-text.typ"

  // Mevcut sayfa zaten boşsa sayfa sonu pasif olsun (weak: true). [Disable page break if the current page is already empty (weak: true).]
  #pagebreak(weak: true)
]
