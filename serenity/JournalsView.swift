//
//  JournalsView.swift
//  serenity
//
//  Created by user228276 on 11/12/22.
//

import SwiftUI

struct JournalsView: View {
    var body: some View {

        VStack(alignment: . leading){
            
            Spacer()
            Spacer()
            Spacer()
            Text("My Journals")
                .font(.custom("Avenir-Heavy", size: 30))
            

            Text("The Journals I've Written So Far.")
                .font(.custom("Avenir-Medium", size: 18))
                .foregroundColor(Color(.systemGray))
            
            
            journalCard()
                .padding()
            journalCard()
                .padding()
            journalCard()
                .padding()
            
            addCard()
        }

    }
    
}

struct journalCard: View{
    var body: some View{
        HStack{
            
            Text("my personal strengths")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                
            Spacer()
            Text("Nov 8, 2022")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding(.trailing)//padding on trailing edge
        }
        
        .frame(height: 100)
        .background(Color(.systemTeal))
        .cornerRadius(20)
    }
}



struct addCard: View{
    var body: some View{
        HStack{
            
            Text("+")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding(100)
                

        }
        
        .frame(height: 100)
        .background(Color(.systemTeal))
        .cornerRadius(20)
        .padding(80)
    
    
    }
}





struct JournalsView_Previews: PreviewProvider {
    static var previews: some View {
        JournalsView()
    }
}

