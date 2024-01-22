//
//  ContentView.swift
//  Dicee-SwiftUI-Section-17
//
//  Created by Abdurahman on 22.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: "dice1")
                    DiceView(number: "dice6")
                }.padding(.horizontal)
                Spacer()
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let number: String
    
    var body: some View {
        Image(number)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.all)
    }
}
