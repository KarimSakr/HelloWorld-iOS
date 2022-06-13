import SwiftUI

struct ContentView: View{
  
  @State var playerCard = "card5"
  @State var cpuCard = "card9"
  @State var playerScore = 0
  @State var cpuScore = 0
  
  var body: some View{
    ZStack{
       Image("background").ignoreSafeArea()
      
      VStack{
        
        Spacer()
        Image("logo")
        Spacer()
        HStack{
          Spacer() 
          Image(playerCard)
          Spacer() 
          Image(cpuCard)    
          Spacer() 
         }
      Spacer()
      Button(action:{
        //Random number between 2 and 14
        let playerNumber = Int.random(in: 2...14)
        let cpuNumber = Int.random(in: 2...14)
        
        //Update the cards
          playerCard = "card" + String(playerNumber)
          cpuCard = "card" + String(cpuNumber)
        //Update the score
        if (playerNumber > cpuNumber){
          playerScore += 1 
        }else if (playerNumber < cpuNumber){
          cpuScore += 1 
        }
        
      },label:{
        Image("dealbutton") 
      }
      Spacer() 
      
      HStack{
        Spacer()
        VStack{
          
          Text("Player")
          .font(.headline)
          .foregroundColor(Color.white)
          .padding(.bottom, 10.0)
          
          Spacer() 
          
          Text(String(playerScore))
          .font(.largeTitle)
          .foregroundColor(Color.white)
          
          Spacer() 
        }
        Spacer()
        VStack{
          
          Text(String(cpuScore))
           .font(.headline)
          .foregroundColor(Color.white)
          .padding(.bottom, 10.0) 
          
          Spacer() 
          
          Text("0")
          .font(.largeTitle)
          .foregroundColor(Color.white)
          
          Spacer()
        }
        Spacer()
      }
        Spacer()
    }
     
    }
  }
} 

struct ContentView_Previews:
  PreviewProvider{
    static var previews: some View{
      ContentView()
    }
  }
