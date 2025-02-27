#import "/src/constants.typ": STRING-ORCID
#import "/src/components/orcid-link-component.typ": orcid-link-component

#let orcid-with-prefix-component(orcid: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #upper(STRING-ORCID): #orcid-link-component(orcid: orcid)
]
