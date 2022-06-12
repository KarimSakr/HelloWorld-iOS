@IBAction func sliderMoved(_ slider: UISlider) {
 print("The value of the slider is now: \(slider.value)")
  //this will return the value of the current slider
  // you can use lroundf(slider.value) to round-off the value
  // you can also assign it to a variable
  currentValue = lroundf(slider.value)
}
