//
//  ContentView.swift
//  Journey Journal
//
//  Created by scholar on 8/15/23.
//

import SwiftUI
// root view
struct ContentView: View {
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        NavigationStack{
            // zstack for background image
            ZStack {
                // first layer = painting
                Color(red: 1, green: 0.98, blue: 0.96)
                    .ignoresSafeArea()
            
                VStack(alignment: .leading) {
                    
                    Text("Welcome,")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                    
                    Text("Username")
                        .font(.system(size:50))
                        .fontWeight(.bold)
                        .padding(.bottom, 490.0)
                        .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                    
                
                Image("Title_Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 73)
                    .clipped()
                    .padding([.leading, .bottom], 30)
                
                
                    NavigationLink(destination: Journals()) {
                        Text("Journals")
                            .foregroundColor(.white)
                    }
                    .frame(width: 300.0, height: 60.0)
                    .background(.black)
                    .cornerRadius(30.0)
                    
                    NavigationLink(destination: Scrapbooks()) {
                            Text("Scrapbooks")
                                .foregroundColor(.white)
                        
                    }
                    .frame(width: 300.0, height: 60.0)
                    .background(.black)
                    .cornerRadius(30.0)
                    
                    NavigationLink(destination: DailyGoals().environment(\.managedObjectContext, persistenceController.container.viewContext)) {
                        
                        Text("Daily Goals")
                            .foregroundColor(.white)
                    }
                    .frame(width: 300.0, height: 60.0)
                    .background(.black)
                    .cornerRadius(30.0)
                    
                    NavigationLink(destination: Info()) {
                        Text("Art & Mental Health")
                            .foregroundColor(.white)
                    }
                    .frame(width: 300.0, height: 60.0)
                    .background(.black)
                    .cornerRadius(30.0)
                    
                    
                }
                .padding(.top, -30.0)
                
            }
            .padding(.top, -90.0)
        }
        .accentColor(.black)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
