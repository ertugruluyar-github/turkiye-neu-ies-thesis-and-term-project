#import "/src/components/fullname-with-title-component.typ": fullname-with-title-component
#import "/src/components/orcid-with-prefix-component.typ": orcid-with-prefix-component

#let advisor-with-orcid-component(
  advisor: none,
) = {
  fullname-with-title-component(
    title: advisor.title,
    first-name: advisor.first-name,
    last-name: advisor.last-name,
  )
  linebreak()
  orcid-with-prefix-component(orcid: advisor.orcid)
}
