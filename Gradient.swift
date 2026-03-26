// Implmentation of startPoint and endPoint fix

// Update gradation method to use real vector angles
function calculateGradientAngle(startPoint, endPoint) {
    const dx = endPoint.x - startPoint.x;
    const dy = endPoint.y - startPoint.y;
    return Math.atan2(dy, dx);
}

// Core public API to generate colors and locations
public func generateColorAndLocation(fromColor: UIColor, toColor: UIColor, curve: Curve, count: Int) -> [(color: UIColor, location: CGFloat)] {
    var colorsAndLocations: [(UIColor, CGFloat)] = []
    
    for i in 0..<count {
        let ratio = CGFloat(i) / CGFloat(count - 1)
        let color = blendColor(fromColor, toColor: toColor, ratio: ratio)
        colorsAndLocations.append((color, ratio))
    }
    return colorsAndLocations
}