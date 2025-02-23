#import "/src/constants.typ": STRING-ORCID

#let orcid-with-prefix-component(orcid: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #STRING-ORCID: #link("https://orcid.org/" + orcid, orcid)
]
