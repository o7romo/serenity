//
//  ContentView.swift
//  serenity
//
//  Created by user228276 on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
     
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .systemGroupedBackground
    }
    
    var body: some View {
        
            
        ScrollView(showsIndicators: false) //allows for scrolling
        {
            VStack(alignment: . leading){ //makes the text move to left
                Text("Welcome userr")
                    .font(.custom("Avenir-Heavy", size: 30))
                Text("Ready to start your mindfulness journey?")
                    .font(.custom("Avenir-Medium", size: 18))
                    .foregroundColor(Color(.systemGray))
                HStack{
                    Spacer()
                }
            }.padding(29)
            
            
    
            .navigationBarTitleDisplayMode(.inline) //Configures the title display mode for this view.
            
            .navigationBarItems(leading: Button{ //adds navigation symbols
            } label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(Color.gray)
            }, trailing: Button{
            } label: {
                Image(systemName: "bell")
                    .foregroundColor(Color.gray)
            }
                                
            )
            
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            ContentView()
                
        }
        
        
    }
}

