//
//  ContentView.swift
//  TenangJiwa
//
//  Created by Agnes Felicia on 21/07/20.
//  Copyright © 2020 Group Cuan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack() {
                TopPart()
                
                Text("My First Aid")
                    .font(Font.custom("AvenirMedium", size: 28))
                    .bold()
                    .alignmentGuide(HorizontalAlignment.center) { _ in 180 }
                    .foregroundColor(Color.init("DarkBlue"))
                
                Button(action: {print("Printed")}) {
                    Image("firstaid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                
                Text("Category")
                    .font(Font.custom("AvenirMedium", size: 28))
                    .bold()
                    .alignmentGuide(HorizontalAlignment.center) { _ in 180 }
                    .foregroundColor(Color.init("DarkBlue"))
                
                Spacer()
                categoryList()
            }
            
        }
    }
}

struct TopPart: View {
    var body: some View {
        HStack() {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("book")
                    .alignmentGuide(HorizontalAlignment.center) { _ in -150 }
                .foregroundColor(Color.init("DarkBlue"))
                
            }
        }
    }
}

struct categoryList: View {
    var body: some View {
        Text("HELLOOO")
    }
}

struct circularProgress: View{
    @Binding var progress: Float
    var body: some View{
        Circle()
            .stroke(lineWidth: 30)
            .foregroundColor(.red)
            .opacity(0.3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().previewDevice("iPhone 11")
            ContentView().previewDevice("iPhone 8 Plus")
            ContentView().previewDevice("iPhone SE")
        }
    }
}



