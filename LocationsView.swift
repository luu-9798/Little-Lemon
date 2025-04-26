import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        NavigationView {
            VStack {
                LittleLemonLogo() // 1
                    .padding(.top, 50)
                
                Text(model.displayingReservationForm ? "Reservation Details" : "Select a location") // 2
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                
                
                List(model.restaurants, id: \.self) { item in
                    NavigationLink(
                        destination: ReservationForm(item).environmentObject(model)
                    ) {
                        RestaurantView(item)
                    }
                }// 3
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
            }
            .padding(.top, -10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

