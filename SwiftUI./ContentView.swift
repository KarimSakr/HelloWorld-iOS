//Basic SwiftUI App

//A preview canvas will be provided where you can easily access elements

import SwiftUI

var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", 
                       "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
                       "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", 
                       "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional",
                       "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl",
                        "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", 
                        "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", 
                        "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", 
                        "royaloak", "cask"]

var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", 
                           "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney",
                           "New York", "New York", "New York", "New York", "New York",
                           "New York", "New York", "London", "London", "London", "London"]

var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian/ Causual Drink", 
                       "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood",
                       "American", "American", "Breakfast & Brunch", "Coffee &Tea", 
                       "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", 
                       "British", "Thai"]


struct ContentView: View {
 var body: some View {
   List{
     ForEach(restaurantNames.indices, id: \.self){ index in
        VStack(alignment: .leading){
          Image(restaurantImages[index])
         .resizable()
         .frame(height: 200)
         .cornerRadius(20)
         
         Text(restaunrantNames[index])
           .font(.system(.title2,design:.rounded))
          
          Text(restaurantTypes[index])
           .font(.system(body, design: .rounded))
          
          Text(restaurantLocation[index])
           .font(.system(.subheadline, design: .rounded))          
         
       }                                  
     }
    .listRowSeparator(.hidden)
   }
  .listStyle(.plain)
  
 }
}

struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView() 
  }
}
