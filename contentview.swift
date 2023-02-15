import SwiftUI

struct ContentView: View {
    
    @State private var inputValue = ""
    @State private var outputValue = ""
    
    @State private var inputUnitValue = 2
    let inputUnits = ["metres", "kilometres", "feet", "miles"]
    
    @State private var outputUnitValue = 2
    let outputUnits = ["metres", "kilometres", "feet", "miles"]
    
    var inputUnitAfterConversionToOutput: String {
        
        var output = ""
        var input = Measurement(value: 0, unit: UnitLength.meters)
        
        
        switch inputUnits[inputUnitValue] {
        case "meters":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.meters)
        case "kilometers":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.kilometers)
        case "feet":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.feet)
        case "miles":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.miles)
        default:
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.meters)
        }
        switch outputUnits[outputUnitValue] {
        case "meters": output = String(describing: input.converted(to: UnitLength.meters))
        case "kilometers":
            output = String(describing: input.converted(to: UnitLength.kilometers))
        case "feet":
            output = String(describing: input.converted(to: UnitLength.feet))
        case "miles":
            output = String(describing: input.converted(to: UnitLength.miles))
        default:
           output = String(describing: input.converted(to: UnitLength.meters))
        }
        
        return output 
        
    }
    
    var body: some View {
        Text("Hello, World!").padding()
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
        
