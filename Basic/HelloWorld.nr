fn GreetUser(name: [u8; 5]) -> pub [u8; 12] {
    let mut Greeting = *b"Hello, ";
    for i in 0..5 {
        Greeting[i+7] = name[i];
    }
    Greeting
}
