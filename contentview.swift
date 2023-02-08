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
        
