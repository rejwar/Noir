// File: SumCalculator.nr
fn SumFirstN(n: field) -> pub field {
    let mut Sum = 0;
    for i in 1..n+1 {
        Sum = Sum + i;
    }
    Sum
}
