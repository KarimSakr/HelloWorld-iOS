//Basic SwiftUI App

//A preview canvas will be provided where you can easily access elements

import SwiftUI

struct ContentView: View {
 var body: some View {
   //Text() lets you write text
   //.padding() and .backgrounf are modifiers, they modify the elements 
   Text("Hello, World!")
  .padding()
  .background(Color.blue.blur(radius: 3.0))
   
   //Image() lets you add images
   //logo is the name of the image
   Image("logo")
  .resizable()
  .aspectRatio(contentMode: .fit)
 }
}

struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView() 
  }
}
