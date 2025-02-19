#let advisor-faculty-member-fullname-with-title(advisor: none) = [
  #set par(first-line-indent: (amount: 0cm, all: true))
  #advisor.title #advisor.first-name #advisor.last-name
]
