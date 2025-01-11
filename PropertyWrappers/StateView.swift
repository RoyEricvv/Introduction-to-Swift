import SwiftUI

struct StateView: View {
    //propiedad que modifica el valor, y pertenece a esta vista
    @State private var value = 0 
    @State private var selection: Int?
    var body: some View{
        NavigationView{
            VStack{
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }.padding() 
                NavigationLink(destination: 
                    BindingView(value: $value),
                    tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }  
                }
            }.navigationTitle("StateView")
        }
    }
}

struct StateView_Preview: PreviewProvider{
    static var previews: some View{
        StateView()
    }
}
