//
//  Journals.swift
//  Journey Journal
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct Journals: View {
    var body: some View {
        ZStack {
            // first layer = painting
            Color(red: 1, green: 0.98, blue: 0.96)
                .ignoresSafeArea()
            VStack {
                Image("Journals")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 326, height: 109)
                    .clipped()
                    .padding()
            
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 129)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 129)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 129)
                }
                
                
                Spacer()
                
            
            }
            
            
        }
    }
    
    struct Journals_Previews: PreviewProvider {
        static var previews: some View {
            Journals()
        }
    }
}
