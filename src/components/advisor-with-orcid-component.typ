#import "/src/components/advisor-faculty-member-fullname-with-title.typ": advisor-faculty-member-fullname-with-title
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component

#let advisor-with-orcid-component(
  advisor: none,
) = {
  advisor-faculty-member-fullname-with-title(advisor: advisor)
  orcid-with-prefix-component(orcid: advisor.orcid)
}
