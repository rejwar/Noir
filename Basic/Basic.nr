// ১. বেসিক যোগফল ফাংশন
fn CalculateSum(a: field, b: field) -> pub field {
    a + b
}

// ২. কন্ডিশনাল চেক
fn IsGreater(a: field, b: field) -> pub bool {
    a > b
}

// ৩. এরে ব্যবহার করে গড় বের করা
fn CalculateAverage(numbers: [field; 3]) -> pub field {
    (numbers[0] + numbers[1] + numbers[2]) / 3
}

// ৪. ফ্যাক্টরিয়াল বের করা (রিকার্সিভ)
fn CalculateFactorial(n: field) -> pub field {
    if n == 0 {
        1
    } else {
        n * CalculateFactorial(n-1)
    }
}

// ৫. স্ট্রাকচার উদাহরণ
struct PersonDetails {
    age: field,
    isAdult: bool,
}

fn CheckAdultStatus(age: field) -> pub PersonDetails {
    PersonDetails {
        age: age,
        isAdult: age >= 18,
    }
}

// ৬. মডিউল ব্যবহার
mod MathOperations {
    pub fn CalculateSquare(x: field) -> field {
        x * x
    }
}

fn Main() {
    // ১. যোগফল টেস্ট
    let sumResult = CalculateSum(5, 3);
    assert(sumResult == 8);

    // ২. কন্ডিশনাল টেস্ট
    let comparisonResult = IsGreater(10, 5);
    assert(comparisonResult == true);

    // ৩. এরে টেস্ট
    let numbersArray = [10, 20, 30];
    let averageResult = CalculateAverage(numbersArray);
    assert(averageResult == 20);

    // ৪. ফ্যাক্টরিয়াল টেস্ট
    let factorialResult = CalculateFactorial(5);
    assert(factorialResult == 120);

    // ৫. স্ট্রাকচার টেস্ট
    let personInfo = CheckAdultStatus(20);
    assert(personInfo.isAdult == true);

    // ৬. মডিউল টেস্ট
    let squaredValue = MathOperations::CalculateSquare(4);
    assert(squaredValue == 16);
}
