// File: src/main.nr

fn main(public flight_id: Field, public hashed_ticket: Field, private ticket: Field) {
    // Hash the ticket to check its validity
    let computed_hash = hash(ticket);

    // Ensure the hash matches the provided hashed_ticket
    constrain computed_hash == hashed_ticket;

    // Extract flight_id from the ticket (simple encoding: first field of ticket)
    let extracted_flight_id = ticket % 10_000_000; // Extract flight_id (last 7 digits assumed)

    // Ensure the extracted flight_id matches the public flight_id
    constrain extracted_flight_id == flight_id;
}
