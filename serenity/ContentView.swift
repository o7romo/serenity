//
//  ContentView.swift
//  serenity
//
//  Created by user228276 on 10/6/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var searchText = ""
    
    init() {
     
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().barTintColor = .systemGroupedBackground
    }
    
    var searchView: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 25).fill(Color(.systemGray5)).frame(height: 50)
                .frame(height: 50)
            HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color(.systemGray4))
                    .padding(.horizontal, 12) //make search image more to right
                TextField("Search for exersises ", text: $searchText).font(.custom("Avenir-Medium", size: 16))
            }
        }
    }
    
    var body: some View {
        
            
        ScrollView(showsIndicators: false) //allows for scrolling
        {
            VStack(alignment: . leading){ //makes the text move to left
                Text("Welcome user")
                    .font(.custom("Avenir-Heavy", size: 30))
                Text("Ready to start your mindfulness journey?")
                    .font(.custom("Avenir-Medium", size: 18))
                    .foregroundColor(Color(.systemGray))
                searchView
                
                
                //add section title for the card
                
                Text("Featured Routine")
                    .font(.custom("Avenir-Medium", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.horizontal,2)
                
                RoutineCard().padding(.horizontal, 5)
                
                MedidationTypeRow()
                
                
            }.padding(29)
            
            
    
            .navigationBarTitleDisplayMode(.inline) //Configures the title display mode for this view.
            
            .navigationBarItems(leading: Button{ //adds navigation symbols
            } label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(Color.black)
            }, trailing: Button{
            } label: {
                Image(systemName: "bell")
                    .foregroundColor(Color.black)
            }
                                
            )
            
        }
     
    }
}

//Defines a main routine card
struct RoutineCard: View{
    var body: some View{
        HStack{
            Image(systemName: "clock")
                .font(.title)
                .foregroundColor(.white)
                .padding(.horizontal, 12)
            Text("Morning Routine")
                .foregroundColor(.white)
                
            Spacer()
            Text("Start")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding(.trailing)//padding on trailing edge
        }
        
        .frame(height: 100)
        .background(Color(.systemGray))
        .cornerRadius(20)
    }
}

struct MedidationTypeRow: View {
    var body: some View{
       
        // Scrollview that scrolls horisontally
        //Sees cards by swiping left and right.
        //no indicators.
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0..<5){ _ in
                    MeditationCard()
                }
            }
        }
    }
}

struct MeditationCard: View {
    var body: some View{
        VStack (alignment: .leading){
            Text("Morning Gratitude")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 16)
                .foregroundColor(.white)
            Text("asfjaosfff")
                .font(.subheadline)
                .lineLimit(3)
                .padding(.top,4)
                .padding(.horizontal, 16)
                .foregroundColor(.white)
            Spacer()
        }
        
        //card characterstics
        .frame(width:280, height: 340)
        .background(Color.gray)
        .cornerRadius(30)
        
    
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            ContentView()
                
                
        }
        
        
    }
}

