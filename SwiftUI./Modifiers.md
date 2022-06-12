# Modifiers
Modifiers lets you modify the elements of you applications, SwiftUI provided many modifiers to many elements, some of which will be listed down here.
SwiftUI has an enormous number of methods you can use to modify the appearance or behavior of a view.

## Padding
SwiftUI lets us set individual padding around views using the `padding()` modifier, causing views to be placed further away from their neighbors.
Example:
```sh
Text("Hello World!).padding()
```

## VStack and HStack
`VStack` lets you arrange the element vertically, and `HStack` horizontally

```sh
VStack {
 Text("Welcome")
 Text("Welcome")
}
```
-> Welcome

   Welcome
   
   ```sh
HStack {
 Text("Welcome")
 Text("Welcome")
}
```
-> Welcome Welcome
