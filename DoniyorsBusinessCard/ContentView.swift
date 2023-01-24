//
//  ContentView.swift
//  DoniyorsBusinessCard
//
//  Created by DONIYORBEK IBROKHIMOV on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("Doniyor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Doniyorbek Ibrokhimov")
                    .font(Font.custom("Pacifico-Regular", size: 39))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+998 93 734 77 30", imageName: "phone.fill")
                InfoView(text: "ibrokhimovdoniyorbek@gmail.com", imageName: "envelope.fill")
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


