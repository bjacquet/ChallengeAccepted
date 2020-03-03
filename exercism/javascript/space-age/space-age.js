//
// This is only a SKELETON file for the 'Space Age' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const age = (planet, seconds) => {
  return Number.parseFloat((seconds / PLANETARY_YEAR_SECONDS[planet]).toFixed(2))
};

const EARTH_YEAR_SECONDS = 31557600;

const PLANETARY_YEAR_SECONDS = {
  mercury: EARTH_YEAR_SECONDS * 0.2408467,
  venus: EARTH_YEAR_SECONDS * 0.61519726,
  earth: EARTH_YEAR_SECONDS,
  mars: EARTH_YEAR_SECONDS * 1.8808158,
  jupiter: EARTH_YEAR_SECONDS * 11.862615,
  saturn: EARTH_YEAR_SECONDS * 29.447498,
  uranus: EARTH_YEAR_SECONDS * 84.016846,
  neptune: EARTH_YEAR_SECONDS * 164.79132
}
