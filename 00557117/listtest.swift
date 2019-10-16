//
//  listtest.swift
//  00557117
//
//  Created by User15 on 2019/9/25.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct listtest: View {
    var song: Song
    
    var body: some View {
        HStack{
            Image(song.name)
                .resizable()
                .scaledToFill()
                .frame(width:80, height:80)
                .clipped()
            VStack(alignment: .leading)
            {
                Text(song.name)
                Text(song.singer)
            }
         Spacer()
       }
        .background(Color.pink)
        
 }
}

struct listtest_Previews: PreviewProvider {
    static var previews: some View {
        listtest(song: songs[0])
    }
}

