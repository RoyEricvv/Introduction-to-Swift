import SwiftUI

struct BindingView2: View {
    //propiedad que modifica el valor, y pertenece a otra vista
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    var body: some View{
        VStack{
            Text("El valor es \(value)")
            HStack{
                Button("Actualizar datos"){
                    user.name = "Mouredev by brais"
                    user.age = 30
                }
                Button("Suma 2") {
                    value += 2
                }.padding() 
                Button("Reset"){
                    value = 0
                }.padding()
                NavigationLink(destination: 
                                EnvironmentView(),
                               tag: 1, selection: $selection) {
                    Button("Ir a EnvironmentView") {
                        selection = 1
                    }  
                }
                
            }
            
        }
    }
}

struct BindingView2_Preview: PreviewProvider{
    static var previews: some View{
        BindingView2(value: .constant(5), user: UserData())
    }
}


