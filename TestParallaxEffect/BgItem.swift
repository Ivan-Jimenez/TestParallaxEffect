//
//  BgItem.swift
//  TestParallaxEffect
//
//  Created by Alexis Jimenez on 26/11/19.
//  Copyright © 2019 Alexis Jimenez. All rights reserved.
//

import SwiftUI

struct BgItem: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
        .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct BgItem_Previews: PreviewProvider {
    static var previews: some View {
        BgItem(imageName: "bg2")
    }
}
