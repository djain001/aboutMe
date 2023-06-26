

//
//  ContentView.swift
//  About Diva
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI
struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            ZStack {
                Color(red: 0, green:0.3, blue: 0.2)
                    .blur(radius: 10.0)
                Text("D I V A")
                    .font(.system(size: 90))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400.0, height: 600.0)
                    .position(x:200, y:150)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
               Image("Downtown")
                    .resizable()
                    .frame(width: 200.0, height: 300.0)
                    .border(Color.white, width: 10)
                    .padding()
                Button("Learn More About Me!") {
                    self.showDetails = true
                }
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .position(x:200, y: 600)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                }
            }
        .sheet(isPresented: $showDetails) {
            VStack {
                ZStack {
                    Color(red: 0, green:0.3, blue: 0.2)
                        .blur(radius: 10.0)
                    Image("Desert")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: -20.0, bottom: 0.0, trailing: -20.0))
                        .frame(width: 190.0, height: 200.0)
                        .position(x:100, y:200)
                    Text("I love to travel")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                        .position(x:300, y:200)
                        .bold()
                    Image("plastic")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: -20.0, bottom: 0.0, trailing: -20.0))
                        .frame(width: 190.0, height: 200.0)
                        .position(x:100, y:400)
                    Text("I Sing and \nsongwrite")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .foregroundColor(.white)
                        .position(x:304, y:400)
                        .bold()


                    
                    
                }
            }}
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

