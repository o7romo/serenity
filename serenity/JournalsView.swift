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
            Text("My Journals")
                .font(.custom("Avenir-Heavy", size: 30))
            Text("The Journals I've Written So Far")
                .font(.custom("Avenir-Medium", size: 18))
                .foregroundColor(Color(.systemGray))
        
        }
    }
}

struct JournalsView_Previews: PreviewProvider {
    static var previews: some View {
        JournalsView()
    }
}
