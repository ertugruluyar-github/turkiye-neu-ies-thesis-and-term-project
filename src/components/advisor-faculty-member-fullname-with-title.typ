#import "/src/components/fullname-component.typ": fullname-component

#let advisor-faculty-member-fullname-with-title(advisor: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #advisor.title #fullname-component(first-name: advisor.first-name, last-name: advisor.last-name)
]
