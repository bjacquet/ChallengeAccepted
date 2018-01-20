module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

orbitalPeriod :: Planet -> Float
orbitalPeriod planet = case planet of
  Mercury -> 0.24084767
  Venus   -> 0.61519726
  Earth   -> 1.0
  Mars    -> 1.8808158
  Jupiter -> 11.862615
  Saturn  -> 29.447498
  Uranus  -> 84.016846
  Neptune -> 164.79132

earthYears :: Float -> Float
earthYears seconds = seconds / 31557600

ageOn :: Planet -> Float -> Float
ageOn planet seconds = (earthYears seconds) / orbitalPeriod planet
