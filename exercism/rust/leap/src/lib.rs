pub fn is_leap_year(year: u64) -> bool {
    normal_leap_year(year) && leap_century(year)
}

fn normal_leap_year(year: u64) -> bool {
    year % 4 == 0
}

fn leap_century(year: u64) -> bool {
   !(year % 100 == 0) || year % 400 == 0
}