#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/orcid-link-component.typ": orcid-link-component

#let orcid-with-prefix-component(orcid: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #upper(translator(key: language-keys.ORCID)): #orcid-link-component(orcid: orcid)
]
