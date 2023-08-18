//
//  Info.swift
//  Journey Journal
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Info: View {
    var body: some View {
        ZStack {
            // first layer = painting
            Color(red: 1, green: 0.98, blue: 0.96)
                .ignoresSafeArea()
            VStack {
                
                Text("Art & Mental Health")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                
                Text("How Art can improve your Mental Health \n")
                    .foregroundColor(Color(red: 0.2667, green: 0.1882, blue: 0))
                
                Text("Stress Relief")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                
                Text ("Studies have shown that drawing, doodling, coloring, and simply creating something for 20+ minutes reduces cortisol, which helps regulate your body’s response to stress. \n")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2667, green: 0.1882, blue: 0))
                
                
                     
                Text("Boosts Self Esteem")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                      
                Text ("Creativity and the practice of art can build a sense of accomplishment for all ages, as it 'makes us feel good about ourselves' and validates our  our ability to turn unique ideas into something physical \n")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2667, green: 0.1882, blue: 0))
                
                      
                Text ("Healing")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                
                Text ("It has been proven by much research that art making can help in processing pain, and provide a direct connection between to mind and the body to further aid to healing process \n")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2667, green: 0.1882, blue: 0))
                
                      
                Text ("Letting Go")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                
                Text ("Expressive art, such as visual arts, music, and dance, can help users laugh, let go, and relax, thus decreasing depression, anxiety, and stress.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2667, green: 0.1882, blue: 0))
                
                    

            }
            .padding(.leading,15)
            .padding(.trailing,15)
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
