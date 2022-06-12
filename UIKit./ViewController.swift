import UIKit

class ViewController: UIViewController{
  var currentValue = 50
   IBOutlet var slider: UISlider!
   /*In the case of @IBOutlet, this is a connection from an Interface Builder user 
   interface component – e.g. a UIButton – to a property in a view controller or other 
   piece of Swift code.
   Dont' forget to connect the slider object from the storyboard to the view controller's slider outlet
   */
  
  //This will be the target that the user will need to reach
  var targetValue = 0
  
  //Labels allows the developer to print something for the user (data, string...)
  //This particular label, prints the target to the user
  @IBOutlet var targetLabel: UILabel!
  
  //This label prints the score of the user
   @IBOutlet var scoreLabel: UILabel!
  
  //This label prints the current round
  IBOutlet var roundLabel: UILabel!
  
  //This variable saves the score of the user, it is the sum of the points gained in each round
  var score = 0
  
  //Keep track of how many rounds the user has played
  var round = 0
  
  
 override func viewDidLoad(){
   super.viewDidLoad()
   
   startNewGame() //Start a game
   
 }
  //This function will display an alert message.
  @IBAction func showAlert(){
    
    //Calculate the difference with the absolute value.
    let difference = abs(targetValue - currentValue)
    
    //points are to be awarded to the user
    let points = 100 - difference
    
    score += points
    let message = "You scored \(points) points"
    let alert = UIAlertController(
    title:"Hello World",
    message: message,
    preferredStyle: .alert)
    
    let action = UIAlertAction(
      title:"Awesome",
      style: .default,
      handler: nil)
    
    alert.addAction(action)
    present(alert, animated: true, completion:nil)
    startNewRound() //Start a new round
  }
  //This function is used for the slider, you can get the .value
  @IBAaction func sliderMoved(_ slider: UISlider){
   currentValue = lroundf(slider.value)    
  }
  
  //This function will start a new round.
  func startNewRound(){
    //increment the rounds
    round += 1
    //Generate a new random number
    targetValue = Int.random(in: 1...100)
    
    //reset the slider
    currentValue = 50
    
    //reset the slider
    //UISlider is a Float, so you will have to convert: AnyData -> Float
    slider.value = Float(currentValue)
    
    updateLabels()
  }
  
  //This function will reset your entire game
  @IBAction func startNewGame(){
    score = 0
    round = 0
    startNewRound()
  }
  
  // This function lets you update labels
  func updateLabels(){
    //Labels only accept String, so you will have to convert: AnyData -> String
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    roundLabel.text = String(round)
  }
}
