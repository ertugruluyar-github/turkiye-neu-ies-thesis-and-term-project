#import "/src/components/fullname-component.typ": fullname-component

#let fullname-with-title-component(
  title: none,
  first-name: none,
  last-name: none,
) = [#title #fullname-component(first-name: first-name, last-name: last-name)]
