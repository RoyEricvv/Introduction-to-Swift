import SwiftUI
//referencia a propiedades complejas (objetos y hacemos referencia y no valor)
//para definir objeto mutable
//utilizar desde interfaz grafica y modificar usar protocolo
class UserData: ObservableObject {
    //propiedades usar published
    @Published var name = "MouroDev"
    @Published var age = 34
}
//state no aplica a datos de tipo observableobject(datos complejos)
struct StateViewObject: View {
    //propiedad que modifica el valor, y pertenece a esta vista
    @State private var value = 0 
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View{
        NavigationView{
            VStack{
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }.padding() 
                Text("Mi nombre \(user.name) y mi edad \(user.age)")
                Button("Actualizar datos"){
                    user.name = "Brais"
                    user.age = 35
                }
                NavigationLink(destination: 
                                BindingView2(value: $value,user: user),
                               tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }  
                }
            }.navigationTitle("StateView")
        }
    }
}

struct StateViewObject_Preview: PreviewProvider{
    static var previews: some View{
        StateViewObject().environmentObject(UserData())
    }
}
