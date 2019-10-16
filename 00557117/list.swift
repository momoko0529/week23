//
//  list.swift
//  00557117
//
//  Created by User15 on 2019/9/25.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct list: View {
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("澄清高中")){
                ForEach(0..<songs.count) { (index)  in
                    NavigationLink(destination: detail(song: songs[index])) {
                    listtest(song: songs[index])
                    
                }
                
            }
                }
                Section(header: Text("龍門淵高中")){
                    ForEach(0..<dragon_high_school.count) { (index)  in
                        NavigationLink(destination: detail(song: dragon_high_school[index])) {
                        listtest(song: dragon_high_school[index])
                        
                    }
                    
                }
                    }
                Section(header: Text("澄清高中")){
                    NavigationLink(destination: grid()){
                        listtest(song: wall[0])
                    }
                    
            }
            .navigationBarTitle("人物")
            .onAppear{
                UITableView.appearance().separatorColor = .clear
            }
        }

    }
}
}

struct list_Previews: PreviewProvider {
    static var previews: some View {
        list()
    }
}

