//
//  Journals.swift
//  Journey Journal
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct Journals: View {
    var body: some View {
        
        NavigationStack {
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
                        
                        NavigationLink(destination: InJournal()) {
                            Image("Green_Book")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 138)
                                .clipped()                                        }

                        Image("Pink_Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 138)
                            .clipped()
                        
                        Image("Blue_Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 138)
                            .clipped()
                    }
                    
                    .padding()
                    
                HStack {
                    
                    Image("Yellow_Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 138)
                            .clipped()
                        
                        Image("Purple_Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 138)
                            .clipped()
                        
                        Image("Orange_Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 138)
                            .clipped()
                    }
                    
                    
                    Spacer()

                    
                    
                }
                
                
            }
        }

    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
