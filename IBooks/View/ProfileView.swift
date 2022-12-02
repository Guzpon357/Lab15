//
//  ProfileView.swift
//  IBooks
//
//  Created by MAC40 on 2/12/22.
//

import SwiftUI

struct ProfileView : View {
    @State var name = "Leonardo Guzmán"
    @StateObject var profileViewModel = ProfileViewModel()
    var body: some View{
        VStack{
            Text(name)
                .font(.title)
            Button {
                name = "Pablo"
                profileViewModel.gretting(name: "Anderson")
            } label : {
                Text("Cambiar nombre")
            }.padding(.top)
        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View{
        ProfileView()
    }
}
