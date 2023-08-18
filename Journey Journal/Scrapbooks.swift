//
//  Journals.swift
//  Journey Journal
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct Scrapbooks: View {
    @State private var dragAmount = CGSize.zero
    @State private var dragAmount1 = CGSize.zero
    @State private var dragAmount2 = CGSize.zero
    @State private var dragAmount3 = CGSize.zero
    @State private var dragAmount4 = CGSize.zero
    @State private var dragAmount5 = CGSize.zero
    @State private var dragAmount6 = CGSize.zero
    @State private var dragAmount7 = CGSize.zero




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
                
                
                
                HStack{
                    
                    Image("Butterfly Sticker")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount)
                        .zIndex(dragAmount == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("HK Sticker")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount1)
                        .zIndex(dragAmount1 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount1 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("Strawb Sticker")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount2)
                        .zIndex(dragAmount2 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount2 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("Clover")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount6)
                        .zIndex(dragAmount6 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount6 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                }
                
                HStack{
                    
                    Image("Ladybug")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount3)
                        .zIndex(dragAmount3 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount3 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("Mushroom")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount4)
                        .zIndex(dragAmount4 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount4 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("Cat")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount5)
                        .zIndex(dragAmount5 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount5 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                    Image("Heart")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .offset(dragAmount7)
                        .zIndex(dragAmount7 == .zero ? 0 : 1)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged {
                                    self.dragAmount7 = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                            
                        )
                    
                }
                
            }
                }
                
                
            
                
                
                
                Spacer()
                
            
            }
            
            
        }
    
    struct Scrapbooks_Previews: PreviewProvider {
        static var previews: some View {
            Scrapbooks()
        }
    }

