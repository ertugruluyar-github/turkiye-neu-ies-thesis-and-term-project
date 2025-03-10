#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys
#import "/src/components/orcid-link-component.typ": orcid-link-component

#let orcid-with-prefix-component(
  orcid: none,
) = [#upper(translator(key: language-keys.ORCID)): #orcid-link-component(orcid: orcid)]
