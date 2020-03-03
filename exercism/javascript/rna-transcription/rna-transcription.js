//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const toRna = (sequence) => {
  // return sequence.split('').reduce(
  //   (accumulator, currentValue) => accumulator + RNA_TRANSCODERS[currentValue],
  //   ''
  // );

  var transcribedSequence = '';
  for(let i = 0, n = sequence.length; i < n; i++){
    transcribedSequence += RNA_TRANSCODERS[sequence[i]];
  }
  return transcribedSequence;
};

const RNA_TRANSCODERS = {
  'A': 'U',
  'C': 'G',
  'G': 'C',
  'T': 'A'
}
