class Shape {
    var numberOfSides = 0
    let shapeSize = "big"
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func sizeDescription() -> String {
        return "The \(numberOfSides)-sided shape is very \(shapeSize)"
    }
}
