extern crate chrono;
use chrono::*;

// Returns a Utc DateTime one billion seconds after start.
pub fn after(start: DateTime<Utc>) -> DateTime<Utc> {
    let gigaseconds: Duration = Duration::seconds(1000000000);
    let later: DateTime<Utc> = start+gigaseconds;
    return later;
}
