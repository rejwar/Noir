// File: StringConcatenator.nr
fn ConcatStrings(str1: [u8; 5], str2: [u8; 5]) -> pub [u8; 10] {
    let mut Result = [0; 10];
    for i in 0..5 {
        Result[i] = str1[i];
        Result[i+5] = str2[i];
    }
    Result
}
