//
//  ContentView.swift
//  00557117
//
//  Created by User15 on 2019/9/25.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: list()){
            VStack{
                ScrollView(.horizontal) {
                               HStack(spacing: 20) {
                                   
                                   ForEach(0..<pictures.count) { (index) in
                Image(pictures[index].name).resizable()
                    .renderingMode(.original)
                                }
                    }
                }
                Text("第一季")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.trailing)
            
                }
            }
        .navigationBarTitle("天才麻將少女")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
