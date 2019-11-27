//
//  Background.swift
//  TestParallaxEffect
//
//  Created by Alexis Jimenez on 26/11/19.
//  Copyright © 2019 Alexis Jimenez. All rights reserved.
//

import SwiftUI

struct Background: View {
    var bgs: [String] = ["bg1", "bg2", "bg3", "bg4", "bg5", "bg6"]
    var fronts: [String] = ["front1", "front2", "front3"]
    
    @State var x: CGFloat = 0
    @State var y: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top) {
                        ForEach(self.bgs, id:\.self) { bg in
                            BgItem(imageName: bg)
                        }
                    }
                }.content.frame(height: 300)
                    .scaledToFill()
                    .offset(x: -self.x)
            
//            VStack(alignment: .center) {
                ScrollView(.horizontal, showsIndicators: false) {
    //                GeometryReader { geometry in
                    HStack(alignment: .top) {
    //                            self.x = innerGeo.frame(in: .global).minX
                                    ForEach(self.fronts, id: \.self) { bg in
                                        VStack {
                                            GeometryReader { geometry -> BgItem in
                                                self.x = geometry.frame(in: .global).minX
                                                return BgItem(imageName: bg)
                                            }.aspectRatio(contentMode: .fill)
                                        }
                                    }
    //                            return Text("")
                            
    //                        Image("bg1")
                        }
    //                        self.x = geo.frame(in: .global).minX
    //                    self.x = CGFloat(geometry.frame(in: .global).minX)
    //                    return Text("")
    //                }
                }
                Text("X: \(x)")
//            }
            
            
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
