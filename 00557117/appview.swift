//
//  appview.swift
//  00557117
//
//  Created by User19 on 2019/10/9.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct appview: View {
    var body: some View {
        TabView {
            list()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("列表")
            }
            .accentColor(.orange)
            ContentView()
                .tabItem {
                    
                    Image(systemName: "info.circle.fill")
                    Text("首頁")
                    
            }
            .accentColor(.blue)
        }
        
    }
}

struct appview_Previews: PreviewProvider {
    static var previews: some View {
        appview()
    }
}
