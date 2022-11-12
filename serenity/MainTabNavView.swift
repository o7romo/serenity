//
//  MainTabNavView.swift
//  serenity
//
//  Created by user228276 on 11/12/22.
//

import SwiftUI

struct MainTabNavView: View {
    var body: some View {
        TabView{
            
            ContentView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            
            JournalsView()
                .tabItem{
                    Image(systemName:"heart.fill")
                    Text("Journals")
                }
            
            
            
        }
    }
}

struct MainTabNavView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabNavView()
    }
}
