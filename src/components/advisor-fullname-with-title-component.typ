#import "/src/components/fullname-component.typ": fullname-component

#let advisor-fullname-with-title-component(advisor: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #advisor.title #fullname-component(first-name: advisor.first-name, last-name: advisor.last-name)
]
