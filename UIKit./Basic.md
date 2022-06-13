# Content
- [Initialize](#Initialize)
- [Random Number Generation](#Random-Number-Generation)
- [Labels](#Labels)
- [IBOutlet](#IBOutlet)
- [IBAction](#IBAction)
- [Receiver](#Receiver)
- [Absolute Value](#Absolute-Value)

# Initialize
```swift
//Here you can initialize components
override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view.
  
  //slider initial value
  currentValue = lroundf(slider.value)
}
```
> `currentValue = lroundf(slider.value)` will give you an error message because the variable slider is not on the scope.
> try initializing it at the start with `@IBOutlet var slider: UISlider!`

The code will be the following
```swift
@IBOutlet var slider: UISlider!
var currentValue = ANYTHING
override func viewDidLoad() {
 super.viewDidLoad()
  currentValue = lroundf(slider.value)
}
```

> Don't forget to connect the slider from the StoryBoard to the view controller's slider outlet.
> If you are lost, go to page 92 in the book: UIKit Apprentice (Second edition)

# Random Number Generation
```swift
var targetValue = Int.random(in: 1...100)
//Generate a random number between 1 and 100 inclusive
```

# Labels
If you want to change or edit a label, you can do it by typing
```swift
func updateLabels() {
 targetLabel.text = String(targetValue)
}
```
Labels only accept String, so you will have to convert: AnyData -> String
Label expect a string so do not forget the `String()`

# IBOutlet
```swift
IBOutlet var slider: UISlider!
```
In the case of `@IBOutlet`, this is a connection from an Interface Builder user interface component – e.g. a UIButton – to a property in a view controller or other piece of Swift code.
   
# IBAction
`@IBAction` is a way of making storyboard layouts trigger code.

# Receiver
To call a method on an object, you’d normally write: `receiver.methodName(parameters)`

The receiver is the object you’re sending the message to. If you’re sending the 
message to yourself, then the receiver is `self`. But because sending messages to self
is very common, you can also leave this special keyword out for many cases.
To be fair, this isn’t exactly the first time you’ve called methods.`addAction()` is a 
method on `UIAlertController` and `present()` is a method that all view controllers 
have, including yours.

### Self
Sometimes, you may see method calls written like this: `self.startNewRound()`
That does the exact same thing as `startNewRound()` without self. in front. Recall 
how I just said that the view controller sends the message to itself. Well, that’s 
exactly what self means.

# Absolute Value
`abs()` returns the absolute value of the number inside the brackets, if the number is negative, `abs()` turns it positive.
