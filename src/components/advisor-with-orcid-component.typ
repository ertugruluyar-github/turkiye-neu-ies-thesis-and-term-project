#import "/src/components/advisor-fullname-with-title-component.typ": advisor-fullname-with-title-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component

#let advisor-with-orcid-component(
  advisor: none,
) = {
  advisor-fullname-with-title-component(advisor: advisor)
  orcid-with-prefix-component(orcid: advisor.orcid)
}
