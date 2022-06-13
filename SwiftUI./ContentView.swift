//Basic SwiftUI App

//A preview canvas will be provided where you can easily access elements

import SwiftUI

struct ContentView: View {
 var body: some View {
 Button("Click Me", action: {
  print("Hello World")
  }
 }
}

struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView() 
  }
}
