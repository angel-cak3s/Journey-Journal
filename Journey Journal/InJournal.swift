//
//  InJournal.swift
//  Journey Journal
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct InJournal: View {
    @State private var name = ""
    @State private var textTitle = ""
    
    var body: some View {
        
        ZStack {
            // first layer = painting
            Color(red: 0.79, green: 0.95, blue: 0.95)
                .ignoresSafeArea()
            
            Image("paper1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 763)
                .clipped()
            
            VStack {
                
                Text("How's your day going?")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.1, green: 0.45, blue: 0.47))
                    .padding(.top,50)
                
                Text("\(textTitle)")
                    .font(.title)
                    .padding(.top,5)
                    .padding(.leading,35)
                    .padding(.trailing,35)
    
                
                TextField("", text: $name)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .border(Color(red: 0.16, green: 0.8, blue: 0.83), width: 1)
                    .padding(.top,320)
                    .padding(.leading,40)
                    .padding(.trailing,40)
                
                
                Button("Enter  ☻   ") {
                    print(name)
                    textTitle = "\(name)"
                    
                    
                }
                .padding()
                
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.06, green: 0.77, blue: 0.77))
                
                }
            
            //
        }
    }
}

struct InJournal_Previews: PreviewProvider {
    static var previews: some View {
        InJournal()
    }
}
