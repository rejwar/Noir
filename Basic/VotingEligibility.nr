// File: VotingEligibility.nr
fn CanVote(age: field, isCitizen: bool) -> pub bool {
    age >= 18 && isCitizen
}
