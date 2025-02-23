#import "/src/constants.typ": STRING-ORCID
#import "/src/modules/turkish-case-handler.typ": upper-case-tr

#let orcid-with-prefix-component(orcid: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #upper-case-tr(STRING-ORCID): #link("https://orcid.org/" + orcid, orcid)
]
