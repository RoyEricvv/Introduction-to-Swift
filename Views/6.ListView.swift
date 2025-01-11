import SwiftUI

final class ProgrammersModelData: ObservableObject {
     //listado variable
    @Published var programmers = [Programmer(id: 0, name: "Erick developer", languages: "Kotlin", avatar: Image(systemName: "person.bust"), favorite: true),Programmer(id: 1, name: "Erick developer", languages: "Kotlin,java", avatar: Image(systemName: "person"), favorite: false),Programmer(id: 2, name: "Rick developer", languages: "Swift,Kotlin", avatar: Image(systemName: "person.circle"), favorite: true),Programmer(id: 3, name: "Roy dev", languages: "Ruby", avatar: Image(systemName: "person"), favorite: false)]
}

struct ListView: View {
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    // Programacion reactiva con un cambio de interfaz -> state
    @State private var showFavorites = false
    //definimos el filtrado
    private var filteredProgramers: [Programmer] {
        return programmersModelData.programmers.filter{
            programmer in 
            return !showFavorites || programmer.favorite
        }
    }
    var body: some View{
        NavigationView{
            VStack{
                Toggle(isOn: $showFavorites) {
                    Text("Mis favoritos")
                }.padding()
                
                
                List(filteredProgramers, id: \.id){
                    //programmer in RowView(programmer: programmer)  
                    programmer in 
                    //Agrupar en un nuevo componente
                    // a donde navegaremos   
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)){
                        RowView(programmer: programmer)  
                    } 
                }.navigationTitle("Programers")
                
            }
        }
        
    }
}

struct ListView_Previews:
    PreviewProvider {
    static var previews: some View{
        ListView().environmentObject(ProgrammersModelData())
    }
}
