//
//  detail.swift
//  00557117
//
//  Created by User19 on 2019/10/9.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct detail: View {
    var song: Song
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
            SongImage(song: song)
            }
            ScrollView{
            Text(song.lyrics)
                .foregroundColor(Color("紫色"))
                .padding()
            }
        }
    }
}

struct detail_Previews: PreviewProvider {
    static var previews: some View {
        detail(song: songs[0])
    }
}

struct SongImage: View {
    
    var song: Song
    
    var body: some View {

               
            Image(song.name)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
            .clipped()
    }
}

