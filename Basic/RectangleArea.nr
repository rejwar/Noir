// File: RectangleArea.nr
struct Rectangle {
    Width: field,
    Height: field,
}

fn CalculateArea(rect: Rectangle) -> pub field {
    rect.Width * rect.Height
}
