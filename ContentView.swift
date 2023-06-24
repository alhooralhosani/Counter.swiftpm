import SwiftUI
struct ContentView: View {
@AppStorage ("count") var count = 0
@AppStorage ("Remaining") var cookiesRemaining  = 40
@AppStorage ("message") var message = ""
@AppStorage ("balance") var balance = 20

    var body: some View {
        VStack {
            Text("\(count) Cookies eaten")
            Text ("\(cookiesRemaining - count) Cookies Remaining")
            Text ("\(balance) $ left")
                .padding()
            Button{
                count += 1

                if count >= 5 {
                    message = "You are eating too much"
                }
                if count >= 10 {
                    message = "Stop eating"
                }
                
                if count >= 15{
                    message = "Oh nooooooooooo"
                }

            }label: {
                Text("Eat a cookie")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            Text(message)

            //.buttonStyle(.borderedProminent)
           
            /*if count >= 15 {
                Text ("Oh nooooooooooo")
            } else if count >= 10 {
            Text ("Stop eating")
            } else if count >= 5 {
                Text ("You are eating too much")
            } - not convinient */
            
         Button{
                cookiesRemaining += 1
                balance -= 1
            }label: {
                Text("Buy cookies")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 13))

            }
            Button{
                cookiesRemaining -= 1
                balance += 1
            }label: {
                Text("Sell cookies")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 13))

            }
            .padding(9)
            Button{
                count = 0
                cookiesRemaining = 40
                balance = 20
                if count == 0 {
                    message = ""
                }
            }label: {
                Text("Reset")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: 13))

            }
        }
        .shadow(color: .black.opacity(10), radius: 10, x: 0.0, y:0.0)
    }
}
