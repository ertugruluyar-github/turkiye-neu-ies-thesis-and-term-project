#import "/src/constants.typ": STRING-ORCID

#let orcid-with-prefix-component(orcid: none) = [
  #STRING-ORCID: #link("https://orcid.org/" + orcid, orcid)
]
