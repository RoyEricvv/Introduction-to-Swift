import SwiftUI

//Vista principal
struct Stacks: View {
    var body: some View {
        //leading center trailing
        VStack(alignment: .trailing,spacing: 20) {
            Text("Hola stacks 0!")
                .background(Color.red)
            //espacio maximo que puede ocupar
            Spacer()
            ZStack {
                Text("Holas")
                //infinity es lo maximo posible
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity)
                    .background(Color.red)
                    .padding(20)
                Text("ffffffff")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(40)
                Text("Holss")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(Color.gray)
                    .padding(60)
            }
            Spacer()
            HStack {
                Text("Hola stacks 1!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                //Es para dejar espacio en el ancho de la pantalla(margen)
                    .padding()
                    .background(.gray)
                Spacer()
                Text("Hola stacks 2!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.gray)
            }
            Text("Hola stacks 3!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding()
        }.background(Color.yellow)
        //Dentro de un stack solo podemos devolver 10 vistas internas 
    }
}
//mostrarnos en el canvas la representacion grafica de nuestra vista
struct Stacks_Previews:
    PreviewProvider {
    static var previews: some View{
        Stacks()
    }
}
