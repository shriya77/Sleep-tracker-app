import SwiftUI

struct ContentView: View {
    
    @State private var inputValue = ""
    @State private var outputValue = ""
    
    @State private var inputUnitValue = 2
    
    var body: some View {
        Text("Hello, World!").padding()
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
        
