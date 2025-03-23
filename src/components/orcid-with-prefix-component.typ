#import "/src/constants/language-free-string-constants.typ": STRING-ORCID
#import "/src/components/orcid-link-component.typ": orcid-link-component

#let orcid-with-prefix-component(
  orcid: none,
) = [#upper(STRING-ORCID): #orcid-link-component(orcid: orcid)]
