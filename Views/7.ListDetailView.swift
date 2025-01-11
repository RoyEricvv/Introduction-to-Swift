import SwiftUI

struct ListDetailView: View{
    var programmer: Programmer
    //variable que llego de otra clase a esta y puede ser modificada
    @Binding var favorite: Bool
    var body: some View{
        VStack{
            programmer.avatar.resizable().frame(width: 200,height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            HStack{
                Text(programmer.name).font(.largeTitle)
                
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill").foregroundColor(.yellow)    
                    } else{
                        Image(systemName: "star").foregroundColor(.black)
                    }
                }
                
                
            }
            Text(programmer.languages).font(.subheadline)    
            
            
        }
    }
}
struct ListDetailView_Previews:
    PreviewProvider {
    static var previews: some View{
        ListDetailView(programmer: Programmer(id: 1, name: "Erick developer", languages: "Kotlin", avatar: Image(systemName: "person"), favorite: true), favorite: .constant(false))
    }
}
