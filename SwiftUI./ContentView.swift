//Basic SwiftUI App

//A preview canvas will be provided where you can easily access elements

import SwiftUI

struct ContentView: View {
 var body: some View {
TabView.tabViewStyle(PageTabViewStyle(backgroundDisplayMode: .always)) {
 Text("Welcome")
 Text("Exercise 1")
 Text("Exercise 2")
  }
 }
}

struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView() 
  }
}
