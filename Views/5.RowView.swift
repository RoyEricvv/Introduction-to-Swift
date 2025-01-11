import SwiftUI

struct RowView: View{
    //.  a  var programmer:Programmer
    var programmer: Programmer
    var body: some View{
        HStack{
            programmer.avatar.resizable().frame(width: 50,height: 50)
                .padding(40)
            VStack(alignment: .leading){
                Text(programmer.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(programmer.languages).font(.subheadline)
            }
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)    
            }
            
        }
    }
}

struct RowView_Previews:
    PreviewProvider {
    static var previews: some View{
        RowView(programmer: Programmer(id: 1, name: "Erick developer", languages: "Swift,Kotlin", avatar: Image(systemName: "person"), favorite: true))
    }
}
