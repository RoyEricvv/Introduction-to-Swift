import SwiftUI

struct ImageView:View {
    var body: some View {
        VStack{
            Image(systemName: "person.fill.badge.minus")
                .resizable()
                .padding(50)
                .frame(width: 200,height: 200)
                .background(.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(.blue))
                .shadow(color: .white, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Image("Imagedev")
                .resizable() //modificar size y entre en el iphone
                .scaledToFill() //crezca maximo a lo alto
                .scaledToFit() //crezco lo maximo a lo ancho
                .padding(50)
                .frame(width: 200,height: 300,alignment: .center) //tamaño fijo
                .background(.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) //para que sea circulo
            //.background(.gray)
                .overlay(Circle().stroke(Color.red, lineWidth: 6))//marcar borde
                .shadow(color: .white, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/) //sombra    
        }
        
    }
}

struct ImageView_Previews:
    PreviewProvider {
    static var previews: some View{
        ImageView()
    }
}
