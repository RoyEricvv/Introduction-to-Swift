import SwiftUI

struct EnvironmentView: View {
    @EnvironmentObject var user: UserData
    var body: some View{
        Text(user.name)
    }
}

struct EnvironmentView_Preview: PreviewProvider{
    static var previews: some View {
        EnvironmentView()
            .environmentObject(UserData())
    }
}


