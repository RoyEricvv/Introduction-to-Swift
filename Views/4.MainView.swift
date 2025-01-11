import SwiftUI

struct MainView: View {
    var body: some View{
        ScrollView{
            VStack{
                MapView()
                    .frame(height: 400)
                ImageView()
                    .offset(y: -150) //desplazar de su eje
                Divider().padding()
                Stacks()
            }
        }
    }
}

struct MainView_Previews:
    PreviewProvider {
    static var previews: some View{
        MainView()
    }
}
