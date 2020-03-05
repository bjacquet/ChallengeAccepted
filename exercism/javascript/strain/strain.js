//
// This is only a SKELETON file for the 'Strain' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const keep = (givenList, predicateFn) => {
  if (givenList.length == 0) return []

  var retval = []
  for (let i = 0, n = givenList.length; i < n; i++) {
    if (predicateFn(givenList[i])) retval.push(givenList[i])
  }

  return retval
}

export const discard = (givenList, predicateFn) => {
  if (givenList.length == 0) return []

  return givenList.reduce(
    (acc, elem) => {
      if (!predicateFn(elem)) acc.push(elem)
      return acc
    },
    []
  )
}
