//
//  ContentView.swift
//  IBooks
//
//  Created by MAC40 on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView {
        HomeView()
            .tabItem{
                Image(systemName : "house")
                Text("Home")
            }
        ProfileView()
            .tabItem {
                Image(systemName : "person")
                Text("Profile")
            }
        }
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
