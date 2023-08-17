//
//  InJournal.swift
//  Journey Journal
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct InJournal: View {
    @State private var name = ""
    @State private var textTitle = "How's your day going?"
    
    var body: some View {
        
        ZStack {
            // first layer = painting
            Color(red: 0.79, green: 0.95, blue: 0.95)
                .ignoresSafeArea()
            
            Image("paper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 763)
                .clipped()
            
            VStack {
                
                Text("\(textTitle)")
                    .font(.title)
                    .padding(.top,50)
                    .padding(.leading,35)
                    .padding(.trailing,35)
    
                
                TextField("", text: $name)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .border(Color.blue, width: 1)
                    .padding(.top,500)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                
                
                Button("Enter") {
                    print(name)
                    textTitle = "\(name)"
                    
                }
                .padding()
                
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                
                }
            
                
        }
    }
}

struct InJournal_Previews: PreviewProvider {
    static var previews: some View {
        InJournal()
    }
}
