#import "/src/constants.typ": STRING-THESIS-PROPOSAL-SUFFIX, STRING-THESIS-SUFFIX

#let thesis-type-component(
  thesis-type: none,
  is-thesis-proposal: none,
) = {
  let thesis-suffix = if is-thesis-proposal { STRING-THESIS-PROPOSAL-SUFFIX } else { STRING-THESIS-SUFFIX }

  let thesis-type-with-suffix = thesis-type + thesis-suffix

  thesis-type-with-suffix
}
