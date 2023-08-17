//
//  Journals.swift
//  Journey Journal
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct Scrapbooks: View {
    var body: some View {
        ZStack {
            // first layer = painting
            Color(red: 1, green: 0.98, blue: 0.96)
                .ignoresSafeArea()
            VStack {
                Image("Scrapbooks")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 100)
                    .clipped()

                
                Image("Scrapbook Paper")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .padding()
                
            struct Stickers: View {
                    
                    @State private var dragAmount = CGSize.zero
                    
                    var name: String
                    var index: Int
                    
                    var body: some View {
                        
                        Image(systemName: name)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .offset(dragAmount)
                            .zIndex(dragAmount == .zero ? 0 : 1)
                            .gesture(
                                DragGesture(coordinateSpace: .global)
                                    .onChanged {
                                        self.dragAmount = CGSize(width: $0.translation.width, height: $0.translation)
                                    }
                            
                            )
                    }
                }
                
                
            
                
                
                
                Spacer()
                
            
            }
            
            
        }
    }
    
    struct Scrapbooks_Previews: PreviewProvider {
        static var previews: some View {
            Scrapbooks()
        }
    }
}

