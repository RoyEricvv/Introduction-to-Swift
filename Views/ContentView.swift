import SwiftUI

//Vista principal
struct ContentView: View {
    var body: some View {
        Text("Hola mundo!")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
    }
}
//mostrarnos en el canvas la representacion grafica de nuestra vista
struct ContectView_Previews:
    PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
