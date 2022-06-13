//Basic SwiftUI App

//A preview canvas will be provided where you can easily access elements

import SwiftUI

struct ContentView: View {
 var body: some View {
  VStack{
   Image("logo")
   .resizable()
   .aspectRatio(contentMode:.fit)
  }
 }
}

struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView() 
  }
}
