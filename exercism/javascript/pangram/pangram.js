//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// export const isPangram = (sentence) => {
//   return ALPHABET.filter(x => !sentence.toLowerCase().split('').includes(x)).length == 0
// };

// const ALPHABET = [
//   'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
// ]


// Alternative solution from the community

const ENGLISH_ALPHABET_COUNT = 26

export const isPangram = (sentence) => {
  const letters = new Set(sentence.toLowerCase().replace(/[^a-z]/gi, ''))
  return letters.size == ENGLISH_ALPHABET_COUNT
};
