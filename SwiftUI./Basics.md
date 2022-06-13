# Modifiers
Modifiers lets you modify the elements of you applications, SwiftUI provided many modifiers to many elements, some of which will be listed down here.
SwiftUI has an enormous number of methods you can use to modify the appearance or behavior of a view.

## Padding
SwiftUI lets us set individual padding around views using the `padding()` modifier, causing views to be placed further away from their neighbors.
Example:
```swift
Text("Hello World!).padding()
```

## Blur
```swift
 Text("Hello, World!")
  .padding()
  .background(Color.blue.blur(radius: 3.0))
```

You van blur views

## Images

`Image()` lets you add images

 ```swift
  Image("logo")
  .resizable()
  .aspectRatio(contentMode: .fit)
 ```
> `logo` is the name of the image
> `.resizable()` make the image takes it original dimensions.
> `.aspectRatio(contentMode: .fit)` make the image fit in the ContentView
> `.ignoreSafeArea()` ignore safe area of the phone.
> `.frame(width: 120, height: 118)` to set the width and the height
> `.cornerRadius(20)` to round image corners

   

## VStack and HStack And ZStack
`VStack` lets you arrange the element vertically, `HStack` horizontally and `ZStack` on top of each other on the Z axis.
In the parameters, you can add the alignmrnts too.
Example:
```swift
VStack(alignment: .leading){
}
```
### Vstack
```swift
VStack {
 Text("Welcome")
 Text("Welcome")
}
```
-> Welcome

   Welcome
   
### Vstack
   ```swift
HStack {
 Text("Welcome")
 Text("Welcome")
}
```
-> Welcome Welcome

### ZStack

  ```swift
ZStack {
 Text("Welcome")
 Text("Welcome")
}
```
-> W(W)e(e)l(l)c(c)o(o)m(m)e(e)

# TabView

```swift
TabView
.tabViewStyle(PageTabViewStyle())
.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)){
   //This is the standard syntax for TabView
   Text("Welcome")
    .tabItem{Item Label)}
}
```
`.tabViewStyle(PageTabViewStyle())` make the pages behave like pages.
The page style uses small index dots, but they’re white on white, so you can’t see 
them.To make them show up, add this modifier below `tabViewStyle`: `.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))`

# Spacer
`Spacer()` is used to add space to View, If you add multiple `Spacer()`, each one will take an equal amount of space on the page of the application

# Buttons
`Button(String,function)`
### Button instance with closure
```swift
Button("Click Me", action{
 print("Hello World")
})
```
### Button instance with trailing closure
```swift
Button("Click Me"){
 print("Hello World")
}
```
### Button instance with label view
```swift
Button(action: {
 print("Hellow World")
}, label:{
 HStack{
  Image(systemName:"pencil")
  Text("Edit")
 }
}
```

# State
 `Stat`e instance isn’t the value itself; it’s a means of reading and writing the value. To access a state’s underlying value, refer to it by its property name, which returns the `wrappedValue` property value. For example, you can read and update the isPlaying state property in a `PlayButton` view by referring to the property directly:
 
 ```swift
 struct PlayButton: View {
    @State private var isPlaying: Bool = false

    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}
```
> To be able to change the data of a variable in a view, assign to it `@State` so it would be mutable.

# List
```swift
List{
  foreach(arrayName.indices, id: \.self{ index in
  //code here
  }
}
```
> Add `listRowSeparator(.hidden) to hide the row seperators
