# Content
[Initialize](#Initialize)

[Random Number Generation](#Random-Number-Generation)

[Labels](#Labels)
# Initialize
```sh
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
```sh
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
```sh
var targetValue = Int.random(in: 1...100)
//Generate a random number between 1 and 100 inclusive
```

# Labels
If you want to change or edit a label, you can do it by typing
```sh
func updateLabels() {
 targetLabel.text = String(targetValue)
}
```
Label expect a string so do not forget the `String()`
