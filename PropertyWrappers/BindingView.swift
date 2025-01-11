import SwiftUI

struct BindingView: View {
    //propiedad que modifica el valor, y pertenece a otra vista
    @Binding var value: Int
    var body: some View{
        VStack{
            Text("El valor es \(value)")
            HStack{
                Button("Suma 2") {
                    value += 2
                }.padding() 
                Button("Reset"){
                    value = 0
                }.padding()
                
            }
            
        }
    }
}

struct BindingView_Preview: PreviewProvider{
    static var previews: some View{
        BindingView(value: .constant(5))
    }
}
