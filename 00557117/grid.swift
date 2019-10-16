//
//  grid.swift
//  00557117
//
//  Created by User19 on 2019/10/9.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct grid: View {
    let photo=[["照片零","照片一","照片二"],["照片三","照片四","照片五"],["照片六","照片七","照片八"]]
    var columnCount = 3
    let photoWidth = (UIScreen.main.bounds.size.width-10)/3
    
    var body: some View {
        List{
            ForEach(0..<photo.count){(row) in
                HStack(spacing:10){
                    ForEach(0..<self.photo[row].count){(column) in
                        Image(self.photo[row][column])
                            .resizable()
                            .scaledToFill()
                            .frame(width: self.photoWidth,height: self.photoWidth)
                            .clipped()
                    }
                }
                .listRowInsets(EdgeInsets(top: 0,leading: 0,bottom: 10,trailing: 0))
            }
            }
        }
    }

struct grid_Previews: PreviewProvider {
    static var previews: some View {
        grid()
    }
}
